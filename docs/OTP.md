# ClerkBackend::OTP

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  |  |
| **strategy** | **String** |  |  |
| **attempts** | **Integer** |  |  |
| **expire_at** | **Integer** |  |  |

## Example

```ruby
require 'clerk-sdk-ruby-backend'

instance = ClerkBackend::OTP.new(
  status: null,
  strategy: null,
  attempts: null,
  expire_at: null
)
```

