=begin
#Clerk Backend API

#The Clerk REST Backend API, meant to be accessed by backend servers.  ### Versions  When the API changes in a way that isn't compatible with older versions, a new version is released. Each version is identified by its release date, e.g. `2021-02-05`. For more information, please see [Clerk API Versions](https://clerk.com/docs/backend-requests/versioning/overview).   Please see https://clerk.com/docs for more information.

The version of the OpenAPI document: v1
Contact: support@clerk.com
Generated by: https://openapi-generator.tech
Generator version: 7.11.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for ClerkBackend::EmailAddressesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'EmailAddressesApi' do
  before do
    # run before each test
    @api_instance = ClerkBackend::EmailAddressesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EmailAddressesApi' do
    it 'should create an instance of EmailAddressesApi' do
      expect(@api_instance).to be_instance_of(ClerkBackend::EmailAddressesApi)
    end
  end

  # unit tests for create_email_address
  # Create an email address
  # Create a new email address
  # @param [Hash] opts the optional parameters
  # @option opts [CreateEmailAddressRequest] :create_email_address_request 
  # @return [EmailAddress]
  describe 'create_email_address test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_email_address
  # Delete an email address
  # Delete the email address with the given ID
  # @param email_address_id The ID of the email address to delete
  # @param [Hash] opts the optional parameters
  # @return [DeletedObject]
  describe 'delete_email_address test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_email_address
  # Retrieve an email address
  # Returns the details of an email address.
  # @param email_address_id The ID of the email address to retrieve
  # @param [Hash] opts the optional parameters
  # @return [EmailAddress]
  describe 'get_email_address test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_email_address
  # Update an email address
  # Updates an email address.
  # @param email_address_id The ID of the email address to update
  # @param [Hash] opts the optional parameters
  # @option opts [UpdateEmailAddressRequest] :update_email_address_request 
  # @return [EmailAddress]
  describe 'update_email_address test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end