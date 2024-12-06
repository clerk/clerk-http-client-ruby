# ClerkBackend::CreateOrganizationDomainRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the new domain | [optional] |
| **enrollment_mode** | **String** | The enrollment_mode for the new domain. This can be &#x60;automatic_invitation&#x60;, &#x60;automatic_suggestion&#x60; or &#x60;manual_invitation&#x60; | [optional] |
| **verified** | **Boolean** | The status of domain&#39;s verification. Defaults to true | [optional] |

## Example

```ruby
require 'clerk-sdk-ruby-backend'

instance = ClerkBackend::CreateOrganizationDomainRequest.new(
  name: null,
  enrollment_mode: null,
  verified: null
)
```

