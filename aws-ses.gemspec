# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: aws-ses 0.7.3 ruby lib

Gem::Specification.new do |s|
  s.name = "aws-ses".freeze
  s.version = "0.7.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Drew Blas".freeze, "Marcel Molina Jr.".freeze]
  s.date = "2020-09-30"
  s.description = "Client library for Amazon's Simple Email Service's REST API".freeze
  s.email = "drew.blas@gmail.com".freeze
  s.extra_rdoc_files = [
    "CHANGELOG",
    "LICENSE",
    "README.erb",
    "README.rdoc",
    "TODO"
  ]
  s.files = [
    ".document",
    "CHANGELOG",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE",
    "README.erb",
    "README.rdoc",
    "Rakefile",
    "TODO",
    "VERSION",
    "aws-ses.gemspec",
    "lib/aws/actionmailer/ses_extension.rb",
    "lib/aws/ses.rb",
    "lib/aws/ses/addresses.rb",
    "lib/aws/ses/base.rb",
    "lib/aws/ses/extensions.rb",
    "lib/aws/ses/info.rb",
    "lib/aws/ses/response.rb",
    "lib/aws/ses/send_email.rb",
    "lib/aws/ses/version.rb",
    "test/address_test.rb",
    "test/base_test.rb",
    "test/extensions_test.rb",
    "test/fixtures.rb",
    "test/helper.rb",
    "test/info_test.rb",
    "test/mocks/fake_response.rb",
    "test/response_test.rb",
    "test/send_email_test.rb"
  ]
  s.homepage = "http://github.com/drewblas/aws-ses".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.5.2.3".freeze
  s.summary = "Client library for Amazon's Simple Email Service's REST API".freeze

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<builder>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<mail>.freeze, ["> 2.2.5"])
      s.add_runtime_dependency(%q<mime-types>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<xml-simple>.freeze, [">= 0"])
      s.add_development_dependency(%q<bundler>.freeze, [">= 1.17"])
      s.add_development_dependency(%q<flexmock>.freeze, ["~> 0.8.11"])
      s.add_development_dependency(%q<jeweler>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<shoulda-context>.freeze, [">= 0"])
      s.add_development_dependency(%q<test-unit>.freeze, [">= 0"])
      s.add_development_dependency(%q<timecop>.freeze, [">= 0"])
    else
      s.add_dependency(%q<builder>.freeze, [">= 0"])
      s.add_dependency(%q<mail>.freeze, ["> 2.2.5"])
      s.add_dependency(%q<mime-types>.freeze, [">= 0"])
      s.add_dependency(%q<xml-simple>.freeze, [">= 0"])
      s.add_dependency(%q<bundler>.freeze, [">= 1.17"])
      s.add_dependency(%q<flexmock>.freeze, ["~> 0.8.11"])
      s.add_dependency(%q<jeweler>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<shoulda-context>.freeze, [">= 0"])
      s.add_dependency(%q<test-unit>.freeze, [">= 0"])
      s.add_dependency(%q<timecop>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<builder>.freeze, [">= 0"])
    s.add_dependency(%q<mail>.freeze, ["> 2.2.5"])
    s.add_dependency(%q<mime-types>.freeze, [">= 0"])
    s.add_dependency(%q<xml-simple>.freeze, [">= 0"])
    s.add_dependency(%q<bundler>.freeze, [">= 1.17"])
    s.add_dependency(%q<flexmock>.freeze, ["~> 0.8.11"])
    s.add_dependency(%q<jeweler>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<shoulda-context>.freeze, [">= 0"])
    s.add_dependency(%q<test-unit>.freeze, [">= 0"])
    s.add_dependency(%q<timecop>.freeze, [">= 0"])
  end
end

