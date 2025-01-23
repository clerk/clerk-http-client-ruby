# ClerkHttpClient::MiscellaneousApi

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

sdk = ClerkHttpClient::MiscellaneousApi.new
opts = {
  frontend_api: 'frontend_api_example', # String | The Frontend API key of your instance
  publishable_key: 'publishable_key_example' # String | The publishable key of your instance
}

begin
  # Returns the markup for the interstitial page
  sdk.get_public_interstitial(opts)
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling MiscellaneousApi->get_public_interstitial: #{e}"
end
```

#### Using the `get_public_interstitial_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_public_interstitial_with_http_info(opts)

```ruby
begin
  # Returns the markup for the interstitial page
  data, status_code, headers = sdk.get_public_interstitial_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling MiscellaneousApi->get_public_interstitial_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **frontend_api** | **String** | The Frontend API key of your instance | [optional] |
| **publishable_key** | **String** | The publishable key of your instance | [optional] |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

