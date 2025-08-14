# Clerk::SDK.m2m_tokens

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_m2_m_token**](M2MTokensApi.md#create_m2_m_token) | **POST** /m2m_tokens | Create a M2M Token |
| [**get_m2_m_tokens**](M2MTokensApi.md#get_m2_m_tokens) | **GET** /m2m_tokens | Get M2M Tokens |
| [**revoke_m2_m_token**](M2MTokensApi.md#revoke_m2_m_token) | **POST** /m2m_tokens/{m2m_token_id}/revoke | Revoke a M2M Token |
| [**verify_m2_m_token**](M2MTokensApi.md#verify_m2_m_token) | **POST** /m2m_tokens/verify | Verify a M2M Token |


## create_m2_m_token

> <CreateM2MToken201Response> create_m2_m_token(create_m2_m_token_request)

Create a M2M Token

Creates a new M2M Token. Must be authenticated via a Machine Secret Key.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

create_m2_m_token_request = ClerkHttpClient::CreateM2MTokenRequest.new # CreateM2MTokenRequest | 

begin
  # Create a M2M Token
  result = Clerk::SDK.m2m_tokens.create_m2_m_token(create_m2_m_token_request)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.m2m_tokens->create_m2_m_token: #{e}"
end
```

#### Using the `create_m2_m_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateM2MToken201Response>, Integer, Hash)> create_m2_m_token_with_http_info(create_m2_m_token_request)

```ruby
begin
  # Create a M2M Token
  data, status_code, headers = Clerk::SDK.m2m_tokens.create_m2_m_token_with_http_info(create_m2_m_token_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateM2MToken201Response>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.m2m_tokens->create_m2_m_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_m2_m_token_request** | [**CreateM2MTokenRequest**](CreateM2MTokenRequest.md) |  |  |

### Return type

[**CreateM2MToken201Response**](CreateM2MToken201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_m2_m_tokens

> <GetM2MTokens200Response> get_m2_m_tokens(subject, opts)

Get M2M Tokens

Fetches M2M tokens for a specific machine.  This endpoint can be authenticated by either a Machine Secret Key or by a Clerk Secret Key.  - When fetching M2M tokens with a Machine Secret Key, only tokens associated with the authenticated machine can be retrieved. - When fetching M2M tokens with a Clerk Secret Key, tokens for any machine in the instance can be retrieved.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

subject = 'subject_example' # String | 
opts = {
  revoked: true, # Boolean | 
  expired: true, # Boolean | 
  limit: 8.14, # Float | 
  offset: 8.14 # Float | 
}

begin
  # Get M2M Tokens
  result = Clerk::SDK.m2m_tokens.get_m2_m_tokens(subject, opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.m2m_tokens->get_m2_m_tokens: #{e}"
end
```

#### Using the `get_m2_m_tokens_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetM2MTokens200Response>, Integer, Hash)> get_m2_m_tokens_with_http_info(subject, opts)

```ruby
begin
  # Get M2M Tokens
  data, status_code, headers = Clerk::SDK.m2m_tokens.get_m2_m_tokens_with_http_info(subject, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetM2MTokens200Response>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.m2m_tokens->get_m2_m_tokens_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subject** | **String** |  |  |
| **revoked** | **Boolean** |  | [optional][default to false] |
| **expired** | **Boolean** |  | [optional][default to false] |
| **limit** | **Float** |  | [optional][default to 10] |
| **offset** | **Float** |  | [optional][default to 0] |

### Return type

[**GetM2MTokens200Response**](GetM2MTokens200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## revoke_m2_m_token

> <GetM2MTokens200ResponseM2mTokensInner> revoke_m2_m_token(m2m_token_id, revoke_m2_m_token_request)

Revoke a M2M Token

Revokes a M2M Token.  This endpoint can be authenticated by either a Machine Secret Key or by a Clerk Secret Key.  - When revoking a M2M Token with a Machine Secret Key, the token must managed by the Machine associated with the Machine Secret Key. - When revoking a M2M Token with a Clerk Secret Key, any token on the Instance can be revoked.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

m2m_token_id = 'm2m_token_id_example' # String | 
revoke_m2_m_token_request = ClerkHttpClient::RevokeM2MTokenRequest.new # RevokeM2MTokenRequest | 

begin
  # Revoke a M2M Token
  result = Clerk::SDK.m2m_tokens.revoke_m2_m_token(m2m_token_id, revoke_m2_m_token_request)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.m2m_tokens->revoke_m2_m_token: #{e}"
end
```

#### Using the `revoke_m2_m_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetM2MTokens200ResponseM2mTokensInner>, Integer, Hash)> revoke_m2_m_token_with_http_info(m2m_token_id, revoke_m2_m_token_request)

```ruby
begin
  # Revoke a M2M Token
  data, status_code, headers = Clerk::SDK.m2m_tokens.revoke_m2_m_token_with_http_info(m2m_token_id, revoke_m2_m_token_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetM2MTokens200ResponseM2mTokensInner>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.m2m_tokens->revoke_m2_m_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **m2m_token_id** | **String** |  |  |
| **revoke_m2_m_token_request** | [**RevokeM2MTokenRequest**](RevokeM2MTokenRequest.md) |  |  |

### Return type

[**GetM2MTokens200ResponseM2mTokensInner**](GetM2MTokens200ResponseM2mTokensInner.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## verify_m2_m_token

> <GetM2MTokens200ResponseM2mTokensInner> verify_m2_m_token(verify_m2_m_token_request)

Verify a M2M Token

Verifies a M2M Token.  This endpoint can be authenticated by either a Machine Secret Key or by a Clerk Secret Key.  - When verifying a M2M Token with a Machine Secret Key, the token must be granted access to the Machine associated with the Machine Secret Key. - When verifying a M2M Token with a Clerk Secret Key, any token on the Instance can be verified.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

verify_m2_m_token_request = ClerkHttpClient::VerifyM2MTokenRequest.new({token: 'token_example'}) # VerifyM2MTokenRequest | 

begin
  # Verify a M2M Token
  result = Clerk::SDK.m2m_tokens.verify_m2_m_token(verify_m2_m_token_request)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.m2m_tokens->verify_m2_m_token: #{e}"
end
```

#### Using the `verify_m2_m_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetM2MTokens200ResponseM2mTokensInner>, Integer, Hash)> verify_m2_m_token_with_http_info(verify_m2_m_token_request)

```ruby
begin
  # Verify a M2M Token
  data, status_code, headers = Clerk::SDK.m2m_tokens.verify_m2_m_token_with_http_info(verify_m2_m_token_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetM2MTokens200ResponseM2mTokensInner>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.m2m_tokens->verify_m2_m_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **verify_m2_m_token_request** | [**VerifyM2MTokenRequest**](VerifyM2MTokenRequest.md) |  |  |

### Return type

[**GetM2MTokens200ResponseM2mTokensInner**](GetM2MTokens200ResponseM2mTokensInner.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

