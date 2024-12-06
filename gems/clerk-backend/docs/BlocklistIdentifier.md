# ClerkBackend::BlocklistIdentifier

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | String representing the object&#39;s type. Objects of the same type share the same value.  | [optional] |
| **id** | **String** |  | [optional] |
| **identifier** | **String** | An email address, email domain, phone number or web3 wallet.  | [optional] |
| **identifier_type** | **String** |  | [optional] |
| **instance_id** | **String** |  | [optional] |
| **created_at** | **Integer** | Unix timestamp of creation  | [optional] |
| **updated_at** | **Integer** | Unix timestamp of last update.  | [optional] |

## Example

```ruby
require 'clerk-backend'

instance = ClerkBackend::BlocklistIdentifier.new(
  object: null,
  id: null,
  identifier: null,
  identifier_type: null,
  instance_id: null,
  created_at: null,
  updated_at: null
)
```

