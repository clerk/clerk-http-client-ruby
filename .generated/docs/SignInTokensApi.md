# Clerk::SDK.sign_in_tokens

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_sign_in_token**](SignInTokensApi.md#create_sign_in_token) | **POST** /sign_in_tokens | Create sign-in token |
| [**revoke_sign_in_token**](SignInTokensApi.md#revoke_sign_in_token) | **POST** /sign_in_tokens/{sign_in_token_id}/revoke | Revoke the given sign-in token |


## create_sign_in_token

> <SignInToken> create_sign_in_token(opts)

Create sign-in token

Creates a new sign-in token and associates it with the given user. By default, sign-in tokens expire in 30 days. You can optionally supply a different duration in seconds using the `expires_in_seconds` property.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

opts = {
  create_sign_in_token_request: ClerkHttpClient::CreateSignInTokenRequest.new # CreateSignInTokenRequest | 
}

begin
  # Create sign-in token
  result = Clerk::SDK.sign_in_tokens.create_sign_in_token(opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.sign_in_tokens->create_sign_in_token: #{e}"
end
```

#### Using the `create_sign_in_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SignInToken>, Integer, Hash)> create_sign_in_token_with_http_info(opts)

```ruby
begin
  # Create sign-in token
  data, status_code, headers = Clerk::SDK.sign_in_tokens.create_sign_in_token_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SignInToken>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.sign_in_tokens->create_sign_in_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_sign_in_token_request** | [**CreateSignInTokenRequest**](CreateSignInTokenRequest.md) |  | [optional] |

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
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sign_in_token_id = 'sign_in_token_id_example' # String | The ID of the sign-in token to be revoked

begin
  # Revoke the given sign-in token
  result = Clerk::SDK.sign_in_tokens.revoke_sign_in_token(sign_in_token_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.sign_in_tokens->revoke_sign_in_token: #{e}"
end
```

#### Using the `revoke_sign_in_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SignInToken>, Integer, Hash)> revoke_sign_in_token_with_http_info(sign_in_token_id)

```ruby
begin
  # Revoke the given sign-in token
  data, status_code, headers = Clerk::SDK.sign_in_tokens.revoke_sign_in_token_with_http_info(sign_in_token_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SignInToken>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.sign_in_tokens->revoke_sign_in_token_with_http_info: #{e}"
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

