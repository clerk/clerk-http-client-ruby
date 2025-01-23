# ClerkHttpClient::ProxyChecksApi

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**verify_domain_proxy**](ProxyChecksApi.md#verify_domain_proxy) | **POST** /proxy_checks | Verify the proxy configuration for your domain |


## verify_domain_proxy

> <ProxyCheck> verify_domain_proxy(opts)

Verify the proxy configuration for your domain

This endpoint can be used to validate that a proxy-enabled domain is operational. It tries to verify that the proxy URL provided in the parameters maps to a functional proxy that can reach the Clerk Frontend API.  You can use this endpoint before you set a proxy URL for a domain. This way you can ensure that switching to proxy-based configuration will not lead to downtime for your instance.  The `proxy_url` parameter allows for testing proxy configurations for domains that don't have a proxy URL yet, or operate on a different proxy URL than the one provided. It can also be used to re-validate a domain that is already configured to work with a proxy.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::ProxyChecksApi.new
opts = {
  verify_domain_proxy_request: ClerkHttpClient::VerifyDomainProxyRequest.new # VerifyDomainProxyRequest | 
}

begin
  # Verify the proxy configuration for your domain
  result = sdk.verify_domain_proxy(opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling ProxyChecksApi->verify_domain_proxy: #{e}"
end
```

#### Using the `verify_domain_proxy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProxyCheck>, Integer, Hash)> verify_domain_proxy_with_http_info(opts)

```ruby
begin
  # Verify the proxy configuration for your domain
  data, status_code, headers = sdk.verify_domain_proxy_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProxyCheck>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling ProxyChecksApi->verify_domain_proxy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **verify_domain_proxy_request** | [**VerifyDomainProxyRequest**](VerifyDomainProxyRequest.md) |  | [optional] |

### Return type

[**ProxyCheck**](ProxyCheck.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

