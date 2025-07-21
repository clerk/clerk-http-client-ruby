# ClerkHttpClient::CreateAWSCredentialRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_key_id** | **String** | The Access Key ID from AWS |  |
| **secret_access_key** | **String** | The Secret Access Key from AWS. |  |
| **user_pool_ids** | **Array&lt;String&gt;** | The User Pool IDs from AWS. |  |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::CreateAWSCredentialRequest.new(
  access_key_id: null,
  secret_access_key: null,
  user_pool_ids: null
)
```

