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

# Unit tests for ClerkHttpClient::OrganizationDomainApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'OrganizationDomainApi' do
  before do
    # run before each test
    @api_instance = ClerkHttpClient::OrganizationDomainApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OrganizationDomainApi' do
    it 'should create an instance of OrganizationDomainApi' do
      expect(@api_instance).to be_instance_of(ClerkHttpClient::OrganizationDomainApi)
    end
  end

  # unit tests for update_organization_domain
  # Update an organization domain.
  # Updates the properties of an existing organization domain.
  # @param organization_id The ID of the organization the domain belongs to
  # @param domain_id The ID of the domain
  # @param update_organization_domain_request 
  # @param [Hash] opts the optional parameters
  # @return [OrganizationDomain]
  describe 'update_organization_domain test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
