# ClerkHttpClient::UpdateInstanceRestrictionsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allowlist** | **Boolean** |  | [optional] |
| **blocklist** | **Boolean** |  | [optional] |
| **block_email_subaddresses** | **Boolean** |  | [optional] |
| **block_disposable_email_domains** | **Boolean** |  | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::UpdateInstanceRestrictionsRequest.new(
  allowlist: null,
  blocklist: null,
  block_email_subaddresses: null,
  block_disposable_email_domains: null
)
```

