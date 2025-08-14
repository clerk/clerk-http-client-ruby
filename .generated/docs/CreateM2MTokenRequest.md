# ClerkHttpClient::CreateM2MTokenRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **seconds_until_expiration** | **Float** |  | [optional] |
| **claims** | **Object** |  | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::CreateM2MTokenRequest.new(
  seconds_until_expiration: null,
  claims: null
)
```

