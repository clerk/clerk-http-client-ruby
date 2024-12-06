# ClerkBackend::SchemasPasskey

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **object** | **String** | String representing the object&#39;s type. Objects of the same type share the same value.  |  |
| **name** | **String** |  |  |
| **last_used_at** | **Integer** | Unix timestamp of when the passkey was last used.  |  |
| **verification** | [**SchemasPasskeyVerification**](SchemasPasskeyVerification.md) |  |  |

## Example

```ruby
require 'clerk-sdk-ruby-backend'

instance = ClerkBackend::SchemasPasskey.new(
  id: null,
  object: null,
  name: null,
  last_used_at: null,
  verification: null
)
```

