# ClerkBackend::JWKSApi

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_jwks**](JWKSApi.md#get_jwks) | **GET** /jwks | Retrieve the JSON Web Key Set of the instance |


## get_jwks

> <WellKnownJWKS> get_jwks

Retrieve the JSON Web Key Set of the instance

Retrieve the JSON Web Key Set of the instance

### Examples

```ruby
require 'time'
require 'clerk-backend'
# setup authorization
ClerkBackend.configure do |config|
  # Configure Bearer authorization (sk_<environment>_<secret value>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ClerkBackend::JWKSApi.new

begin
  # Retrieve the JSON Web Key Set of the instance
  result = api_instance.get_jwks
  p result
rescue ClerkBackend::ApiError => e
  puts "Error when calling JWKSApi->get_jwks: #{e}"
end
```

#### Using the get_jwks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WellKnownJWKS>, Integer, Hash)> get_jwks_with_http_info

```ruby
begin
  # Retrieve the JSON Web Key Set of the instance
  data, status_code, headers = api_instance.get_jwks_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WellKnownJWKS>
rescue ClerkBackend::ApiError => e
  puts "Error when calling JWKSApi->get_jwks_with_http_info: #{e}"
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

