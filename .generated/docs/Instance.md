# ClerkHttpClient::Instance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | String representing the object&#39;s type. Objects of the same type share the same value. | [optional] |
| **id** | **String** |  | [optional] |
| **environment_type** | **String** |  | [optional] |
| **allowed_origins** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::Instance.new(
  object: null,
  id: null,
  environment_type: development,
  allowed_origins: [&quot;http://localhost:3000&quot;,&quot;https://some-domain&quot;]
)
```

