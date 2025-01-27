# Clerk::SDK.webhooks

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_svix_app**](WebhooksApi.md#create_svix_app) | **POST** /webhooks/svix | Create a Svix app |
| [**delete_svix_app**](WebhooksApi.md#delete_svix_app) | **DELETE** /webhooks/svix | Delete a Svix app |
| [**generate_svix_auth_url**](WebhooksApi.md#generate_svix_auth_url) | **POST** /webhooks/svix_url | Create a Svix Dashboard URL |


## create_svix_app

> <SvixURL> create_svix_app

Create a Svix app

Create a Svix app and associate it with the current instance

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end


begin
  # Create a Svix app
  result = Clerk::SDK.webhooks.create_svix_app
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.webhooks->create_svix_app: #{e}"
end
```

#### Using the `create_svix_app_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SvixURL>, Integer, Hash)> create_svix_app_with_http_info

```ruby
begin
  # Create a Svix app
  data, status_code, headers = Clerk::SDK.webhooks.create_svix_app_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SvixURL>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.webhooks->create_svix_app_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**SvixURL**](SvixURL.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_svix_app

> delete_svix_app

Delete a Svix app

Delete a Svix app and disassociate it from the current instance

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end


begin
  # Delete a Svix app
  Clerk::SDK.webhooks.delete_svix_app
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.webhooks->delete_svix_app: #{e}"
end
```

#### Using the `delete_svix_app_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_svix_app_with_http_info

```ruby
begin
  # Delete a Svix app
  data, status_code, headers = Clerk::SDK.webhooks.delete_svix_app_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.webhooks->delete_svix_app_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## generate_svix_auth_url

> <SvixURL> generate_svix_auth_url

Create a Svix Dashboard URL

Generate a new url for accessing the Svix's management dashboard for that particular instance

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end


begin
  # Create a Svix Dashboard URL
  result = Clerk::SDK.webhooks.generate_svix_auth_url
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.webhooks->generate_svix_auth_url: #{e}"
end
```

#### Using the `generate_svix_auth_url_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SvixURL>, Integer, Hash)> generate_svix_auth_url_with_http_info

```ruby
begin
  # Create a Svix Dashboard URL
  data, status_code, headers = Clerk::SDK.webhooks.generate_svix_auth_url_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SvixURL>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.webhooks->generate_svix_auth_url_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**SvixURL**](SvixURL.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

