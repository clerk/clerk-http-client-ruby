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

# Unit tests for ClerkHttpClient::OrganizationInvitationsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'OrganizationInvitationsApi' do
  before do
    # run before each test
    @api_instance = ClerkHttpClient::OrganizationInvitationsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OrganizationInvitationsApi' do
    it 'should create an instance of OrganizationInvitationsApi' do
      expect(@api_instance).to be_instance_of(ClerkHttpClient::OrganizationInvitationsApi)
    end
  end

  # unit tests for create_organization_invitation
  # Create and send an organization invitation
  # Creates a new organization invitation and sends an email to the provided &#x60;email_address&#x60; with a link to accept the invitation and join the organization. You can specify the &#x60;role&#x60; for the invited organization member.  New organization invitations get a \&quot;pending\&quot; status until they are revoked by an organization administrator or accepted by the invitee.  The request body supports passing an optional &#x60;redirect_url&#x60; parameter. When the invited user clicks the link to accept the invitation, they will be redirected to the URL provided. Use this parameter to implement a custom invitation acceptance flow.  You can specify the ID of the user that will send the invitation with the &#x60;inviter_user_id&#x60; parameter. That user must be a member with administrator privileges in the organization. Only \&quot;admin\&quot; members can create organization invitations.  You can optionally provide public and private metadata for the organization invitation. The public metadata are visible by both the Frontend and the Backend whereas the private ones only by the Backend. When the organization invitation is accepted, the metadata will be transferred to the newly created organization membership.
  # @param organization_id The ID of the organization for which to send the invitation
  # @param create_organization_invitation_request 
  # @param [Hash] opts the optional parameters
  # @return [OrganizationInvitation]
  describe 'create_organization_invitation test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_organization_invitation_bulk
  # Bulk create and send organization invitations
  # Creates new organization invitations in bulk and sends out emails to the provided email addresses with a link to accept the invitation and join the organization. You can specify a different &#x60;role&#x60; for each invited organization member. New organization invitations get a \&quot;pending\&quot; status until they are revoked by an organization administrator or accepted by the invitee. The request body supports passing an optional &#x60;redirect_url&#x60; parameter for each invitation. When the invited user clicks the link to accept the invitation, they will be redirected to the provided URL. Use this parameter to implement a custom invitation acceptance flow. You can specify the ID of the user that will send the invitation with the &#x60;inviter_user_id&#x60; parameter. Each invitation can have a different inviter user. Inviter users must be members with administrator privileges in the organization. Only \&quot;admin\&quot; members can create organization invitations. You can optionally provide public and private metadata for each organization invitation. The public metadata are visible by both the Frontend and the Backend, whereas the private metadata are only visible by the Backend. When the organization invitation is accepted, the metadata will be transferred to the newly created organization membership.
  # @param organization_id The organization ID.
  # @param create_organization_invitation_bulk_request_inner 
  # @param [Hash] opts the optional parameters
  # @return [OrganizationInvitations]
  describe 'create_organization_invitation_bulk test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_organization_invitation
  # Retrieve an organization invitation by ID
  # Use this request to get an existing organization invitation by ID.
  # @param organization_id The organization ID.
  # @param invitation_id The organization invitation ID.
  # @param [Hash] opts the optional parameters
  # @return [OrganizationInvitation]
  describe 'get_organization_invitation test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_instance_organization_invitations
  # Get a list of organization invitations for the current instance
  # This request returns the list of organization invitations for the instance. Results can be paginated using the optional &#x60;limit&#x60; and &#x60;offset&#x60; query parameters. You can filter them by providing the &#39;status&#39; query parameter, that accepts multiple values. You can change the order by providing the &#39;order&#39; query parameter, that accepts multiple values. You can filter by the invited user email address providing the &#x60;query&#x60; query parameter. The organization invitations are ordered by descending creation date by default.
  # @param [Hash] opts the optional parameters
  # @option opts [Float] :limit Applies a limit to the number of results returned. Can be used for paginating the results together with &#x60;offset&#x60;.
  # @option opts [Float] :offset Skip the first &#x60;offset&#x60; results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with &#x60;limit&#x60;.
  # @option opts [String] :order_by Allows to return organization invitations in a particular order. At the moment, you can order the returned organization invitations either by their &#x60;created_at&#x60; or &#x60;email_address&#x60;. In order to specify the direction, you can use the &#x60;+/-&#x60; symbols prepended in the property to order by. For example, if you want organization invitations to be returned in descending order according to their &#x60;created_at&#x60; property, you can use &#x60;-created_at&#x60;. If you don&#39;t use &#x60;+&#x60; or &#x60;-&#x60;, then &#x60;+&#x60; is implied. Defaults to &#x60;-created_at&#x60;.
  # @option opts [String] :status Filter organization invitations based on their status
  # @option opts [String] :query Filter organization invitations based on their &#x60;email_address&#x60;
  # @return [OrganizationInvitationsWithPublicOrganizationData]
  describe 'list_instance_organization_invitations test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_organization_invitations
  # Get a list of organization invitations
  # This request returns the list of organization invitations. Results can be paginated using the optional &#x60;limit&#x60; and &#x60;offset&#x60; query parameters. You can filter them by providing the &#39;status&#39; query parameter, that accepts multiple values. The organization invitations are ordered by descending creation date. Most recent invitations will be returned first. Any invitations created as a result of an Organization Domain are not included in the results.
  # @param organization_id The organization ID.
  # @param [Hash] opts the optional parameters
  # @option opts [Float] :limit Applies a limit to the number of results returned. Can be used for paginating the results together with &#x60;offset&#x60;.
  # @option opts [Float] :offset Skip the first &#x60;offset&#x60; results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with &#x60;limit&#x60;.
  # @option opts [String] :status Filter organization invitations based on their status
  # @return [OrganizationInvitations]
  describe 'list_organization_invitations test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_pending_organization_invitations
  # Get a list of pending organization invitations
  # This request returns the list of organization invitations with \&quot;pending\&quot; status. These are the organization invitations that can still be used to join the organization, but have not been accepted by the invited user yet. Results can be paginated using the optional &#x60;limit&#x60; and &#x60;offset&#x60; query parameters. The organization invitations are ordered by descending creation date. Most recent invitations will be returned first. Any invitations created as a result of an Organization Domain are not included in the results.
  # @param organization_id The organization ID.
  # @param [Hash] opts the optional parameters
  # @option opts [Float] :limit Applies a limit to the number of results returned. Can be used for paginating the results together with &#x60;offset&#x60;.
  # @option opts [Float] :offset Skip the first &#x60;offset&#x60; results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with &#x60;limit&#x60;.
  # @return [OrganizationInvitations]
  describe 'list_pending_organization_invitations test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for revoke_organization_invitation
  # Revoke a pending organization invitation
  # Use this request to revoke a previously issued organization invitation. Revoking an organization invitation makes it invalid; the invited user will no longer be able to join the organization with the revoked invitation. Only organization invitations with \&quot;pending\&quot; status can be revoked. The request accepts the &#x60;requesting_user_id&#x60; parameter to specify the user which revokes the invitation. Only users with \&quot;admin\&quot; role can revoke invitations.
  # @param organization_id The organization ID.
  # @param invitation_id The organization invitation ID.
  # @param [Hash] opts the optional parameters
  # @option opts [RevokeOrganizationInvitationRequest] :revoke_organization_invitation_request 
  # @return [OrganizationInvitation]
  describe 'revoke_organization_invitation test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
