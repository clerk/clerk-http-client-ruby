# ClerkHttpClient::VerifyDomainProxyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain_id** | **String** | The ID of the domain that will be updated. | [optional] |
| **proxy_url** | **String** | The full URL of the proxy which will forward requests to the Clerk Frontend API for this domain. e.g. https://example.com/__clerk | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::VerifyDomainProxyRequest.new(
  domain_id: null,
  proxy_url: null
)
```

