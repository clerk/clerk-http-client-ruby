# ClerkBackend::JWTTemplate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  |  |
| **id** | **String** |  |  |
| **name** | **String** |  |  |
| **claims** | **Object** |  |  |
| **lifetime** | **Integer** |  |  |
| **allowed_clock_skew** | **Integer** |  |  |
| **custom_signing_key** | **Boolean** |  | [optional] |
| **signing_algorithm** | **String** |  | [optional] |
| **created_at** | **Integer** | Unix timestamp of creation.  |  |
| **updated_at** | **Integer** | Unix timestamp of last update.  |  |

## Example

```ruby
require 'clerk-backend'

instance = ClerkBackend::JWTTemplate.new(
  object: null,
  id: null,
  name: null,
  claims: null,
  lifetime: null,
  allowed_clock_skew: null,
  custom_signing_key: null,
  signing_algorithm: null,
  created_at: null,
  updated_at: null
)
```

