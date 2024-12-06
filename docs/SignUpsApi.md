# ClerkBackend::SignUpsApi

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**update_sign_up**](SignUpsApi.md#update_sign_up) | **PATCH** /sign_ups/{id} | Update a sign-up |


## update_sign_up

> <SignUp> update_sign_up(id, opts)

Update a sign-up

Update the sign-up with the given ID

### Examples

```ruby
require 'time'
require 'clerk-sdk-ruby-backend'
# setup authorization
ClerkBackend.configure do |config|
  # Configure Bearer authorization (sk_<environment>_<secret value>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ClerkBackend::SignUpsApi.new
id = 'id_example' # String | The ID of the sign-up to update
opts = {
  update_sign_up_request: ClerkBackend::UpdateSignUpRequest.new # UpdateSignUpRequest | 
}

begin
  # Update a sign-up
  result = api_instance.update_sign_up(id, opts)
  p result
rescue ClerkBackend::ApiError => e
  puts "Error when calling SignUpsApi->update_sign_up: #{e}"
end
```

#### Using the update_sign_up_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SignUp>, Integer, Hash)> update_sign_up_with_http_info(id, opts)

```ruby
begin
  # Update a sign-up
  data, status_code, headers = api_instance.update_sign_up_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SignUp>
rescue ClerkBackend::ApiError => e
  puts "Error when calling SignUpsApi->update_sign_up_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the sign-up to update |  |
| **update_sign_up_request** | [**UpdateSignUpRequest**](UpdateSignUpRequest.md) |  | [optional] |

### Return type

[**SignUp**](SignUp.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

