# ClerkHttpClient::ChangeProductionInstanceDomainRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **home_url** | **String** | The new home URL of the production instance e.g. https://www.example.com | [optional] |
| **is_secondary** | **Boolean** | Whether this is a domain for a secondary app, meaning that any subdomain provided is significant and will be stored as part of the domain. This is useful for supporting multiple apps (one primary and multiple secondaries) on the same root domain (eTLD+1). | [optional] |

## Example

```ruby
require 'clerk-http-client-ruby'

instance = ClerkHttpClient::ChangeProductionInstanceDomainRequest.new(
  home_url: null,
  is_secondary: null
)
```

