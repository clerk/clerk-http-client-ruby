# ClerkHttpClient::Passkey

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **object** | **String** | String representing the object&#39;s type. Objects of the same type share the same value.  |  |
| **name** | **String** |  |  |
| **last_used_at** | **Integer** | Unix timestamp of when the passkey was last used.  |  |
| **verification** | [**PasskeyVerification**](PasskeyVerification.md) |  |  |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::Passkey.new(
  id: null,
  object: null,
  name: null,
  last_used_at: null,
  verification: null
)
```

