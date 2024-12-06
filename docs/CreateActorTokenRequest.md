# ClerkBackend::CreateActorTokenRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The ID of the user being impersonated. |  |
| **actor** | **Object** | The actor payload. It needs to include a sub property which should contain the ID of the actor. This whole payload will be also included in the JWT session token. |  |
| **expires_in_seconds** | **Integer** | Optional parameter to specify the life duration of the actor token in seconds. By default, the duration is 1 hour. | [optional][default to 3600] |
| **session_max_duration_in_seconds** | **Integer** | The maximum duration that the session which will be created by the generated actor token should last. By default, the duration of a session created via an actor token, lasts 30 minutes. | [optional][default to 1800] |

## Example

```ruby
require 'clerk-sdk-ruby-backend'

instance = ClerkBackend::CreateActorTokenRequest.new(
  user_id: null,
  actor: {&quot;sub&quot;:&quot;user_2OEpKhcCN1Lat9NQ0G6puh7q5Rb&quot;},
  expires_in_seconds: null,
  session_max_duration_in_seconds: null
)
```

