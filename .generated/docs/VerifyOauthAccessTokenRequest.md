# ClerkHttpClient::VerifyOAuthAccessTokenRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_token** | **String** | The access token to verify. | [optional] |
| **secret** | **String** | The access token to verify. This is deprecated, use &#x60;access_token&#x60; instead. | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::VerifyOAuthAccessTokenRequest.new(
  access_token: XXXXXXXXXXXXXX,
  secret: XXXXXXXXXXXXXX
)
```

