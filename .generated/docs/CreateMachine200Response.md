# ClerkHttpClient::CreateMachine200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  |  |
| **id** | **String** | Unique identifier for the machine. |  |
| **name** | **String** | The name of the machine. |  |
| **instance_id** | **String** | The ID of the instance this machine belongs to. |  |
| **created_at** | **Integer** | Unix timestamp of creation. |  |
| **updated_at** | **Integer** | Unix timestamp of last update. |  |
| **default_token_ttl** | **Integer** | The default time-to-live (TTL) in seconds for tokens created by this machine. | [optional][default to 3600] |
| **scoped_machines** | [**Array&lt;MachineWithoutScopedMachines&gt;**](MachineWithoutScopedMachines.md) | Array of machines this machine has access to. |  |
| **secret_key** | **String** | The secret key for the machine, only returned upon creation. | [readonly] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::CreateMachine200Response.new(
  object: null,
  id: null,
  name: null,
  instance_id: null,
  created_at: null,
  updated_at: null,
  default_token_ttl: null,
  scoped_machines: null,
  secret_key: null
)
```

