# ClerkBackend::ClerkError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** |  |  |
| **long_message** | **String** |  |  |
| **code** | **String** |  |  |
| **meta** | **Object** |  | [optional] |
| **clerk_trace_id** | **String** |  | [optional] |

## Example

```ruby
require 'clerk-sdk-ruby-backend'

instance = ClerkBackend::ClerkError.new(
  message: null,
  long_message: null,
  code: null,
  meta: null,
  clerk_trace_id: null
)
```

