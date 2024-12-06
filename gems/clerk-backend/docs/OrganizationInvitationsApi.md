# ClerkBackend::OrganizationInvitationsApi

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_organization_invitation**](OrganizationInvitationsApi.md#create_organization_invitation) | **POST** /organizations/{organization_id}/invitations | Create and send an organization invitation |
| [**create_organization_invitation_bulk**](OrganizationInvitationsApi.md#create_organization_invitation_bulk) | **POST** /organizations/{organization_id}/invitations/bulk | Bulk create and send organization invitations |
| [**get_organization_invitation**](OrganizationInvitationsApi.md#get_organization_invitation) | **GET** /organizations/{organization_id}/invitations/{invitation_id} | Retrieve an organization invitation by ID |
| [**list_organization_invitations**](OrganizationInvitationsApi.md#list_organization_invitations) | **GET** /organizations/{organization_id}/invitations | Get a list of organization invitations |
| [**list_pending_organization_invitations**](OrganizationInvitationsApi.md#list_pending_organization_invitations) | **GET** /organizations/{organization_id}/invitations/pending | Get a list of pending organization invitations |
| [**revoke_organization_invitation**](OrganizationInvitationsApi.md#revoke_organization_invitation) | **POST** /organizations/{organization_id}/invitations/{invitation_id}/revoke | Revoke a pending organization invitation |


## create_organization_invitation

> <OrganizationInvitation> create_organization_invitation(organization_id, create_organization_invitation_request)

Create and send an organization invitation

Creates a new organization invitation and sends an email to the provided `email_address` with a link to accept the invitation and join the organization. You can specify the `role` for the invited organization member.  New organization invitations get a \"pending\" status until they are revoked by an organization administrator or accepted by the invitee.  The request body supports passing an optional `redirect_url` parameter. When the invited user clicks the link to accept the invitation, they will be redirected to the URL provided. Use this parameter to implement a custom invitation acceptance flow.  You must specify the ID of the user that will send the invitation with the `inviter_user_id` parameter. That user must be a member with administrator privileges in the organization. Only \"admin\" members can create organization invitations.  You can optionally provide public and private metadata for the organization invitation. The public metadata are visible by both the Frontend and the Backend whereas the private ones only by the Backend. When the organization invitation is accepted, the metadata will be transferred to the newly created organization membership.

### Examples

```ruby
require 'time'
require 'clerk-backend'
# setup authorization
ClerkBackend.configure do |config|
  # Configure Bearer authorization (sk_<environment>_<secret value>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ClerkBackend::OrganizationInvitationsApi.new
organization_id = 'organization_id_example' # String | The ID of the organization for which to send the invitation
create_organization_invitation_request = ClerkBackend::CreateOrganizationInvitationRequest.new({email_address: 'email_address_example', inviter_user_id: 'inviter_user_id_example', role: 'role_example'}) # CreateOrganizationInvitationRequest | 

begin
  # Create and send an organization invitation
  result = api_instance.create_organization_invitation(organization_id, create_organization_invitation_request)
  p result
rescue ClerkBackend::ApiError => e
  puts "Error when calling OrganizationInvitationsApi->create_organization_invitation: #{e}"
end
```

#### Using the create_organization_invitation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganizationInvitation>, Integer, Hash)> create_organization_invitation_with_http_info(organization_id, create_organization_invitation_request)

```ruby
begin
  # Create and send an organization invitation
  data, status_code, headers = api_instance.create_organization_invitation_with_http_info(organization_id, create_organization_invitation_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganizationInvitation>
rescue ClerkBackend::ApiError => e
  puts "Error when calling OrganizationInvitationsApi->create_organization_invitation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization_id** | **String** | The ID of the organization for which to send the invitation |  |
| **create_organization_invitation_request** | [**CreateOrganizationInvitationRequest**](CreateOrganizationInvitationRequest.md) |  |  |

### Return type

[**OrganizationInvitation**](OrganizationInvitation.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_organization_invitation_bulk

> <OrganizationInvitations> create_organization_invitation_bulk(organization_id, create_organization_invitation_bulk_request_inner)

Bulk create and send organization invitations

Creates new organization invitations in bulk and sends out emails to the provided email addresses with a link to accept the invitation and join the organization. You can specify a different `role` for each invited organization member. New organization invitations get a \"pending\" status until they are revoked by an organization administrator or accepted by the invitee. The request body supports passing an optional `redirect_url` parameter for each invitation. When the invited user clicks the link to accept the invitation, they will be redirected to the provided URL. Use this parameter to implement a custom invitation acceptance flow. You must specify the ID of the user that will send the invitation with the `inviter_user_id` parameter. Each invitation can have a different inviter user. Inviter users must be members with administrator privileges in the organization. Only \"admin\" members can create organization invitations. You can optionally provide public and private metadata for each organization invitation. The public metadata are visible by both the Frontend and the Backend, whereas the private metadata are only visible by the Backend. When the organization invitation is accepted, the metadata will be transferred to the newly created organization membership.

### Examples

```ruby
require 'time'
require 'clerk-backend'
# setup authorization
ClerkBackend.configure do |config|
  # Configure Bearer authorization (sk_<environment>_<secret value>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ClerkBackend::OrganizationInvitationsApi.new
organization_id = 'organization_id_example' # String | The organization ID.
create_organization_invitation_bulk_request_inner = [ClerkBackend::CreateOrganizationInvitationBulkRequestInner.new({email_address: 'email_address_example', inviter_user_id: 'inviter_user_id_example', role: 'role_example'})] # Array<CreateOrganizationInvitationBulkRequestInner> | 

begin
  # Bulk create and send organization invitations
  result = api_instance.create_organization_invitation_bulk(organization_id, create_organization_invitation_bulk_request_inner)
  p result
rescue ClerkBackend::ApiError => e
  puts "Error when calling OrganizationInvitationsApi->create_organization_invitation_bulk: #{e}"
end
```

#### Using the create_organization_invitation_bulk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganizationInvitations>, Integer, Hash)> create_organization_invitation_bulk_with_http_info(organization_id, create_organization_invitation_bulk_request_inner)

```ruby
begin
  # Bulk create and send organization invitations
  data, status_code, headers = api_instance.create_organization_invitation_bulk_with_http_info(organization_id, create_organization_invitation_bulk_request_inner)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganizationInvitations>
rescue ClerkBackend::ApiError => e
  puts "Error when calling OrganizationInvitationsApi->create_organization_invitation_bulk_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization_id** | **String** | The organization ID. |  |
| **create_organization_invitation_bulk_request_inner** | [**Array&lt;CreateOrganizationInvitationBulkRequestInner&gt;**](CreateOrganizationInvitationBulkRequestInner.md) |  |  |

### Return type

[**OrganizationInvitations**](OrganizationInvitations.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_organization_invitation

> <OrganizationInvitation> get_organization_invitation(organization_id, invitation_id)

Retrieve an organization invitation by ID

Use this request to get an existing organization invitation by ID.

### Examples

```ruby
require 'time'
require 'clerk-backend'
# setup authorization
ClerkBackend.configure do |config|
  # Configure Bearer authorization (sk_<environment>_<secret value>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ClerkBackend::OrganizationInvitationsApi.new
organization_id = 'organization_id_example' # String | The organization ID.
invitation_id = 'invitation_id_example' # String | The organization invitation ID.

begin
  # Retrieve an organization invitation by ID
  result = api_instance.get_organization_invitation(organization_id, invitation_id)
  p result
rescue ClerkBackend::ApiError => e
  puts "Error when calling OrganizationInvitationsApi->get_organization_invitation: #{e}"
end
```

#### Using the get_organization_invitation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganizationInvitation>, Integer, Hash)> get_organization_invitation_with_http_info(organization_id, invitation_id)

```ruby
begin
  # Retrieve an organization invitation by ID
  data, status_code, headers = api_instance.get_organization_invitation_with_http_info(organization_id, invitation_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganizationInvitation>
rescue ClerkBackend::ApiError => e
  puts "Error when calling OrganizationInvitationsApi->get_organization_invitation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization_id** | **String** | The organization ID. |  |
| **invitation_id** | **String** | The organization invitation ID. |  |

### Return type

[**OrganizationInvitation**](OrganizationInvitation.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_organization_invitations

> <OrganizationInvitations> list_organization_invitations(organization_id, opts)

Get a list of organization invitations

This request returns the list of organization invitations. Results can be paginated using the optional `limit` and `offset` query parameters. You can filter them by providing the 'status' query parameter, that accepts multiple values. The organization invitations are ordered by descending creation date. Most recent invitations will be returned first. Any invitations created as a result of an Organization Domain are not included in the results.

### Examples

```ruby
require 'time'
require 'clerk-backend'
# setup authorization
ClerkBackend.configure do |config|
  # Configure Bearer authorization (sk_<environment>_<secret value>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ClerkBackend::OrganizationInvitationsApi.new
organization_id = 'organization_id_example' # String | The organization ID.
opts = {
  limit: 8.14, # Float | Applies a limit to the number of results returned. Can be used for paginating the results together with `offset`.
  offset: 8.14, # Float | Skip the first `offset` results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with `limit`.
  status: 'pending' # String | Filter organization invitations based on their status
}

begin
  # Get a list of organization invitations
  result = api_instance.list_organization_invitations(organization_id, opts)
  p result
rescue ClerkBackend::ApiError => e
  puts "Error when calling OrganizationInvitationsApi->list_organization_invitations: #{e}"
end
```

#### Using the list_organization_invitations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganizationInvitations>, Integer, Hash)> list_organization_invitations_with_http_info(organization_id, opts)

```ruby
begin
  # Get a list of organization invitations
  data, status_code, headers = api_instance.list_organization_invitations_with_http_info(organization_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganizationInvitations>
rescue ClerkBackend::ApiError => e
  puts "Error when calling OrganizationInvitationsApi->list_organization_invitations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization_id** | **String** | The organization ID. |  |
| **limit** | **Float** | Applies a limit to the number of results returned. Can be used for paginating the results together with &#x60;offset&#x60;. | [optional][default to 10] |
| **offset** | **Float** | Skip the first &#x60;offset&#x60; results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with &#x60;limit&#x60;. | [optional][default to 0] |
| **status** | **String** | Filter organization invitations based on their status | [optional] |

### Return type

[**OrganizationInvitations**](OrganizationInvitations.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_pending_organization_invitations

> <OrganizationInvitations> list_pending_organization_invitations(organization_id, opts)

Get a list of pending organization invitations

This request returns the list of organization invitations with \"pending\" status. These are the organization invitations that can still be used to join the organization, but have not been accepted by the invited user yet. Results can be paginated using the optional `limit` and `offset` query parameters. The organization invitations are ordered by descending creation date. Most recent invitations will be returned first. Any invitations created as a result of an Organization Domain are not included in the results.

### Examples

```ruby
require 'time'
require 'clerk-backend'
# setup authorization
ClerkBackend.configure do |config|
  # Configure Bearer authorization (sk_<environment>_<secret value>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ClerkBackend::OrganizationInvitationsApi.new
organization_id = 'organization_id_example' # String | The organization ID.
opts = {
  limit: 8.14, # Float | Applies a limit to the number of results returned. Can be used for paginating the results together with `offset`.
  offset: 8.14 # Float | Skip the first `offset` results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with `limit`.
}

begin
  # Get a list of pending organization invitations
  result = api_instance.list_pending_organization_invitations(organization_id, opts)
  p result
rescue ClerkBackend::ApiError => e
  puts "Error when calling OrganizationInvitationsApi->list_pending_organization_invitations: #{e}"
end
```

#### Using the list_pending_organization_invitations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganizationInvitations>, Integer, Hash)> list_pending_organization_invitations_with_http_info(organization_id, opts)

```ruby
begin
  # Get a list of pending organization invitations
  data, status_code, headers = api_instance.list_pending_organization_invitations_with_http_info(organization_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganizationInvitations>
rescue ClerkBackend::ApiError => e
  puts "Error when calling OrganizationInvitationsApi->list_pending_organization_invitations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization_id** | **String** | The organization ID. |  |
| **limit** | **Float** | Applies a limit to the number of results returned. Can be used for paginating the results together with &#x60;offset&#x60;. | [optional][default to 10] |
| **offset** | **Float** | Skip the first &#x60;offset&#x60; results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with &#x60;limit&#x60;. | [optional][default to 0] |

### Return type

[**OrganizationInvitations**](OrganizationInvitations.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## revoke_organization_invitation

> <OrganizationInvitation> revoke_organization_invitation(organization_id, invitation_id, revoke_organization_invitation_request)

Revoke a pending organization invitation

Use this request to revoke a previously issued organization invitation. Revoking an organization invitation makes it invalid; the invited user will no longer be able to join the organization with the revoked invitation. Only organization invitations with \"pending\" status can be revoked. The request needs the `requesting_user_id` parameter to specify the user which revokes the invitation. Only users with \"admin\" role can revoke invitations.

### Examples

```ruby
require 'time'
require 'clerk-backend'
# setup authorization
ClerkBackend.configure do |config|
  # Configure Bearer authorization (sk_<environment>_<secret value>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ClerkBackend::OrganizationInvitationsApi.new
organization_id = 'organization_id_example' # String | The organization ID.
invitation_id = 'invitation_id_example' # String | The organization invitation ID.
revoke_organization_invitation_request = ClerkBackend::RevokeOrganizationInvitationRequest.new({requesting_user_id: 'requesting_user_id_example'}) # RevokeOrganizationInvitationRequest | 

begin
  # Revoke a pending organization invitation
  result = api_instance.revoke_organization_invitation(organization_id, invitation_id, revoke_organization_invitation_request)
  p result
rescue ClerkBackend::ApiError => e
  puts "Error when calling OrganizationInvitationsApi->revoke_organization_invitation: #{e}"
end
```

#### Using the revoke_organization_invitation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganizationInvitation>, Integer, Hash)> revoke_organization_invitation_with_http_info(organization_id, invitation_id, revoke_organization_invitation_request)

```ruby
begin
  # Revoke a pending organization invitation
  data, status_code, headers = api_instance.revoke_organization_invitation_with_http_info(organization_id, invitation_id, revoke_organization_invitation_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganizationInvitation>
rescue ClerkBackend::ApiError => e
  puts "Error when calling OrganizationInvitationsApi->revoke_organization_invitation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization_id** | **String** | The organization ID. |  |
| **invitation_id** | **String** | The organization invitation ID. |  |
| **revoke_organization_invitation_request** | [**RevokeOrganizationInvitationRequest**](RevokeOrganizationInvitationRequest.md) |  |  |

### Return type

[**OrganizationInvitation**](OrganizationInvitation.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

