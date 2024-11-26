# ActorTokens
(*actor_tokens*)

## Overview

### Available Operations

* [create](#create) - Create actor token
* [delete](#delete) - Revoke actor token

## create

Create an actor token that can be used to impersonate the given user.
The `actor` parameter needs to include at least a "sub" key whose value is the ID of the actor (impersonating) user.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)


req = ::ClerkSDKBackend::Operations::CreateActorTokenRequestBody.new(
  user_id: "<id>",
  actor: ::ClerkSDKBackend::Operations::Actor.new(),
)
    
res = s.actor_tokens.create(req)

if ! res.actor_token.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                            | Type                                                                                                                 | Required                                                                                                             | Description                                                                                                          |
| -------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                            | [::ClerkSDKBackend::Operations::CreateActorTokenRequestBody](../../models/operations/createactortokenrequestbody.md) | :heavy_check_mark:                                                                                                   | The request object to use for the request.                                                                           |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::CreateActorTokenResponse)](../../models/operations/createactortokenresponse.md)**



## delete

Revokes a pending actor token.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.actor_tokens.delete(actor_token_id="<id>")

if ! res.actor_token.nil?
  # handle response
end

```

### Parameters

| Parameter                                | Type                                     | Required                                 | Description                              |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| `actor_token_id`                         | *::String*                               | :heavy_check_mark:                       | The ID of the actor token to be revoked. |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::RevokeActorTokenResponse)](../../models/operations/revokeactortokenresponse.md)**

