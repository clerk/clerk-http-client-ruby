# ClerkBackend::UpdateOrganizationMembershipMetadataRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_metadata** | **Object** | Metadata saved on the organization membership, that is visible to both your frontend and backend. The new object will be merged with the existing value. | [optional] |
| **private_metadata** | **Object** | Metadata saved on the organization membership that is only visible to your backend. The new object will be merged with the existing value. | [optional] |

## Example

```ruby
require 'clerk-backend'

instance = ClerkBackend::UpdateOrganizationMembershipMetadataRequest.new(
  public_metadata: null,
  private_metadata: null
)
```

