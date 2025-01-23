# ClerkHttpClient::RedirectURLsApi

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create**](RedirectURLsApi.md#create) | **POST** /redirect_urls | Create a redirect URL |
| [**delete**](RedirectURLsApi.md#delete) | **DELETE** /redirect_urls/{id} | Delete a redirect URL |
| [**find**](RedirectURLsApi.md#find) | **GET** /redirect_urls/{id} | Retrieve a redirect URL |
| [**all**](RedirectURLsApi.md#all) | **GET** /redirect_urls | List all redirect URLs |


## create

> <RedirectURL> create_redirect_url(opts)

Create a redirect URL

Create a redirect URL

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::RedirectURLsApi.new
opts = {
  create_redirect_url_request: ClerkHttpClient::CreateRedirectURLRequest.new # CreateRedirectURLRequest | 
}

begin
  # Create a redirect URL
  result = sdk.create(opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling RedirectURLsApi->create: #{e}"
end
```

#### Using the `create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RedirectURL>, Integer, Hash)> create_redirect_url_with_http_info(opts)

```ruby
begin
  # Create a redirect URL
  data, status_code, headers = sdk.create_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RedirectURL>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling RedirectURLsApi->create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_redirect_url_request** | [**CreateRedirectURLRequest**](CreateRedirectURLRequest.md) |  | [optional] |

### Return type

[**RedirectURL**](RedirectURL.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete

> <DeletedObject> delete_redirect_url(id)

Delete a redirect URL

Remove the selected redirect URL from the whitelist of the instance

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::RedirectURLsApi.new
id = 'id_example' # String | The ID of the redirect URL

begin
  # Delete a redirect URL
  result = sdk.delete(id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling RedirectURLsApi->delete: #{e}"
end
```

#### Using the `delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletedObject>, Integer, Hash)> delete_redirect_url_with_http_info(id)

```ruby
begin
  # Delete a redirect URL
  data, status_code, headers = sdk.delete_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletedObject>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling RedirectURLsApi->delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the redirect URL |  |

### Return type

[**DeletedObject**](DeletedObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## find

> <RedirectURL> get_redirect_url(id)

Retrieve a redirect URL

Retrieve the details of the redirect URL with the given ID

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::RedirectURLsApi.new
id = 'id_example' # String | The ID of the redirect URL

begin
  # Retrieve a redirect URL
  result = sdk.find(id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling RedirectURLsApi->find: #{e}"
end
```

#### Using the `find_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RedirectURL>, Integer, Hash)> get_redirect_url_with_http_info(id)

```ruby
begin
  # Retrieve a redirect URL
  data, status_code, headers = sdk.find_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RedirectURL>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling RedirectURLsApi->find_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the redirect URL |  |

### Return type

[**RedirectURL**](RedirectURL.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## all

> <Array<RedirectURL>> list_redirect_urls

List all redirect URLs

Lists all whitelisted redirect_urls for the instance

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::RedirectURLsApi.new

begin
  # List all redirect URLs
  result = sdk.all
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling RedirectURLsApi->all: #{e}"
end
```

#### Using the `all_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RedirectURL>>, Integer, Hash)> list_redirect_urls_with_http_info

```ruby
begin
  # List all redirect URLs
  data, status_code, headers = sdk.all_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RedirectURL>>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling RedirectURLsApi->all_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;RedirectURL&gt;**](RedirectURL.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

