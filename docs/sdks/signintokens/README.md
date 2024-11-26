# SignInTokens
(*sign_in_tokens*)

## Overview

### Available Operations

* [create](#create) - Create sign-in token
* [delete](#delete) - Revoke the given sign-in token

## create

Creates a new sign-in token and associates it with the given user.
By default, sign-in tokens expire in 30 days.
You can optionally supply a different duration in seconds using the `expires_in_seconds` property.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)


req = ::ClerkSDKBackend::Operations::CreateSignInTokenRequestBody.new()
    
res = s.sign_in_tokens.create(req)

if ! res.sign_in_token.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                              | Type                                                                                                                   | Required                                                                                                               | Description                                                                                                            |
| ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                              | [::ClerkSDKBackend::Operations::CreateSignInTokenRequestBody](../../models/operations/createsignintokenrequestbody.md) | :heavy_check_mark:                                                                                                     | The request object to use for the request.                                                                             |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::CreateSignInTokenResponse)](../../models/operations/createsignintokenresponse.md)**



## delete

Revokes a pending sign-in token

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.sign_in_tokens.delete(sign_in_token_id="<id>")

if ! res.sign_in_token.nil?
  # handle response
end

```

### Parameters

| Parameter                                 | Type                                      | Required                                  | Description                               |
| ----------------------------------------- | ----------------------------------------- | ----------------------------------------- | ----------------------------------------- |
| `sign_in_token_id`                        | *::String*                                | :heavy_check_mark:                        | The ID of the sign-in token to be revoked |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::RevokeSignInTokenResponse)](../../models/operations/revokesignintokenresponse.md)**

