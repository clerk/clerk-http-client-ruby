# Clerk::SDK.oauth_access_tokens

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**verify_oauth_access_token**](OAuthAccessTokensApi.md#verify_oauth_access_token) | **POST** /oauth_applications/access_tokens/verify | Verify an OAuth Access Token |


## verify_oauth_access_token

> <VerifyOAuthAccessToken200Response> verify_oauth_access_token(verify_oauth_access_token_request)

Verify an OAuth Access Token

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

verify_oauth_access_token_request = ClerkHttpClient::VerifyOAuthAccessTokenRequest.new # VerifyOAuthAccessTokenRequest | 

begin
  # Verify an OAuth Access Token
  result = Clerk::SDK.oauth_access_tokens.verify_oauth_access_token(verify_oauth_access_token_request)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.oauth_access_tokens->verify_oauth_access_token: #{e}"
end
```

#### Using the `verify_oauth_access_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VerifyOAuthAccessToken200Response>, Integer, Hash)> verify_oauth_access_token_with_http_info(verify_oauth_access_token_request)

```ruby
begin
  # Verify an OAuth Access Token
  data, status_code, headers = Clerk::SDK.oauth_access_tokens.verify_oauth_access_token_with_http_info(verify_oauth_access_token_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VerifyOAuthAccessToken200Response>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.oauth_access_tokens->verify_oauth_access_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **verify_oauth_access_token_request** | [**VerifyOAuthAccessTokenRequest**](VerifyOAuthAccessTokenRequest.md) |  |  |

### Return type

[**VerifyOAuthAccessToken200Response**](VerifyOAuthAccessToken200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

