# ClerkHttpClient::AllowlistIdentifier

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | String representing the object&#39;s type. Objects of the same type share the same value.  | [optional] |
| **id** | **String** |  | [optional] |
| **invitation_id** | **String** |  | [optional] |
| **identifier** | **String** | An email address or a phone number.  | [optional] |
| **identifier_type** | **String** |  | [optional] |
| **instance_id** | **String** |  | [optional] |
| **created_at** | **Integer** | Unix timestamp of creation  | [optional] |
| **updated_at** | **Integer** | Unix timestamp of last update.  | [optional] |

## Example

```ruby
require 'clerk-http-client-ruby'

instance = ClerkHttpClient::AllowlistIdentifier.new(
  object: null,
  id: null,
  invitation_id: null,
  identifier: null,
  identifier_type: null,
  instance_id: null,
  created_at: null,
  updated_at: null
)
```

