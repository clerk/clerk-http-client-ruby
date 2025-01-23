# ClerkHttpClient::ActorTokensApi

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create**](ActorTokensApi.md#create) | **POST** /actor_tokens | Create actor token |
| [**revoke**](ActorTokensApi.md#revoke) | **POST** /actor_tokens/{actor_token_id}/revoke | Revoke actor token |


## create

> <ActorToken> create_actor_token(opts)

Create actor token

Create an actor token that can be used to impersonate the given user. The `actor` parameter needs to include at least a \"sub\" key whose value is the ID of the actor (impersonating) user.

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::ActorTokensApi.new
opts = {
  create_actor_token_request: ClerkHttpClient::CreateActorTokenRequest.new({user_id: 'user_id_example', actor: {"sub":"user_2OEpKhcCN1Lat9NQ0G6puh7q5Rb"}}) # CreateActorTokenRequest | 
}

begin
  # Create actor token
  result = sdk.create(opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling ActorTokensApi->create: #{e}"
end
```

#### Using the `create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ActorToken>, Integer, Hash)> create_actor_token_with_http_info(opts)

```ruby
begin
  # Create actor token
  data, status_code, headers = sdk.create_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ActorToken>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling ActorTokensApi->create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_actor_token_request** | [**CreateActorTokenRequest**](CreateActorTokenRequest.md) |  | [optional] |

### Return type

[**ActorToken**](ActorToken.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## revoke

> <ActorToken> revoke_actor_token(actor_token_id)

Revoke actor token

Revokes a pending actor token.

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::ActorTokensApi.new
actor_token_id = 'actor_token_id_example' # String | The ID of the actor token to be revoked.

begin
  # Revoke actor token
  result = sdk.revoke(actor_token_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling ActorTokensApi->revoke: #{e}"
end
```

#### Using the `revoke_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ActorToken>, Integer, Hash)> revoke_actor_token_with_http_info(actor_token_id)

```ruby
begin
  # Revoke actor token
  data, status_code, headers = sdk.revoke_with_http_info(actor_token_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ActorToken>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling ActorTokensApi->revoke_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **actor_token_id** | **String** | The ID of the actor token to be revoked. |  |

### Return type

[**ActorToken**](ActorToken.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

