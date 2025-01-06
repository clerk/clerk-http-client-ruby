# ClerkHttpClient::ActorToken

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  |  |
| **id** | **String** |  |  |
| **status** | **String** |  |  |
| **user_id** | **String** |  |  |
| **actor** | **Object** |  |  |
| **token** | **String** |  | [optional] |
| **url** | **String** |  | [optional] |
| **created_at** | **Integer** | Unix timestamp of creation.  |  |
| **updated_at** | **Integer** | Unix timestamp of last update.  |  |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::ActorToken.new(
  object: null,
  id: null,
  status: null,
  user_id: null,
  actor: null,
  token: null,
  url: null,
  created_at: null,
  updated_at: null
)
```

