# Clerk::SDK.testing_tokens

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_testing_token**](TestingTokensApi.md#create_testing_token) | **POST** /testing_tokens | Retrieve a new testing token |


## create_testing_token

> <TestingToken> create_testing_token

Retrieve a new testing token

Retrieve a new testing token.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end


begin
  # Retrieve a new testing token
  result = Clerk::SDK.testing_tokens.create_testing_token
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.testing_tokens->create_testing_token: #{e}"
end
```

#### Using the `create_testing_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TestingToken>, Integer, Hash)> create_testing_token_with_http_info

```ruby
begin
  # Retrieve a new testing token
  data, status_code, headers = Clerk::SDK.testing_tokens.create_testing_token_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TestingToken>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.testing_tokens->create_testing_token_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**TestingToken**](TestingToken.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

