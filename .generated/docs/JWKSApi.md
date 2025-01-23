# ClerkHttpClient::JWKSApi

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get**](JWKSApi.md#get) | **GET** /jwks | Retrieve the JSON Web Key Set of the instance |


## get

> <WellKnownJWKS> get_jwks

Retrieve the JSON Web Key Set of the instance

Retrieve the JSON Web Key Set of the instance

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::JWKSApi.new

begin
  # Retrieve the JSON Web Key Set of the instance
  result = sdk.get
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling JWKSApi->get: #{e}"
end
```

#### Using the `get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WellKnownJWKS>, Integer, Hash)> get_jwks_with_http_info

```ruby
begin
  # Retrieve the JSON Web Key Set of the instance
  data, status_code, headers = sdk.get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WellKnownJWKS>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling JWKSApi->get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**WellKnownJWKS**](WellKnownJWKS.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

