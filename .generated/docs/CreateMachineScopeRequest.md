# ClerkHttpClient::CreateMachineScopeRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **to_machine_id** | **String** | The ID of the machine that will be scoped to the current machine |  |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::CreateMachineScopeRequest.new(
  to_machine_id: null
)
```

