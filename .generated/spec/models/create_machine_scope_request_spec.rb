=begin
#Clerk Backend API

#The Clerk REST Backend API, meant to be accessed by backend servers.  ### Versions  When the API changes in a way that isn't compatible with older versions, a new version is released. Each version is identified by its release date, e.g. `2021-02-05`. For more information, please see [Clerk API Versions](https://clerk.com/docs/versioning/available-versions).  Please see https://clerk.com/docs for more information.

The version of the OpenAPI document: 2021-02-05
Contact: support@clerk.com
Generated by: https://openapi-generator.tech
Generator version: unset

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for ClerkHttpClient::CreateMachineScopeRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe ClerkHttpClient::CreateMachineScopeRequest do
  let(:instance) { ClerkHttpClient::CreateMachineScopeRequest.new }

  describe 'test an instance of CreateMachineScopeRequest' do
    it 'should create an instance of CreateMachineScopeRequest' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(ClerkHttpClient::CreateMachineScopeRequest)
    end
  end

  describe 'test attribute "to_machine_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
