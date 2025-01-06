# ClerkHttpClient::UpdateUserMetadataRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_metadata** | **Hash&lt;String, Object&gt;** | Metadata saved on the user, that is visible to both your frontend and backend. The new object will be merged with the existing value. | [optional] |
| **private_metadata** | **Hash&lt;String, Object&gt;** | Metadata saved on the user that is only visible to your backend. The new object will be merged with the existing value. | [optional] |
| **unsafe_metadata** | **Hash&lt;String, Object&gt;** | Metadata saved on the user, that can be updated from both the Frontend and Backend APIs. The new object will be merged with the existing value.  Note: Since this data can be modified from the frontend, it is not guaranteed to be safe. | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::UpdateUserMetadataRequest.new(
  public_metadata: null,
  private_metadata: null,
  unsafe_metadata: null
)
```

