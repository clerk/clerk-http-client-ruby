# Clerk::SDK.redirect_urls

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_redirect_url**](RedirectURLsApi.md#create_redirect_url) | **POST** /redirect_urls | Create a redirect URL |
| [**delete_redirect_url**](RedirectURLsApi.md#delete_redirect_url) | **DELETE** /redirect_urls/{id} | Delete a redirect URL |
| [**get_redirect_url**](RedirectURLsApi.md#get_redirect_url) | **GET** /redirect_urls/{id} | Retrieve a redirect URL |
| [**list_redirect_urls**](RedirectURLsApi.md#list_redirect_urls) | **GET** /redirect_urls | List all redirect URLs |


## create_redirect_url

> <RedirectURL> create_redirect_url(opts)

Create a redirect URL

Create a redirect URL

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

opts = {
  create_redirect_url_request: ClerkHttpClient::CreateRedirectURLRequest.new({url: 'url_example'}) # CreateRedirectURLRequest | 
}

begin
  # Create a redirect URL
  result = Clerk::SDK.redirect_urls.create_redirect_url(opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.redirect_urls->create_redirect_url: #{e}"
end
```

#### Using the `create_redirect_url_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RedirectURL>, Integer, Hash)> create_redirect_url_with_http_info(opts)

```ruby
begin
  # Create a redirect URL
  data, status_code, headers = Clerk::SDK.redirect_urls.create_redirect_url_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RedirectURL>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.redirect_urls->create_redirect_url_with_http_info: #{e}"
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


## delete_redirect_url

> <DeletedObject> delete_redirect_url(id)

Delete a redirect URL

Remove the selected redirect URL from the whitelist of the instance

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

id = 'id_example' # String | The ID of the redirect URL

begin
  # Delete a redirect URL
  result = Clerk::SDK.redirect_urls.delete_redirect_url(id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.redirect_urls->delete_redirect_url: #{e}"
end
```

#### Using the `delete_redirect_url_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletedObject>, Integer, Hash)> delete_redirect_url_with_http_info(id)

```ruby
begin
  # Delete a redirect URL
  data, status_code, headers = Clerk::SDK.redirect_urls.delete_redirect_url_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletedObject>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.redirect_urls->delete_redirect_url_with_http_info: #{e}"
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


## get_redirect_url

> <RedirectURL> get_redirect_url(id)

Retrieve a redirect URL

Retrieve the details of the redirect URL with the given ID

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

id = 'id_example' # String | The ID of the redirect URL

begin
  # Retrieve a redirect URL
  result = Clerk::SDK.redirect_urls.get_redirect_url(id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.redirect_urls->get_redirect_url: #{e}"
end
```

#### Using the `get_redirect_url_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RedirectURL>, Integer, Hash)> get_redirect_url_with_http_info(id)

```ruby
begin
  # Retrieve a redirect URL
  data, status_code, headers = Clerk::SDK.redirect_urls.get_redirect_url_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RedirectURL>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.redirect_urls->get_redirect_url_with_http_info: #{e}"
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


## list_redirect_urls

> <Array<RedirectURL>> list_redirect_urls(opts)

List all redirect URLs

Lists all whitelisted redirect_urls for the instance

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

opts = {
  paginated: true, # Boolean | Whether to paginate the results. If true, the results will be paginated. If false, the results will not be paginated.
  limit: 56, # Integer | Applies a limit to the number of results returned. Can be used for paginating the results together with `offset`.
  offset: 56 # Integer | Skip the first `offset` results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with `limit`.
}

begin
  # List all redirect URLs
  result = Clerk::SDK.redirect_urls.list_redirect_urls(opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.redirect_urls->list_redirect_urls: #{e}"
end
```

#### Using the `list_redirect_urls_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RedirectURL>>, Integer, Hash)> list_redirect_urls_with_http_info(opts)

```ruby
begin
  # List all redirect URLs
  data, status_code, headers = Clerk::SDK.redirect_urls.list_redirect_urls_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RedirectURL>>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.redirect_urls->list_redirect_urls_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **paginated** | **Boolean** | Whether to paginate the results. If true, the results will be paginated. If false, the results will not be paginated. | [optional] |
| **limit** | **Integer** | Applies a limit to the number of results returned. Can be used for paginating the results together with &#x60;offset&#x60;. | [optional][default to 10] |
| **offset** | **Integer** | Skip the first &#x60;offset&#x60; results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with &#x60;limit&#x60;. | [optional][default to 0] |

### Return type

[**Array&lt;RedirectURL&gt;**](RedirectURL.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

