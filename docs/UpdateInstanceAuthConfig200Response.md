# ClerkBackend::UpdateInstanceAuthConfig200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | String representing the object&#39;s type. Objects of the same type share the same value. | [optional] |
| **id** | **String** |  | [optional] |
| **restricted_to_allowlist** | **Boolean** |  | [optional] |
| **from_email_address** | **String** |  | [optional] |
| **progressive_sign_up** | **Boolean** |  | [optional] |
| **enhanced_email_deliverability** | **Boolean** |  | [optional] |

## Example

```ruby
require 'clerk-sdk-ruby-backend'

instance = ClerkBackend::UpdateInstanceAuthConfig200Response.new(
  object: null,
  id: null,
  restricted_to_allowlist: null,
  from_email_address: null,
  progressive_sign_up: null,
  enhanced_email_deliverability: null
)
```

