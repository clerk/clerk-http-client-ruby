# ClerkHttpClient::CreateMachineTokenRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **machine_id** | **String** | ID of the machine creating the token. Must be be prefixed with &#x60;mch_&#x60;. Must only contain lowercase letters, numbers, and underscores. |  |
| **claims** | **Object** | Claims to include in the JWT | [optional] |
| **expires_in_seconds** | **Integer** | Token lifetime in seconds. Defaults to 30 seconds if not specified. | [optional] |
| **allowed_clock_skew** | **Integer** | Allowed clock skew in seconds. Defaults to 5 seconds if not specified. | [optional][default to 5] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::CreateMachineTokenRequest.new(
  machine_id: null,
  claims: null,
  expires_in_seconds: null,
  allowed_clock_skew: null
)
```

