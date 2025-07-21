# ClerkHttpClient::VerifyOAuthAccessToken400ResponseErrorsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** |  |  |
| **long_message** | **String** |  |  |
| **code** | **String** |  |  |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::VerifyOAuthAccessToken400ResponseErrorsInner.new(
  message: Bad Request,
  long_message: Invalid &#39;url_parameter.example&#39;: Failed regex check,
  code: bad_request
)
```

