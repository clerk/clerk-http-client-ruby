# ClerkHttpClient::Machine

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  |  |
| **id** | **String** | Unique identifier for the machine. |  |
| **name** | **String** | The name of the machine. |  |
| **instance_id** | **String** | The ID of the instance this machine belongs to. |  |
| **created_at** | **Integer** | Unix timestamp of creation. |  |
| **updated_at** | **Integer** | Unix timestamp of last update. |  |
| **scoped_machines** | [**Array&lt;MachineWithoutScopedMachines&gt;**](MachineWithoutScopedMachines.md) | Array of machines this machine has access to. |  |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::Machine.new(
  object: null,
  id: null,
  name: null,
  instance_id: null,
  created_at: null,
  updated_at: null,
  scoped_machines: null
)
```

