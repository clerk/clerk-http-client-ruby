# ClerkBackend::EmailAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **object** | **String** | String representing the object&#39;s type. Objects of the same type share the same value.  |  |
| **email_address** | **String** |  |  |
| **reserved** | **Boolean** |  |  |
| **verification** | [**EmailAddressVerification**](EmailAddressVerification.md) |  |  |
| **linked_to** | [**Array&lt;IdentificationLink&gt;**](IdentificationLink.md) |  |  |
| **created_at** | **Integer** | Unix timestamp of creation  |  |
| **updated_at** | **Integer** | Unix timestamp of creation  |  |

## Example

```ruby
require 'clerk-sdk-ruby-backend'

instance = ClerkBackend::EmailAddress.new(
  id: null,
  object: null,
  email_address: null,
  reserved: null,
  verification: null,
  linked_to: null,
  created_at: null,
  updated_at: null
)
```

