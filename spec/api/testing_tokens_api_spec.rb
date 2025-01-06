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

# Unit tests for ClerkHttpClient::TestingTokensApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TestingTokensApi' do
  before do
    # run before each test
    @api_instance = ClerkHttpClient::TestingTokensApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TestingTokensApi' do
    it 'should create an instance of TestingTokensApi' do
      expect(@api_instance).to be_instance_of(ClerkHttpClient::TestingTokensApi)
    end
  end

  # unit tests for create_testing_token
  # Retrieve a new testing token
  # Retrieve a new testing token. Only available for development instances.
  # @param [Hash] opts the optional parameters
  # @return [TestingToken]
  describe 'create_testing_token test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
