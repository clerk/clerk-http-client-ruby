# ClerkHttpClient::TestingTokensApi

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create**](TestingTokensApi.md#create) | **POST** /testing_tokens | Retrieve a new testing token |


## create

> <TestingToken> create_testing_token

Retrieve a new testing token

Retrieve a new testing token. Only available for development instances.

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::TestingTokensApi.new

begin
  # Retrieve a new testing token
  result = sdk.create
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling TestingTokensApi->create: #{e}"
end
```

#### Using the `create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TestingToken>, Integer, Hash)> create_testing_token_with_http_info

```ruby
begin
  # Retrieve a new testing token
  data, status_code, headers = sdk.create_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TestingToken>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling TestingTokensApi->create_with_http_info: #{e}"
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

