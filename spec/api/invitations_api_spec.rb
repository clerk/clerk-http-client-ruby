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

# Unit tests for ClerkHttpClient::InvitationsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'InvitationsApi' do
  before do
    # run before each test
    @api_instance = ClerkHttpClient::InvitationsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InvitationsApi' do
    it 'should create an instance of InvitationsApi' do
      expect(@api_instance).to be_instance_of(ClerkHttpClient::InvitationsApi)
    end
  end

  # unit tests for create_invitation
  # Create an invitation
  # Creates a new invitation for the given email address and sends the invitation email. Keep in mind that you cannot create an invitation if there is already one for the given email address. Also, trying to create an invitation for an email address that already exists in your application will result to an error.
  # @param create_invitation_request Required parameters
  # @param [Hash] opts the optional parameters
  # @return [Invitation]
  describe 'create_invitation test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_invitations
  # List all invitations
  # Returns all non-revoked invitations for your application, sorted by creation date
  # @param [Hash] opts the optional parameters
  # @option opts [Float] :limit Applies a limit to the number of results returned. Can be used for paginating the results together with &#x60;offset&#x60;.
  # @option opts [Float] :offset Skip the first &#x60;offset&#x60; results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with &#x60;limit&#x60;.
  # @option opts [String] :status Filter invitations based on their status
  # @return [Array<Invitation>]
  describe 'list_invitations test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for revoke_invitation
  # Revokes an invitation
  # Revokes the given invitation. Revoking an invitation will prevent the user from using the invitation link that was sent to them. However, it doesn&#39;t prevent the user from signing up if they follow the sign up flow. Only active (i.e. non-revoked) invitations can be revoked.
  # @param invitation_id The ID of the invitation to be revoked
  # @param [Hash] opts the optional parameters
  # @return [RevokeInvitation200Response]
  describe 'revoke_invitation test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
