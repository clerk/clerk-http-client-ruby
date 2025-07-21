# ClerkHttpClient::Session

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | String representing the object&#39;s type. Objects of the same type share the same value.  |  |
| **id** | **String** |  |  |
| **user_id** | **String** |  |  |
| **client_id** | **String** |  |  |
| **actor** | **Object** |  | [optional] |
| **status** | **String** |  |  |
| **last_active_organization_id** | **String** |  | [optional] |
| **last_active_at** | **Integer** |  |  |
| **latest_activity** | [**SessionActivityResponse**](SessionActivityResponse.md) |  | [optional] |
| **expire_at** | **Integer** | Unix timestamp of expiration.  |  |
| **abandon_at** | **Integer** | Unix timestamp of abandonment.  |  |
| **updated_at** | **Integer** | Unix timestamp of last update.  |  |
| **created_at** | **Integer** | Unix timestamp of creation.  |  |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::Session.new(
  object: null,
  id: null,
  user_id: null,
  client_id: null,
  actor: null,
  status: null,
  last_active_organization_id: null,
  last_active_at: null,
  latest_activity: null,
  expire_at: null,
  abandon_at: null,
  updated_at: null,
  created_at: null
)
```

