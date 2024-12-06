# ClerkBackend::UpdateOrganizationDomainRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enrollment_mode** | **String** | The enrollment_mode for the new domain. This can be &#x60;automatic_invitation&#x60;, &#x60;automatic_suggestion&#x60; or &#x60;manual_invitation&#x60; | [optional] |
| **verified** | **Boolean** | The status of the domain&#39;s verification | [optional] |

## Example

```ruby
require 'clerk-sdk-ruby-backend'

instance = ClerkBackend::UpdateOrganizationDomainRequest.new(
  enrollment_mode: null,
  verified: null
)
```

