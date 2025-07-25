# Clerk::SDK.organization_invitations

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_organization_invitation**](OrganizationInvitationsApi.md#create_organization_invitation) | **POST** /organizations/{organization_id}/invitations | Create and send an organization invitation |
| [**create_organization_invitation_bulk**](OrganizationInvitationsApi.md#create_organization_invitation_bulk) | **POST** /organizations/{organization_id}/invitations/bulk | Bulk create and send organization invitations |
| [**get_organization_invitation**](OrganizationInvitationsApi.md#get_organization_invitation) | **GET** /organizations/{organization_id}/invitations/{invitation_id} | Retrieve an organization invitation by ID |
| [**list_instance_organization_invitations**](OrganizationInvitationsApi.md#list_instance_organization_invitations) | **GET** /organization_invitations | Get a list of organization invitations for the current instance |
| [**list_organization_invitations**](OrganizationInvitationsApi.md#list_organization_invitations) | **GET** /organizations/{organization_id}/invitations | Get a list of organization invitations |
| [**list_pending_organization_invitations**](OrganizationInvitationsApi.md#list_pending_organization_invitations) | **GET** /organizations/{organization_id}/invitations/pending | Get a list of pending organization invitations |
| [**revoke_organization_invitation**](OrganizationInvitationsApi.md#revoke_organization_invitation) | **POST** /organizations/{organization_id}/invitations/{invitation_id}/revoke | Revoke a pending organization invitation |


## create_organization_invitation

> <OrganizationInvitation> create_organization_invitation(organization_id, opts)

Create and send an organization invitation

Creates a new organization invitation and sends an email to the provided `email_address` with a link to accept the invitation and join the organization. You can specify the `role` for the invited organization member.  New organization invitations get a \"pending\" status until they are revoked by an organization administrator or accepted by the invitee.  The request body supports passing an optional `redirect_url` parameter. When the invited user clicks the link to accept the invitation, they will be redirected to the URL provided. Use this parameter to implement a custom invitation acceptance flow.  You can specify the ID of the user that will send the invitation with the `inviter_user_id` parameter. That user must be a member with administrator privileges in the organization. Only \"admin\" members can create organization invitations.  You can optionally provide public and private metadata for the organization invitation. The public metadata are visible by both the Frontend and the Backend whereas the private ones only by the Backend. When the organization invitation is accepted, the metadata will be transferred to the newly created organization membership.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

organization_id = 'organization_id_example' # String | The ID of the organization for which to send the invitation
opts = {
  create_organization_invitation_request: ClerkHttpClient::CreateOrganizationInvitationRequest.new({email_address: 'email_address_example', role: 'role_example'}) # CreateOrganizationInvitationRequest | 
}

begin
  # Create and send an organization invitation
  result = Clerk::SDK.organization_invitations.create_organization_invitation(organization_id, opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organization_invitations->create_organization_invitation: #{e}"
end
```

#### Using the `create_organization_invitation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganizationInvitation>, Integer, Hash)> create_organization_invitation_with_http_info(organization_id, opts)

```ruby
begin
  # Create and send an organization invitation
  data, status_code, headers = Clerk::SDK.organization_invitations.create_organization_invitation_with_http_info(organization_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganizationInvitation>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organization_invitations->create_organization_invitation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization_id** | **String** | The ID of the organization for which to send the invitation |  |
| **create_organization_invitation_request** | [**CreateOrganizationInvitationRequest**](CreateOrganizationInvitationRequest.md) |  | [optional] |

### Return type

[**OrganizationInvitation**](OrganizationInvitation.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_organization_invitation_bulk

> <OrganizationInvitations> create_organization_invitation_bulk(organization_id, create_organization_invitation_request)

Bulk create and send organization invitations

Creates new organization invitations in bulk and sends out emails to the provided email addresses with a link to accept the invitation and join the organization. You can specify a different `role` for each invited organization member. New organization invitations get a \"pending\" status until they are revoked by an organization administrator or accepted by the invitee. The request body supports passing an optional `redirect_url` parameter for each invitation. When the invited user clicks the link to accept the invitation, they will be redirected to the provided URL. Use this parameter to implement a custom invitation acceptance flow. You can specify the ID of the user that will send the invitation with the `inviter_user_id` parameter. Each invitation can have a different inviter user. Inviter users must be members with administrator privileges in the organization. Only \"admin\" members can create organization invitations. You can optionally provide public and private metadata for each organization invitation. The public metadata are visible by both the Frontend and the Backend, whereas the private metadata are only visible by the Backend. When the organization invitation is accepted, the metadata will be transferred to the newly created organization membership.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

organization_id = 'organization_id_example' # String | The organization ID.
create_organization_invitation_request = [ClerkHttpClient::CreateOrganizationInvitationRequest.new({email_address: 'email_address_example', role: 'role_example'})] # Array<CreateOrganizationInvitationRequest> | 

begin
  # Bulk create and send organization invitations
  result = Clerk::SDK.organization_invitations.create_organization_invitation_bulk(organization_id, create_organization_invitation_request)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organization_invitations->create_organization_invitation_bulk: #{e}"
end
```

#### Using the `create_organization_invitation_bulk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganizationInvitations>, Integer, Hash)> create_organization_invitation_bulk_with_http_info(organization_id, create_organization_invitation_request)

```ruby
begin
  # Bulk create and send organization invitations
  data, status_code, headers = Clerk::SDK.organization_invitations.create_organization_invitation_bulk_with_http_info(organization_id, create_organization_invitation_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganizationInvitations>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organization_invitations->create_organization_invitation_bulk_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization_id** | **String** | The organization ID. |  |
| **create_organization_invitation_request** | [**Array&lt;CreateOrganizationInvitationRequest&gt;**](CreateOrganizationInvitationRequest.md) |  |  |

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
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

organization_id = 'organization_id_example' # String | The organization ID.
invitation_id = 'invitation_id_example' # String | The organization invitation ID.

begin
  # Retrieve an organization invitation by ID
  result = Clerk::SDK.organization_invitations.get_organization_invitation(organization_id, invitation_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organization_invitations->get_organization_invitation: #{e}"
end
```

#### Using the `get_organization_invitation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganizationInvitation>, Integer, Hash)> get_organization_invitation_with_http_info(organization_id, invitation_id)

```ruby
begin
  # Retrieve an organization invitation by ID
  data, status_code, headers = Clerk::SDK.organization_invitations.get_organization_invitation_with_http_info(organization_id, invitation_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganizationInvitation>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organization_invitations->get_organization_invitation_with_http_info: #{e}"
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


## list_instance_organization_invitations

> <OrganizationInvitationsWithPublicOrganizationData> list_instance_organization_invitations(opts)

Get a list of organization invitations for the current instance

This request returns the list of organization invitations for the instance. Results can be paginated using the optional `limit` and `offset` query parameters. You can filter them by providing the 'status' query parameter, that accepts multiple values. You can change the order by providing the 'order' query parameter, that accepts multiple values. You can filter by the invited user email address providing the `query` query parameter. The organization invitations are ordered by descending creation date by default.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

opts = {
  order_by: 'order_by_example', # String | Allows to return organization invitations in a particular order. At the moment, you can order the returned organization invitations either by their `created_at` or `email_address`. In order to specify the direction, you can use the `+/-` symbols prepended in the property to order by. For example, if you want organization invitations to be returned in descending order according to their `created_at` property, you can use `-created_at`. If you don't use `+` or `-`, then `+` is implied. Defaults to `-created_at`.
  status: 'pending', # String | Filter organization invitations based on their status
  query: 'query_example', # String | Filter organization invitations based on their `email_address`
  limit: 56, # Integer | Applies a limit to the number of results returned. Can be used for paginating the results together with `offset`.
  offset: 56 # Integer | Skip the first `offset` results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with `limit`.
}

begin
  # Get a list of organization invitations for the current instance
  result = Clerk::SDK.organization_invitations.list_instance_organization_invitations(opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organization_invitations->list_instance_organization_invitations: #{e}"
end
```

#### Using the `list_instance_organization_invitations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganizationInvitationsWithPublicOrganizationData>, Integer, Hash)> list_instance_organization_invitations_with_http_info(opts)

```ruby
begin
  # Get a list of organization invitations for the current instance
  data, status_code, headers = Clerk::SDK.organization_invitations.list_instance_organization_invitations_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganizationInvitationsWithPublicOrganizationData>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organization_invitations->list_instance_organization_invitations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_by** | **String** | Allows to return organization invitations in a particular order. At the moment, you can order the returned organization invitations either by their &#x60;created_at&#x60; or &#x60;email_address&#x60;. In order to specify the direction, you can use the &#x60;+/-&#x60; symbols prepended in the property to order by. For example, if you want organization invitations to be returned in descending order according to their &#x60;created_at&#x60; property, you can use &#x60;-created_at&#x60;. If you don&#39;t use &#x60;+&#x60; or &#x60;-&#x60;, then &#x60;+&#x60; is implied. Defaults to &#x60;-created_at&#x60;. | [optional][default to &#39;-created_at&#39;] |
| **status** | **String** | Filter organization invitations based on their status | [optional] |
| **query** | **String** | Filter organization invitations based on their &#x60;email_address&#x60; | [optional] |
| **limit** | **Integer** | Applies a limit to the number of results returned. Can be used for paginating the results together with &#x60;offset&#x60;. | [optional][default to 10] |
| **offset** | **Integer** | Skip the first &#x60;offset&#x60; results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with &#x60;limit&#x60;. | [optional][default to 0] |

### Return type

[**OrganizationInvitationsWithPublicOrganizationData**](OrganizationInvitationsWithPublicOrganizationData.md)

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
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

organization_id = 'organization_id_example' # String | The organization ID.
opts = {
  status: 'pending', # String | Filter organization invitations based on their status
  email_address: 'email_address_example', # String | Returns organization invitations inviting the specified email address.
  order_by: 'order_by_example', # String | Allows to return organization invitations in a particular order. You can order the returned organization invitations either by their `created_at` or `email_address`. In order to specify the direction, you can use the `+/-` symbols prepended in the property to order by. For example, if you want organization invitations to be returned in descending order according to their `created_at` property, you can use `-created_at`. If you don't use `+` or `-`, then `+` is implied. Defaults to `-created_at`.
  limit: 56, # Integer | Applies a limit to the number of results returned. Can be used for paginating the results together with `offset`.
  offset: 56 # Integer | Skip the first `offset` results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with `limit`.
}

begin
  # Get a list of organization invitations
  result = Clerk::SDK.organization_invitations.list_organization_invitations(organization_id, opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organization_invitations->list_organization_invitations: #{e}"
end
```

#### Using the `list_organization_invitations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganizationInvitations>, Integer, Hash)> list_organization_invitations_with_http_info(organization_id, opts)

```ruby
begin
  # Get a list of organization invitations
  data, status_code, headers = Clerk::SDK.organization_invitations.list_organization_invitations_with_http_info(organization_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganizationInvitations>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organization_invitations->list_organization_invitations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization_id** | **String** | The organization ID. |  |
| **status** | **String** | Filter organization invitations based on their status | [optional] |
| **email_address** | **String** | Returns organization invitations inviting the specified email address. | [optional] |
| **order_by** | **String** | Allows to return organization invitations in a particular order. You can order the returned organization invitations either by their &#x60;created_at&#x60; or &#x60;email_address&#x60;. In order to specify the direction, you can use the &#x60;+/-&#x60; symbols prepended in the property to order by. For example, if you want organization invitations to be returned in descending order according to their &#x60;created_at&#x60; property, you can use &#x60;-created_at&#x60;. If you don&#39;t use &#x60;+&#x60; or &#x60;-&#x60;, then &#x60;+&#x60; is implied. Defaults to &#x60;-created_at&#x60;. | [optional][default to &#39;-created_at&#39;] |
| **limit** | **Integer** | Applies a limit to the number of results returned. Can be used for paginating the results together with &#x60;offset&#x60;. | [optional][default to 10] |
| **offset** | **Integer** | Skip the first &#x60;offset&#x60; results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with &#x60;limit&#x60;. | [optional][default to 0] |

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
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

organization_id = 'organization_id_example' # String | The organization ID.
opts = {
  limit: 56, # Integer | Applies a limit to the number of results returned. Can be used for paginating the results together with `offset`.
  offset: 56 # Integer | Skip the first `offset` results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with `limit`.
}

begin
  # Get a list of pending organization invitations
  result = Clerk::SDK.organization_invitations.list_pending_organization_invitations(organization_id, opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organization_invitations->list_pending_organization_invitations: #{e}"
end
```

#### Using the `list_pending_organization_invitations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganizationInvitations>, Integer, Hash)> list_pending_organization_invitations_with_http_info(organization_id, opts)

```ruby
begin
  # Get a list of pending organization invitations
  data, status_code, headers = Clerk::SDK.organization_invitations.list_pending_organization_invitations_with_http_info(organization_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganizationInvitations>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organization_invitations->list_pending_organization_invitations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization_id** | **String** | The organization ID. |  |
| **limit** | **Integer** | Applies a limit to the number of results returned. Can be used for paginating the results together with &#x60;offset&#x60;. | [optional][default to 10] |
| **offset** | **Integer** | Skip the first &#x60;offset&#x60; results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with &#x60;limit&#x60;. | [optional][default to 0] |

### Return type

[**OrganizationInvitations**](OrganizationInvitations.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## revoke_organization_invitation

> <OrganizationInvitation> revoke_organization_invitation(organization_id, invitation_id, opts)

Revoke a pending organization invitation

Use this request to revoke a previously issued organization invitation. Revoking an organization invitation makes it invalid; the invited user will no longer be able to join the organization with the revoked invitation. Only organization invitations with \"pending\" status can be revoked. The request accepts the `requesting_user_id` parameter to specify the user which revokes the invitation. Only users with \"admin\" role can revoke invitations.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

organization_id = 'organization_id_example' # String | The organization ID.
invitation_id = 'invitation_id_example' # String | The organization invitation ID.
opts = {
  revoke_organization_invitation_request: ClerkHttpClient::RevokeOrganizationInvitationRequest.new # RevokeOrganizationInvitationRequest | 
}

begin
  # Revoke a pending organization invitation
  result = Clerk::SDK.organization_invitations.revoke_organization_invitation(organization_id, invitation_id, opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organization_invitations->revoke_organization_invitation: #{e}"
end
```

#### Using the `revoke_organization_invitation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganizationInvitation>, Integer, Hash)> revoke_organization_invitation_with_http_info(organization_id, invitation_id, opts)

```ruby
begin
  # Revoke a pending organization invitation
  data, status_code, headers = Clerk::SDK.organization_invitations.revoke_organization_invitation_with_http_info(organization_id, invitation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganizationInvitation>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organization_invitations->revoke_organization_invitation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization_id** | **String** | The organization ID. |  |
| **invitation_id** | **String** | The organization invitation ID. |  |
| **revoke_organization_invitation_request** | [**RevokeOrganizationInvitationRequest**](RevokeOrganizationInvitationRequest.md) |  | [optional] |

### Return type

[**OrganizationInvitation**](OrganizationInvitation.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

