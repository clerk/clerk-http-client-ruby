# ClerkHttpClient::UpdateProductionInstanceDomainRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **home_url** | **String** | The new home URL of the production instance e.g. https://www.example.com | [optional] |
| **is_secondary** | **Boolean** | Whether the domain is a secondary app. | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::UpdateProductionInstanceDomainRequest.new(
  home_url: null,
  is_secondary: null
)
```

