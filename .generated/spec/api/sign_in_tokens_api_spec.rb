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

# Unit tests for ClerkHttpClient::SignInTokensApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SignInTokensApi' do
  before do
    # run before each test
    @api_instance = ClerkHttpClient::SignInTokensApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SignInTokensApi' do
    it 'should create an instance of SignInTokensApi' do
      expect(@api_instance).to be_instance_of(ClerkHttpClient::SignInTokensApi)
    end
  end

  # unit tests for create_sign_in_token
  # Create sign-in token
  # Creates a new sign-in token and associates it with the given user. By default, sign-in tokens expire in 30 days. You can optionally supply a different duration in seconds using the &#x60;expires_in_seconds&#x60; property.
  # @param [Hash] opts the optional parameters
  # @option opts [CreateSignInTokenRequest] :create_sign_in_token_request 
  # @return [SignInToken]
  describe 'create_sign_in_token test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for revoke_sign_in_token
  # Revoke the given sign-in token
  # Revokes a pending sign-in token
  # @param sign_in_token_id The ID of the sign-in token to be revoked
  # @param [Hash] opts the optional parameters
  # @return [SignInToken]
  describe 'revoke_sign_in_token test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end