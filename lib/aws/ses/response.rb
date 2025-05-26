module AWS
  module SES
    # AWS SES Response Class
    #
    # This class represents a response from the AWS Simple Email Service (SES).
    # It inherits from String and provides additional functionality to handle
    # the response, including access to the raw response, the body,
    # parsed data, and the action taken.
    #
    # @attr_reader [String] response The raw response from the SES API
    # @attr_reader [String] body The body of the response
    # @attr_reader [Object] parsed The parsed response data
    # @attr_reader [Symbol] action The action that was performed
    class Response < String
      attr_reader :response, :body, :parsed, :action

      def initialize(action, response)
        @action   = action
        @response = response
        @body     = response.body.to_s
        super(body)
      end

      def headers
        @headers ||= begin
          headers = {}
          response.each do |header, value|
            headers[header.downcase] = value
          end
          headers
        end
      end

      def [](header)
        headers[header]
      end

      def each(&block)
        headers.each(&block)
      end

      def code
        response.code.to_i
      end

      {
        success: 200..299,
        redirect: 300..399,
        client_error: 400..499,
        server_error: 500..599
      }.each do |result, code_range|
        define_method("#{result}?") do
          response && code_range.include?(code)
        end
      end

      def error?
        !success? && (response['content-type'] == 'application/xml' || response['content-type'] == 'text/xml')
      end

      def error
        @error ||= parsed['Error']
      end

      def parsed
        @parsed ||= begin
          parse_options = { 'forcearray' => %w[item member], 'suppressempty' => nil, 'keeproot' => false }
          XmlSimple.xml_in(body, parse_options)
        end
      end

      # It's expected that each subclass of Response will override this method with what part of response is relevant
      def result
        parsed
      end

      def request_id
        error? ? parsed['RequestId'] : parsed['ResponseMetadata']['RequestId']
      end

      def inspect
        "#<%s:0x%s %s %s %s>" % [self.class, object_id, request_id, response.code, response.message]
      end
    end

    # Requests whose response code is between 300 and 599 and contain an <Error></Error> in their body
    # are wrapped in an Error::Response. This Error::Response contains an Error object which raises an exception
    # that corresponds to the error in the response body. The exception object contains the ErrorResponse, so
    # in all cases where a request happens, you can rescue ResponseError and have access to the ErrorResponse and
    # its Error object which contains information about the ResponseError.
    #
    #   begin
    #     Bucket.create(..)
    #   rescue ResponseError => exception
    #    exception.response
    #    # => <Error::Response>
    #    exception.response.error
    #    # => <Error>
    #   end
    class ResponseError < StandardError
      attr_reader :response

      def initialize(response)
        @response = response
        super("AWS::SES Response Error: #{message}")
      end

      def code
        @response.code
      end

      def message
        "#{@response.error['Code']} - #{@response.error['Message']}"
      end

      def inspect
        "#<%s:0x%s %s %s '%s'>" % [self.class.name, object_id, @response.request_id, code, message]
      end
    end
  end
end
