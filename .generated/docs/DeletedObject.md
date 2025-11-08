# ClerkHttpClient::DeletedObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  |  |
| **id** | **String** |  | [optional] |
| **slug** | **String** |  | [optional] |
| **deleted** | **Boolean** |  |  |
| **external_id** | **String** |  | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::DeletedObject.new(
  object: null,
  id: null,
  slug: null,
  deleted: null,
  external_id: null
)
```

