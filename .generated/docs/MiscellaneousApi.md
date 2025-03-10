# Clerk::SDK.miscellaneous

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_public_interstitial**](MiscellaneousApi.md#get_public_interstitial) | **GET** /public/interstitial | Returns the markup for the interstitial page |


## get_public_interstitial

> get_public_interstitial(opts)

Returns the markup for the interstitial page

The Clerk interstitial endpoint serves an html page that loads clerk.js in order to check the user's authentication state. It is used by Clerk SDKs when the user's authentication state cannot be immediately determined.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

opts = {
  frontend_api: 'frontend_api_example', # String | Please use `frontend_api` instead
  frontend_api2: 'frontend_api_example', # String | The Frontend API key of your instance
  publishable_key: 'publishable_key_example', # String | The publishable key of your instance
  proxy_url: 'proxy_url_example', # String | The proxy URL of your instance
  domain: 'domain_example', # String | The domain of your instance
  sign_in_url: 'sign_in_url_example', # String | The sign in URL of your instance
  use_domain_for_script: true # Boolean | Whether to use the domain for the script URL
}

begin
  # Returns the markup for the interstitial page
  Clerk::SDK.miscellaneous.get_public_interstitial(opts)
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.miscellaneous->get_public_interstitial: #{e}"
end
```

#### Using the `get_public_interstitial_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_public_interstitial_with_http_info(opts)

```ruby
begin
  # Returns the markup for the interstitial page
  data, status_code, headers = Clerk::SDK.miscellaneous.get_public_interstitial_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.miscellaneous->get_public_interstitial_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **frontend_api** | **String** | Please use &#x60;frontend_api&#x60; instead | [optional] |
| **frontend_api2** | **String** | The Frontend API key of your instance | [optional] |
| **publishable_key** | **String** | The publishable key of your instance | [optional] |
| **proxy_url** | **String** | The proxy URL of your instance | [optional] |
| **domain** | **String** | The domain of your instance | [optional] |
| **sign_in_url** | **String** | The sign in URL of your instance | [optional] |
| **use_domain_for_script** | **Boolean** | Whether to use the domain for the script URL | [optional] |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

