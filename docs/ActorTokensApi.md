# ClerkHttpClient::ActorTokensApi

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_actor_token**](ActorTokensApi.md#create_actor_token) | **POST** /actor_tokens | Create actor token |
| [**revoke_actor_token**](ActorTokensApi.md#revoke_actor_token) | **POST** /actor_tokens/{actor_token_id}/revoke | Revoke actor token |


## create_actor_token

> <ActorToken> create_actor_token(create_actor_token_request)

Create actor token

Create an actor token that can be used to impersonate the given user. The `actor` parameter needs to include at least a \"sub\" key whose value is the ID of the actor (impersonating) user.

### Examples

```ruby
require 'time'
require 'clerk-http-client-ruby'
# setup authorization
ClerkHttpClient.configure do |config|
  # Configure Bearer authorization (sk_<environment>_<secret value>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ClerkHttpClient::ActorTokensApi.new
create_actor_token_request = ClerkHttpClient::CreateActorTokenRequest.new({user_id: 'user_id_example', actor: {"sub":"user_2OEpKhcCN1Lat9NQ0G6puh7q5Rb"}}) # CreateActorTokenRequest | 

begin
  # Create actor token
  result = api_instance.create_actor_token(create_actor_token_request)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling ActorTokensApi->create_actor_token: #{e}"
end
```

#### Using the create_actor_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ActorToken>, Integer, Hash)> create_actor_token_with_http_info(create_actor_token_request)

```ruby
begin
  # Create actor token
  data, status_code, headers = api_instance.create_actor_token_with_http_info(create_actor_token_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ActorToken>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling ActorTokensApi->create_actor_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_actor_token_request** | [**CreateActorTokenRequest**](CreateActorTokenRequest.md) |  |  |

### Return type

[**ActorToken**](ActorToken.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## revoke_actor_token

> <ActorToken> revoke_actor_token(actor_token_id)

Revoke actor token

Revokes a pending actor token.

### Examples

```ruby
require 'time'
require 'clerk-http-client-ruby'
# setup authorization
ClerkHttpClient.configure do |config|
  # Configure Bearer authorization (sk_<environment>_<secret value>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ClerkHttpClient::ActorTokensApi.new
actor_token_id = 'actor_token_id_example' # String | The ID of the actor token to be revoked.

begin
  # Revoke actor token
  result = api_instance.revoke_actor_token(actor_token_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling ActorTokensApi->revoke_actor_token: #{e}"
end
```

#### Using the revoke_actor_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ActorToken>, Integer, Hash)> revoke_actor_token_with_http_info(actor_token_id)

```ruby
begin
  # Revoke actor token
  data, status_code, headers = api_instance.revoke_actor_token_with_http_info(actor_token_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ActorToken>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling ActorTokensApi->revoke_actor_token_with_http_info: #{e}"
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

