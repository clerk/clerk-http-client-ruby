# ClerkHttpClient::MergeOrganizationMetadataRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_metadata** | **Hash&lt;String, Object&gt;** | Metadata saved on the organization, that is visible to both your frontend and backend. The new object will be merged with the existing value. | [optional] |
| **private_metadata** | **Hash&lt;String, Object&gt;** | Metadata saved on the organization that is only visible to your backend. The new object will be merged with the existing value. | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::MergeOrganizationMetadataRequest.new(
  public_metadata: null,
  private_metadata: null
)
```

