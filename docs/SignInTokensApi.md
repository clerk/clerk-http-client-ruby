# ClerkHttpClient::SignInTokensApi

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_sign_in_token**](SignInTokensApi.md#create_sign_in_token) | **POST** /sign_in_tokens | Create sign-in token |
| [**revoke_sign_in_token**](SignInTokensApi.md#revoke_sign_in_token) | **POST** /sign_in_tokens/{sign_in_token_id}/revoke | Revoke the given sign-in token |


## create_sign_in_token

> <SignInToken> create_sign_in_token(create_sign_in_token_request)

Create sign-in token

Creates a new sign-in token and associates it with the given user. By default, sign-in tokens expire in 30 days. You can optionally supply a different duration in seconds using the `expires_in_seconds` property.

### Examples

```ruby
require 'time'
require 'clerk-http-client'
# setup authorization
ClerkHttpClient.configure do |config|
  # Configure Bearer authorization (sk_<environment>_<secret value>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ClerkHttpClient::SignInTokensApi.new
create_sign_in_token_request = ClerkHttpClient::CreateSignInTokenRequest.new # CreateSignInTokenRequest | 

begin
  # Create sign-in token
  result = api_instance.create_sign_in_token(create_sign_in_token_request)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling SignInTokensApi->create_sign_in_token: #{e}"
end
```

#### Using the create_sign_in_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SignInToken>, Integer, Hash)> create_sign_in_token_with_http_info(create_sign_in_token_request)

```ruby
begin
  # Create sign-in token
  data, status_code, headers = api_instance.create_sign_in_token_with_http_info(create_sign_in_token_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SignInToken>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling SignInTokensApi->create_sign_in_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_sign_in_token_request** | [**CreateSignInTokenRequest**](CreateSignInTokenRequest.md) |  |  |

### Return type

[**SignInToken**](SignInToken.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## revoke_sign_in_token

> <SignInToken> revoke_sign_in_token(sign_in_token_id)

Revoke the given sign-in token

Revokes a pending sign-in token

### Examples

```ruby
require 'time'
require 'clerk-http-client'
# setup authorization
ClerkHttpClient.configure do |config|
  # Configure Bearer authorization (sk_<environment>_<secret value>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ClerkHttpClient::SignInTokensApi.new
sign_in_token_id = 'sign_in_token_id_example' # String | The ID of the sign-in token to be revoked

begin
  # Revoke the given sign-in token
  result = api_instance.revoke_sign_in_token(sign_in_token_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling SignInTokensApi->revoke_sign_in_token: #{e}"
end
```

#### Using the revoke_sign_in_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SignInToken>, Integer, Hash)> revoke_sign_in_token_with_http_info(sign_in_token_id)

```ruby
begin
  # Revoke the given sign-in token
  data, status_code, headers = api_instance.revoke_sign_in_token_with_http_info(sign_in_token_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SignInToken>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling SignInTokensApi->revoke_sign_in_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sign_in_token_id** | **String** | The ID of the sign-in token to be revoked |  |

### Return type

[**SignInToken**](SignInToken.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

