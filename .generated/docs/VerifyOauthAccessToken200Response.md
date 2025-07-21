# ClerkHttpClient::VerifyOAuthAccessToken200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  |  |
| **id** | **String** |  |  |
| **client_id** | **String** |  |  |
| **subject** | **String** |  |  |
| **scopes** | **Array&lt;String&gt;** |  |  |
| **revoked** | **Boolean** |  |  |
| **revocation_reason** | **String** |  |  |
| **expired** | **Boolean** |  |  |
| **expiration** | **Float** |  |  |
| **created_at** | **Float** |  |  |
| **updated_at** | **Float** |  |  |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::VerifyOAuthAccessToken200Response.new(
  object: clerk_idp_oauth_access_token,
  id: oat_0ef5a7a33d87ed87ee7954c845d80450,
  client_id: client_2xhFjEI5X2qWRvtV13BzSj8H6Dk,
  subject: user_2xhFjEI5X2qWRvtV13BzSj8H6Dk,
  scopes: [&quot;read&quot;,&quot;write&quot;],
  revoked: false,
  revocation_reason: Revoked by user,
  expired: false,
  expiration: 1716883200,
  created_at: 1716883200,
  updated_at: 1716883200
)
```

