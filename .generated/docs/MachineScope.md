# ClerkHttpClient::MachineScope

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  |  |
| **from_machine_id** | **String** | The ID of the machine that has access to the target machine. |  |
| **to_machine_id** | **String** | The ID of the machine that is being accessed. |  |
| **created_at** | **Integer** | Unix timestamp of creation. |  |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::MachineScope.new(
  object: null,
  from_machine_id: null,
  to_machine_id: null,
  created_at: null
)
```

