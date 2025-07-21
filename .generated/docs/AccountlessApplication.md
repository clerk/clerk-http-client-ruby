# ClerkHttpClient::AccountlessApplication

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  |  |
| **publishable_key** | **String** |  |  |
| **secret_key** | **String** |  | [optional] |
| **claim_url** | **String** |  | [optional] |
| **api_keys_url** | **String** |  | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::AccountlessApplication.new(
  object: null,
  publishable_key: null,
  secret_key: null,
  claim_url: null,
  api_keys_url: null
)
```

