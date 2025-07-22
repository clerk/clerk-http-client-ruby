# ClerkHttpClient::UpdateMachineRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the machine | [optional] |
| **default_token_ttl** | **Integer** | The default time-to-live (TTL) in seconds for tokens created by this machine. Must be at least 1 second. | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::UpdateMachineRequest.new(
  name: null,
  default_token_ttl: null
)
```

