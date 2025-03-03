# ClerkHttpClient::OrganizationDomainVerification

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Status of the verification. It can be &#x60;unverified&#x60; or &#x60;verified&#x60; |  |
| **strategy** | **String** | Name of the strategy used to verify the domain |  |
| **attempts** | **Integer** | How many attempts have been made to verify the domain |  |
| **expire_at** | **Integer** | Unix timestamp of when the verification will expire |  |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::OrganizationDomainVerification.new(
  status: null,
  strategy: null,
  attempts: null,
  expire_at: null
)
```

