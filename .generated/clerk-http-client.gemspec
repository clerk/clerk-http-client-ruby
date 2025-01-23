# -*- encoding: utf-8 -*-

=begin
#Clerk Backend API

#The Clerk REST Backend API, meant to be accessed by backend servers.  ### Versions  When the API changes in a way that isn't compatible with older versions, a new version is released. Each version is identified by its release date, e.g. `2021-02-05`. For more information, please see [Clerk API Versions](https://clerk.com/docs/backend-requests/versioning/overview).   Please see https://clerk.com/docs for more information.

The version of the OpenAPI document: v1
Contact: support@clerk.com
Generated by: https://openapi-generator.tech
Generator version: unset

=end

$:.push File.expand_path("../lib", __FILE__)
require "clerk-http-client/version"

Gem::Specification.new do |s|
  s.name        = "clerk-http-client"
  s.version     = ClerkHttpClient::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Clerk"]
  s.email       = ["support@clerk.com"]
  s.homepage    = "https://clerk.com/docs/references/ruby/overview"
  s.summary     = "A Ruby wrapper for the Clerk Backend API"
  s.description = "A Ruby wrapper for the Clerk Backend API"
  s.license     = "MIT"
  s.required_ruby_version = ">= 2.7"
  s.metadata    = {}

  s.add_runtime_dependency 'faraday', '>= 1.0.1', '< 3.0'
  s.add_runtime_dependency 'faraday-multipart'
  s.add_runtime_dependency 'marcel'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
