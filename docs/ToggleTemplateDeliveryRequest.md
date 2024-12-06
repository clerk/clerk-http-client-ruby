# ClerkBackend::ToggleTemplateDeliveryRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **delivered_by_clerk** | **Boolean** | Whether Clerk should deliver emails or SMS messages based on the current template | [optional] |

## Example

```ruby
require 'clerk-sdk-ruby-backend'

instance = ClerkBackend::ToggleTemplateDeliveryRequest.new(
  delivered_by_clerk: null
)
```

