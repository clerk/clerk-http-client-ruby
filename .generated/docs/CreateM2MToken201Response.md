# ClerkHttpClient::CreateM2MToken201Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  |  |
| **id** | **String** |  |  |
| **subject** | **String** |  |  |
| **claims** | **Object** |  | [optional] |
| **scopes** | **Array&lt;String&gt;** |  | [optional] |
| **token** | **String** |  |  |
| **revoked** | **Boolean** |  |  |
| **revocation_reason** | **String** |  |  |
| **expired** | **Boolean** |  |  |
| **expiration** | **Float** |  |  |
| **last_used_at** | **Float** |  |  |
| **created_at** | **Float** |  |  |
| **updated_at** | **Float** |  |  |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::CreateM2MToken201Response.new(
  object: null,
  id: mt_f7f0ba8c3b4843ce7d85fcdd5e71853e,
  subject: mch_2xhFjEI5X2qWRvtV13BzSj8H6Dk,
  claims: {&quot;important_metadata&quot;:&quot;Some useful data&quot;},
  scopes: [&quot;mch_2xhFjEI5X2qWRvtV13BzSj8H6Dk&quot;,&quot;mch_2yGkLpQ7Y3rXSwtU24CzTk9I7Em&quot;],
  token: mt_XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX,
  revoked: false,
  revocation_reason: Revoked by user,
  expired: false,
  expiration: 1716883200,
  last_used_at: 1716883200,
  created_at: 1716883200,
  updated_at: 1716883200
)
```

