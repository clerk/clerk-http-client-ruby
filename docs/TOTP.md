# ClerkBackend::TOTP

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  |  |
| **id** | **String** |  |  |
| **secret** | **String** |  |  |
| **uri** | **String** |  |  |
| **verified** | **Boolean** |  |  |
| **backup_codes** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'clerk-backend'

instance = ClerkBackend::TOTP.new(
  object: null,
  id: null,
  secret: null,
  uri: null,
  verified: null,
  backup_codes: null
)
```

