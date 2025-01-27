# Clerk::SDK.jwks

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_jwks**](JWKSApi.md#get_jwks) | **GET** /jwks | Retrieve the JSON Web Key Set of the instance |


## get_jwks

> <JWKS> get_jwks

Retrieve the JSON Web Key Set of the instance

Retrieve the JSON Web Key Set of the instance

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end


begin
  # Retrieve the JSON Web Key Set of the instance
  result = Clerk::SDK.jwks.get_jwks
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.jwks->get_jwks: #{e}"
end
```

#### Using the `get_jwks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JWKS>, Integer, Hash)> get_jwks_with_http_info

```ruby
begin
  # Retrieve the JSON Web Key Set of the instance
  data, status_code, headers = Clerk::SDK.jwks.get_jwks_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JWKS>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.jwks->get_jwks_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**JWKS**](JWKS.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

