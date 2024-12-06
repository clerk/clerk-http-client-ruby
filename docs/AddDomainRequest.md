# ClerkBackend::AddDomainRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The new domain name. Can contain the port for development instances. |  |
| **is_satellite** | **Boolean** | Marks the new domain as satellite. Only &#x60;true&#x60; is accepted at the moment. |  |
| **proxy_url** | **String** | The full URL of the proxy which will forward requests to the Clerk Frontend API for this domain. Applicable only to production instances. | [optional] |

## Example

```ruby
require 'clerk-sdk-ruby-backend'

instance = ClerkBackend::AddDomainRequest.new(
  name: null,
  is_satellite: null,
  proxy_url: null
)
```

