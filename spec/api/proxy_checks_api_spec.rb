=begin
#Clerk Backend API

#The Clerk REST Backend API, meant to be accessed by backend servers.  ### Versions  When the API changes in a way that isn't compatible with older versions, a new version is released. Each version is identified by its release date, e.g. `2021-02-05`. For more information, please see [Clerk API Versions](https://clerk.com/docs/backend-requests/versioning/overview).   Please see https://clerk.com/docs for more information.

The version of the OpenAPI document: v1
Contact: support@clerk.com
Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

require 'spec_helper'
require 'json'

# Unit tests for ClerkBackend::ProxyChecksApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ProxyChecksApi' do
  before do
    # run before each test
    @api_instance = ClerkBackend::ProxyChecksApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ProxyChecksApi' do
    it 'should create an instance of ProxyChecksApi' do
      expect(@api_instance).to be_instance_of(ClerkBackend::ProxyChecksApi)
    end
  end

  # unit tests for verify_domain_proxy
  # Verify the proxy configuration for your domain
  # This endpoint can be used to validate that a proxy-enabled domain is operational. It tries to verify that the proxy URL provided in the parameters maps to a functional proxy that can reach the Clerk Frontend API.  You can use this endpoint before you set a proxy URL for a domain. This way you can ensure that switching to proxy-based configuration will not lead to downtime for your instance.  The &#x60;proxy_url&#x60; parameter allows for testing proxy configurations for domains that don&#39;t have a proxy URL yet, or operate on a different proxy URL than the one provided. It can also be used to re-validate a domain that is already configured to work with a proxy.
  # @param [Hash] opts the optional parameters
  # @option opts [VerifyDomainProxyRequest] :verify_domain_proxy_request 
  # @return [ProxyCheck]
  describe 'verify_domain_proxy test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
