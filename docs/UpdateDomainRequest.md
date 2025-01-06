# ClerkHttpClient::UpdateDomainRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The new domain name. For development instances, can contain the port, i.e &#x60;myhostname:3000&#x60;. For production instances, must be a valid FQDN, i.e &#x60;mysite.com&#x60;. Cannot contain protocol scheme. | [optional] |
| **proxy_url** | **String** | The full URL of the proxy that will forward requests to Clerk&#39;s Frontend API. Can only be updated for production instances. | [optional] |
| **is_secondary** | **Boolean** | Whether this is a domain for a secondary app, meaning that any subdomain provided is significant and will be stored as part of the domain. This is useful for supporting multiple apps (one primary and multiple secondaries) on the same root domain (eTLD+1). | [optional] |

## Example

```ruby
require 'clerk-http-client-ruby'

instance = ClerkHttpClient::UpdateDomainRequest.new(
  name: null,
  proxy_url: null,
  is_secondary: null
)
```

