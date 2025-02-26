# ClerkHttpClient::InstanceRestrictions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | String representing the object&#39;s type. Objects of the same type share the same value. |  |
| **allowlist** | **Boolean** |  |  |
| **blocklist** | **Boolean** |  |  |
| **block_email_subaddresses** | **Boolean** |  |  |
| **block_disposable_email_domains** | **Boolean** |  |  |
| **ignore_dots_for_gmail_addresses** | **Boolean** |  |  |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::InstanceRestrictions.new(
  object: null,
  allowlist: null,
  blocklist: null,
  block_email_subaddresses: null,
  block_disposable_email_domains: null,
  ignore_dots_for_gmail_addresses: null
)
```

