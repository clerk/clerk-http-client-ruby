# ClerkHttpClient::DeleteMachineScope200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | String representing the object&#39;s type. |  |
| **from_machine_id** | **String** | The ID of the machine that had access to the target machine |  |
| **to_machine_id** | **String** | The ID of the machine that was being accessed |  |
| **deleted** | **Boolean** | Whether the machine scope was successfully deleted |  |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::DeleteMachineScope200Response.new(
  object: null,
  from_machine_id: null,
  to_machine_id: null,
  deleted: null
)
```

