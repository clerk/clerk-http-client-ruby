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
require 'date'

# Unit tests for ClerkBackend::EmailAddress
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe ClerkBackend::EmailAddress do
  let(:instance) { ClerkBackend::EmailAddress.new }

  describe 'test an instance of EmailAddress' do
    it 'should create an instance of EmailAddress' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(ClerkBackend::EmailAddress)
    end
  end

  describe 'test attribute "id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "object"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["email_address"])
      # validator.allowable_values.each do |value|
      #   expect { instance.object = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "email_address"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "reserved"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "verification"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "linked_to"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "created_at"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "updated_at"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end