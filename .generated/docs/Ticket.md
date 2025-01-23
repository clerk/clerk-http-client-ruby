# ClerkHttpClient::Ticket

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  |  |
| **strategy** | **String** |  |  |
| **attempts** | **Integer** |  | [optional] |
| **expire_at** | **Integer** |  | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::Ticket.new(
  status: null,
  strategy: null,
  attempts: null,
  expire_at: null
)
```

