# ClerkHttpClient::CreateMachineRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the machine |  |
| **scoped_machines** | **Array&lt;String&gt;** | Array of machine IDs that this machine will have access to. Maximum of 25 scopes per machine. | [optional] |
| **default_token_ttl** | **Integer** | The default time-to-live (TTL) in seconds for tokens created by this machine. Must be at least 1 second. | [optional][default to 3600] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::CreateMachineRequest.new(
  name: null,
  scoped_machines: null,
  default_token_ttl: null
)
```

