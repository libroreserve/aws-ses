# frozen_string_literal: true

%w[
  base64 cgi openssl digest/sha1 net/https net/http rexml/document time ostruct mail xmlsimple uri
].each { |f| require f }

$:.unshift(File.dirname(__FILE__))

require 'ses/response'
require 'ses/send_email'
require 'ses/info'
require 'ses/base'
require 'ses/version'
require 'ses/addresses'

if defined?(Rails)
  major, minor = Rails.version.to_s.split('.')
  require 'actionmailer/ses_extension' if major == '2' && minor == '3'
end
