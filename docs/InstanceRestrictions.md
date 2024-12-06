# ClerkBackend::InstanceRestrictions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | String representing the object&#39;s type. Objects of the same type share the same value. | [optional] |
| **allowlist** | **Boolean** |  | [optional] |
| **blocklist** | **Boolean** |  | [optional] |
| **block_email_subaddresses** | **Boolean** |  | [optional] |
| **ignore_dots_for_gmail_addresses** | **Boolean** |  | [optional] |

## Example

```ruby
require 'clerk-backend'

instance = ClerkBackend::InstanceRestrictions.new(
  object: null,
  allowlist: null,
  blocklist: null,
  block_email_subaddresses: null,
  ignore_dots_for_gmail_addresses: null
)
```

