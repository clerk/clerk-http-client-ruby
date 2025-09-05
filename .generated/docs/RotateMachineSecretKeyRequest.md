# ClerkHttpClient::RotateMachineSecretKeyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **previous_token_ttl** | **Integer** | The time in seconds that the previous secret key will remain valid after rotation. This ensures a graceful transition period for updating applications with the new secret key. Set to 0 to immediately expire the previous key. Maximum value is 8 hours (28800 seconds). |  |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::RotateMachineSecretKeyRequest.new(
  previous_token_ttl: null
)
```

