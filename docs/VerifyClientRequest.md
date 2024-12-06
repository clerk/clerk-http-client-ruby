# ClerkBackend::VerifyClientRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** | A JWT that represents the active client. | [optional] |

## Example

```ruby
require 'clerk-sdk-ruby-backend'

instance = ClerkBackend::VerifyClientRequest.new(
  token: null
)
```

