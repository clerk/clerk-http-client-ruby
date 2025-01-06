# ClerkHttpClient::UpdateSignUpRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_id** | **String** | The ID of the guest attempting to sign up as used in your external systems or your previous authentication solution. This will be copied to the resulting user when the sign-up is completed. | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::UpdateSignUpRequest.new(
  external_id: null
)
```

