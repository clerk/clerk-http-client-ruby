# ClerkBackend::Client

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | String representing the object&#39;s type. Objects of the same type share the same value.  |  |
| **id** | **String** | String representing the identifier of the session.  |  |
| **session_ids** | **Array&lt;String&gt;** |  |  |
| **sessions** | [**Array&lt;Session&gt;**](Session.md) |  |  |
| **sign_in_id** | **String** |  |  |
| **sign_up_id** | **String** |  |  |
| **last_active_session_id** | **String** | Last active session_id.  |  |
| **updated_at** | **Integer** | Unix timestamp of last update.  |  |
| **created_at** | **Integer** | Unix timestamp of creation.  |  |

## Example

```ruby
require 'clerk-backend'

instance = ClerkBackend::Client.new(
  object: null,
  id: null,
  session_ids: null,
  sessions: null,
  sign_in_id: null,
  sign_up_id: null,
  last_active_session_id: null,
  updated_at: null,
  created_at: null
)
```

