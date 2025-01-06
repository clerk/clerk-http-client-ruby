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
require 'date'

# Unit tests for ClerkHttpClient::SAMLAccountVerification
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe ClerkHttpClient::SAMLAccountVerification do
  describe '.openapi_one_of' do
    it 'lists the items referenced in the oneOf array' do
      expect(described_class.openapi_one_of).to_not be_empty
    end
  end

  describe '.build' do
    it 'returns the correct model' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end
end
