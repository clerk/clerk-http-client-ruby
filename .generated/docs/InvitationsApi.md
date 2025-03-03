# Clerk::SDK.invitations

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_bulk_invitations**](InvitationsApi.md#create_bulk_invitations) | **POST** /invitations/bulk | Create multiple invitations |
| [**create_invitation**](InvitationsApi.md#create_invitation) | **POST** /invitations | Create an invitation |
| [**list_invitations**](InvitationsApi.md#list_invitations) | **GET** /invitations | List all invitations |
| [**revoke_invitation**](InvitationsApi.md#revoke_invitation) | **POST** /invitations/{invitation_id}/revoke | Revokes an invitation |


## create_bulk_invitations

> <Array<Invitation>> create_bulk_invitations(opts)

Create multiple invitations

Use this API operation to create multiple invitations for the provided email addresses. You can choose to send the invitations as emails by setting the `notify` parameter to `true`. There cannot be an existing invitation for any of the email addresses you provide unless you set `ignore_existing` to `true` for specific email addresses. Please note that there must be no existing user for any of the email addresses you provide, and this rule cannot be bypassed.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

opts = {
  create_bulk_invitations_request_inner: [ClerkHttpClient::CreateBulkInvitationsRequestInner.new({email_address: 'email_address_example'})] # Array<CreateBulkInvitationsRequestInner> | Required parameters
}

begin
  # Create multiple invitations
  result = Clerk::SDK.invitations.create_bulk_invitations(opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.invitations->create_bulk_invitations: #{e}"
end
```

#### Using the `create_bulk_invitations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Invitation>>, Integer, Hash)> create_bulk_invitations_with_http_info(opts)

```ruby
begin
  # Create multiple invitations
  data, status_code, headers = Clerk::SDK.invitations.create_bulk_invitations_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Invitation>>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.invitations->create_bulk_invitations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_bulk_invitations_request_inner** | [**Array&lt;CreateBulkInvitationsRequestInner&gt;**](CreateBulkInvitationsRequestInner.md) | Required parameters | [optional] |

### Return type

[**Array&lt;Invitation&gt;**](Invitation.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_invitation

> <Invitation> create_invitation(opts)

Create an invitation

Creates a new invitation for the given email address and sends the invitation email. Keep in mind that you cannot create an invitation if there is already one for the given email address. Also, trying to create an invitation for an email address that already exists in your application will result to an error.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

opts = {
  create_invitation_request: ClerkHttpClient::CreateInvitationRequest.new({email_address: 'email_address_example'}) # CreateInvitationRequest | Required parameters
}

begin
  # Create an invitation
  result = Clerk::SDK.invitations.create_invitation(opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.invitations->create_invitation: #{e}"
end
```

#### Using the `create_invitation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Invitation>, Integer, Hash)> create_invitation_with_http_info(opts)

```ruby
begin
  # Create an invitation
  data, status_code, headers = Clerk::SDK.invitations.create_invitation_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Invitation>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.invitations->create_invitation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_invitation_request** | [**CreateInvitationRequest**](CreateInvitationRequest.md) | Required parameters | [optional] |

### Return type

[**Invitation**](Invitation.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_invitations

> <Array<Invitation>> list_invitations(opts)

List all invitations

Returns all non-revoked invitations for your application, sorted by creation date

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

opts = {
  status: 'pending', # String | Filter invitations based on their status
  query: 'query_example', # String | Filter invitations based on their `email_address` or `id`
  order_by: 'order_by_example', # String | Allows to return organizations in a particular order. At the moment, you can order the returned organizations either by their `name`, `created_at` or `members_count`. In order to specify the direction, you can use the `+/-` symbols prepended in the property to order by. For example, if you want organizations to be returned in descending order according to their `created_at` property, you can use `-created_at`. If you don't use `+` or `-`, then `+` is implied.
  paginated: true, # Boolean | Whether to paginate the results. If true, the results will be paginated. If false, the results will not be paginated.
  limit: 56, # Integer | Applies a limit to the number of results returned. Can be used for paginating the results together with `offset`.
  offset: 56 # Integer | Skip the first `offset` results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with `limit`.
}

begin
  # List all invitations
  result = Clerk::SDK.invitations.list_invitations(opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.invitations->list_invitations: #{e}"
end
```

#### Using the `list_invitations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Invitation>>, Integer, Hash)> list_invitations_with_http_info(opts)

```ruby
begin
  # List all invitations
  data, status_code, headers = Clerk::SDK.invitations.list_invitations_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Invitation>>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.invitations->list_invitations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Filter invitations based on their status | [optional] |
| **query** | **String** | Filter invitations based on their &#x60;email_address&#x60; or &#x60;id&#x60; | [optional] |
| **order_by** | **String** | Allows to return organizations in a particular order. At the moment, you can order the returned organizations either by their &#x60;name&#x60;, &#x60;created_at&#x60; or &#x60;members_count&#x60;. In order to specify the direction, you can use the &#x60;+/-&#x60; symbols prepended in the property to order by. For example, if you want organizations to be returned in descending order according to their &#x60;created_at&#x60; property, you can use &#x60;-created_at&#x60;. If you don&#39;t use &#x60;+&#x60; or &#x60;-&#x60;, then &#x60;+&#x60; is implied. | [optional] |
| **paginated** | **Boolean** | Whether to paginate the results. If true, the results will be paginated. If false, the results will not be paginated. | [optional] |
| **limit** | **Integer** | Applies a limit to the number of results returned. Can be used for paginating the results together with &#x60;offset&#x60;. | [optional][default to 10] |
| **offset** | **Integer** | Skip the first &#x60;offset&#x60; results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with &#x60;limit&#x60;. | [optional][default to 0] |

### Return type

[**Array&lt;Invitation&gt;**](Invitation.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## revoke_invitation

> <RevokeInvitation200Response> revoke_invitation(invitation_id)

Revokes an invitation

Revokes the given invitation. Revoking an invitation will prevent the user from using the invitation link that was sent to them. However, it doesn't prevent the user from signing up if they follow the sign up flow. Only active (i.e. non-revoked) invitations can be revoked.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

invitation_id = 'invitation_id_example' # String | The ID of the invitation to be revoked

begin
  # Revokes an invitation
  result = Clerk::SDK.invitations.revoke_invitation(invitation_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.invitations->revoke_invitation: #{e}"
end
```

#### Using the `revoke_invitation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RevokeInvitation200Response>, Integer, Hash)> revoke_invitation_with_http_info(invitation_id)

```ruby
begin
  # Revokes an invitation
  data, status_code, headers = Clerk::SDK.invitations.revoke_invitation_with_http_info(invitation_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RevokeInvitation200Response>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.invitations->revoke_invitation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invitation_id** | **String** | The ID of the invitation to be revoked |  |

### Return type

[**RevokeInvitation200Response**](RevokeInvitation200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

