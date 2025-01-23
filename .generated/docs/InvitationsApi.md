# ClerkHttpClient::InvitationsApi

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create**](InvitationsApi.md#create) | **POST** /invitations | Create an invitation |
| [**all**](InvitationsApi.md#all) | **GET** /invitations | List all invitations |
| [**revoke**](InvitationsApi.md#revoke) | **POST** /invitations/{invitation_id}/revoke | Revokes an invitation |


## create

> <Invitation> create_invitation(opts)

Create an invitation

Creates a new invitation for the given email address and sends the invitation email. Keep in mind that you cannot create an invitation if there is already one for the given email address. Also, trying to create an invitation for an email address that already exists in your application will result to an error.

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::InvitationsApi.new
opts = {
  create_invitation_request: ClerkHttpClient::CreateInvitationRequest.new({email_address: 'email_address_example'}) # CreateInvitationRequest | Required parameters
}

begin
  # Create an invitation
  result = sdk.create(opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling InvitationsApi->create: #{e}"
end
```

#### Using the `create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Invitation>, Integer, Hash)> create_invitation_with_http_info(opts)

```ruby
begin
  # Create an invitation
  data, status_code, headers = sdk.create_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Invitation>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling InvitationsApi->create_with_http_info: #{e}"
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


## all

> <Array<Invitation>> list_invitations(opts)

List all invitations

Returns all non-revoked invitations for your application, sorted by creation date

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::InvitationsApi.new
opts = {
  limit: 8.14, # Float | Applies a limit to the number of results returned. Can be used for paginating the results together with `offset`.
  offset: 8.14, # Float | Skip the first `offset` results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with `limit`.
  status: 'pending' # String | Filter invitations based on their status
}

begin
  # List all invitations
  result = sdk.all(opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling InvitationsApi->all: #{e}"
end
```

#### Using the `all_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Invitation>>, Integer, Hash)> list_invitations_with_http_info(opts)

```ruby
begin
  # List all invitations
  data, status_code, headers = sdk.all_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Invitation>>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling InvitationsApi->all_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Float** | Applies a limit to the number of results returned. Can be used for paginating the results together with &#x60;offset&#x60;. | [optional][default to 10] |
| **offset** | **Float** | Skip the first &#x60;offset&#x60; results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with &#x60;limit&#x60;. | [optional][default to 0] |
| **status** | **String** | Filter invitations based on their status | [optional] |

### Return type

[**Array&lt;Invitation&gt;**](Invitation.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## revoke

> <RevokeInvitation200Response> revoke_invitation(invitation_id)

Revokes an invitation

Revokes the given invitation. Revoking an invitation will prevent the user from using the invitation link that was sent to them. However, it doesn't prevent the user from signing up if they follow the sign up flow. Only active (i.e. non-revoked) invitations can be revoked.

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::InvitationsApi.new
invitation_id = 'invitation_id_example' # String | The ID of the invitation to be revoked

begin
  # Revokes an invitation
  result = sdk.revoke(invitation_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling InvitationsApi->revoke: #{e}"
end
```

#### Using the `revoke_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RevokeInvitation200Response>, Integer, Hash)> revoke_invitation_with_http_info(invitation_id)

```ruby
begin
  # Revokes an invitation
  data, status_code, headers = sdk.revoke_with_http_info(invitation_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RevokeInvitation200Response>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling InvitationsApi->revoke_with_http_info: #{e}"
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

