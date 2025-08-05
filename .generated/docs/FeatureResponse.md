# ClerkHttpClient::FeatureResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | String representing the object&#39;s type. Objects of the same type share the same value. |  |
| **id** | **String** | Unique identifier for the feature. |  |
| **name** | **String** | The name of the feature. |  |
| **description** | **String** | The description of the feature. |  |
| **slug** | **String** | The URL-friendly slug for the feature. |  |
| **avatar_url** | **String** | The URL of the feature&#39;s avatar image. |  |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::FeatureResponse.new(
  object: null,
  id: null,
  name: null,
  description: null,
  slug: null,
  avatar_url: null
)
```

