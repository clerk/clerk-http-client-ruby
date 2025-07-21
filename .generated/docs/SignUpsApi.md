# Clerk::SDK.sign_ups

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_sign_up**](SignUpsApi.md#get_sign_up) | **GET** /sign_ups/{id} | Retrieve a sign-up by ID |
| [**update_sign_up**](SignUpsApi.md#update_sign_up) | **PATCH** /sign_ups/{id} | Update a sign-up |


## get_sign_up

> <SignUp> get_sign_up(id)

Retrieve a sign-up by ID

Retrieve the details of the sign-up with the given ID

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

id = 'id_example' # String | The ID of the sign-up to retrieve

begin
  # Retrieve a sign-up by ID
  result = Clerk::SDK.sign_ups.get_sign_up(id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.sign_ups->get_sign_up: #{e}"
end
```

#### Using the `get_sign_up_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SignUp>, Integer, Hash)> get_sign_up_with_http_info(id)

```ruby
begin
  # Retrieve a sign-up by ID
  data, status_code, headers = Clerk::SDK.sign_ups.get_sign_up_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SignUp>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.sign_ups->get_sign_up_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the sign-up to retrieve |  |

### Return type

[**SignUp**](SignUp.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_sign_up

> <SignUp> update_sign_up(id, opts)

Update a sign-up

Update the sign-up with the given ID

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

id = 'id_example' # String | The ID of the sign-up to update
opts = {
  update_sign_up_request: ClerkHttpClient::UpdateSignUpRequest.new # UpdateSignUpRequest | 
}

begin
  # Update a sign-up
  result = Clerk::SDK.sign_ups.update_sign_up(id, opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.sign_ups->update_sign_up: #{e}"
end
```

#### Using the `update_sign_up_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SignUp>, Integer, Hash)> update_sign_up_with_http_info(id, opts)

```ruby
begin
  # Update a sign-up
  data, status_code, headers = Clerk::SDK.sign_ups.update_sign_up_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SignUp>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.sign_ups->update_sign_up_with_http_info: #{e}"
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

