# ClerkHttpClient::PhoneNumber

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **object** | **String** | String representing the object&#39;s type. Objects of the same type share the same value.  |  |
| **phone_number** | **String** |  |  |
| **reserved_for_second_factor** | **Boolean** |  | [optional] |
| **default_second_factor** | **Boolean** |  | [optional] |
| **reserved** | **Boolean** |  |  |
| **verification** | [**PhoneNumberVerification**](PhoneNumberVerification.md) |  |  |
| **linked_to** | [**Array&lt;IdentificationLink&gt;**](IdentificationLink.md) |  |  |
| **backup_codes** | **Array&lt;String&gt;** |  | [optional] |
| **created_at** | **Integer** | Unix timestamp of creation  |  |
| **updated_at** | **Integer** | Unix timestamp of creation  |  |

## Example

```ruby
require 'clerk-http-client-ruby'

instance = ClerkHttpClient::PhoneNumber.new(
  id: null,
  object: null,
  phone_number: null,
  reserved_for_second_factor: null,
  default_second_factor: null,
  reserved: null,
  verification: null,
  linked_to: null,
  backup_codes: null,
  created_at: null,
  updated_at: null
)
```

