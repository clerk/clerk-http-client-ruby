# Clerk::SDK.accountless_applications

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**complete_accountless_application**](AccountlessApplicationsApi.md#complete_accountless_application) | **POST** /accountless_applications/complete | Complete an accountless application [EXPERIMENTAL] |
| [**create_accountless_application**](AccountlessApplicationsApi.md#create_accountless_application) | **POST** /accountless_applications | Create an accountless application [EXPERIMENTAL] |


## complete_accountless_application

> <AccountlessApplication> complete_accountless_application

Complete an accountless application [EXPERIMENTAL]

Completes an accountless application. [EXPERIMENTAL]

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end


begin
  # Complete an accountless application [EXPERIMENTAL]
  result = Clerk::SDK.accountless_applications.complete_accountless_application
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.accountless_applications->complete_accountless_application: #{e}"
end
```

#### Using the `complete_accountless_application_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountlessApplication>, Integer, Hash)> complete_accountless_application_with_http_info

```ruby
begin
  # Complete an accountless application [EXPERIMENTAL]
  data, status_code, headers = Clerk::SDK.accountless_applications.complete_accountless_application_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountlessApplication>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.accountless_applications->complete_accountless_application_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AccountlessApplication**](AccountlessApplication.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_accountless_application

> <AccountlessApplication> create_accountless_application

Create an accountless application [EXPERIMENTAL]

Creates a new accountless application. [EXPERIMENTAL]

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end


begin
  # Create an accountless application [EXPERIMENTAL]
  result = Clerk::SDK.accountless_applications.create_accountless_application
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.accountless_applications->create_accountless_application: #{e}"
end
```

#### Using the `create_accountless_application_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountlessApplication>, Integer, Hash)> create_accountless_application_with_http_info

```ruby
begin
  # Create an accountless application [EXPERIMENTAL]
  data, status_code, headers = Clerk::SDK.accountless_applications.create_accountless_application_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountlessApplication>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.accountless_applications->create_accountless_application_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AccountlessApplication**](AccountlessApplication.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

