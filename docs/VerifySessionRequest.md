# ClerkHttpClient::VerifySessionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** | The JWT that is sent via the &#x60;__session&#x60; cookie from your frontend. Note: this JWT must be associated with the supplied session ID. | [optional] |

## Example

```ruby
require 'clerk-http-client-ruby'

instance = ClerkHttpClient::VerifySessionRequest.new(
  token: null
)
```

