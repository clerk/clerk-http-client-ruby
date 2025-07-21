# ClerkHttpClient::RefreshSessionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **expired_token** | **String** | The JWT that is sent via the &#x60;__session&#x60; cookie from your frontend. Note: this JWT must be associated with the supplied session ID. |  |
| **refresh_token** | **String** | The JWT that is sent via the &#x60;__session&#x60; cookie from your frontend. |  |
| **request_origin** | **String** | The origin of the request. |  |
| **request_headers** | **Hash&lt;String, Object&gt;** | The headers of the request. | [optional] |
| **format** | **String** | The format of the response. | [optional][default to &#39;token&#39;] |
| **request_originating_ip** | **String** | The IP address of the request. | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::RefreshSessionRequest.new(
  expired_token: null,
  refresh_token: null,
  request_origin: null,
  request_headers: null,
  format: null,
  request_originating_ip: null
)
```

