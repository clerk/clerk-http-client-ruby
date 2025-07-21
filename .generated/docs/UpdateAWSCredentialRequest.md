# ClerkHttpClient::UpdateAWSCredentialRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_key_id** | **String** |  | [optional] |
| **user_pool_ids** | **Array&lt;String&gt;** |  | [optional] |
| **secret_access_key** | **String** |  | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::UpdateAWSCredentialRequest.new(
  access_key_id: null,
  user_pool_ids: null,
  secret_access_key: null
)
```

