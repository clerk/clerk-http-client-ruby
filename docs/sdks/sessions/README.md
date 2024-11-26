# Sessions
(*sessions*)

## Overview

The Session object is an abstraction over an HTTP session.
It models the period of information exchange between a user and the server.
Sessions are created when a user successfully goes through the sign in or sign up flows.
<https://clerk.com/docs/reference/clerkjs/session>

### Available Operations

* [all](#all) - List all sessions
* [find](#find) - Retrieve a session
* [delete](#delete) - Revoke a session
* [create_token](#create_token) - Create a session token from a jwt template

## all

Returns a list of all sessions.
The sessions are returned sorted by creation date, with the newest sessions appearing first.
**Deprecation Notice (2024-01-01):** All parameters were initially considered optional, however
moving forward at least one of `client_id` or `user_id` parameters should be provided.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)


req = ::ClerkSDKBackend::Operations::GetSessionListRequest.new()
    
res = s.sessions.all(req)

if ! res.session_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                | Type                                                                                                     | Required                                                                                                 | Description                                                                                              |
| -------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                | [::ClerkSDKBackend::Operations::GetSessionListRequest](../../models/operations/getsessionlistrequest.md) | :heavy_check_mark:                                                                                       | The request object to use for the request.                                                               |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::GetSessionListResponse)](../../models/operations/getsessionlistresponse.md)**



## find

Retrieve the details of a session

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.sessions.find(session_id="<id>")

if ! res.session.nil?
  # handle response
end

```

### Parameters

| Parameter             | Type                  | Required              | Description           |
| --------------------- | --------------------- | --------------------- | --------------------- |
| `session_id`          | *::String*            | :heavy_check_mark:    | The ID of the session |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::GetSessionResponse)](../../models/operations/getsessionresponse.md)**



## delete

Sets the status of a session as "revoked", which is an unauthenticated state.
In multi-session mode, a revoked session will still be returned along with its client object, however the user will need to sign in again.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.sessions.delete(session_id="<id>")

if ! res.session.nil?
  # handle response
end

```

### Parameters

| Parameter             | Type                  | Required              | Description           |
| --------------------- | --------------------- | --------------------- | --------------------- |
| `session_id`          | *::String*            | :heavy_check_mark:    | The ID of the session |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::RevokeSessionResponse)](../../models/operations/revokesessionresponse.md)**



## create_token

Creates a JSON Web Token(JWT) based on a session and a JWT Template name defined for your instance

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.sessions.create_token(session_id="<id>", template_name="<value>")

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                     | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `session_id`                                                                  | *::String*                                                                    | :heavy_check_mark:                                                            | The ID of the session                                                         |
| `template_name`                                                               | *::String*                                                                    | :heavy_check_mark:                                                            | The name of the JWT Template defined in your instance (e.g. `custom_hasura`). |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::CreateSessionTokenFromTemplateResponse)](../../models/operations/createsessiontokenfromtemplateresponse.md)**

