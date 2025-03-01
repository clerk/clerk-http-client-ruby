# ClerkHttpClient::CreateSignInTokenRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The ID of the user that can use the newly created sign in token |  |
| **expires_in_seconds** | **Integer** | Optional parameter to specify the life duration of the sign in token in seconds. By default, the duration is 30 days. | [optional][default to 2592000] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::CreateSignInTokenRequest.new(
  user_id: null,
  expires_in_seconds: null
)
```

