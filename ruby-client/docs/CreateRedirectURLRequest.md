# ClerkBackend::CreateRedirectURLRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | The full url value prefixed with &#x60;https://&#x60; or a custom scheme e.g. &#x60;\&quot;https://my-app.com/oauth-callback\&quot;&#x60; or &#x60;\&quot;my-app://oauth-callback\&quot;&#x60; | [optional] |

## Example

```ruby
require 'clerk-backend'

instance = ClerkBackend::CreateRedirectURLRequest.new(
  url: null
)
```

