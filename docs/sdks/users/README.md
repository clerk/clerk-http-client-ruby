# Users
(*users*)

## Overview

The user object represents a user that has successfully signed up to your application.
<https://clerk.com/docs/reference/clerkjs/user>

### Available Operations

* [all](#all) - List all users
* [create](#create) - Create a new user
* [count](#count) - Count users
* [find](#find) - Retrieve a user
* [update](#update) - Update a user
* [delete](#delete) - Delete a user
* [ban](#ban) - Ban a user
* [unban](#unban) - Unban a user
* [lock](#lock) - Lock a user
* [unlock](#unlock) - Unlock a user
* [set_profile_image](#set_profile_image) - Set user profile image
* [delete_profile_image](#delete_profile_image) - Delete user profile image
* [update_metadata](#update_metadata) - Merge and update a user's metadata
* [oauth_access_token](#oauth_access_token) - Retrieve the OAuth access token of a user
* [organization_memberships](#organization_memberships) - Retrieve all memberships for a user
* [organization_invitations](#organization_invitations) - Retrieve all invitations for a user
* [verify_password](#verify_password) - Verify the password of a user
* [verify_totp](#verify_totp) - Verify a TOTP or backup code for a user
* [disable_mfa](#disable_mfa) - Disable a user's MFA methods
* [delete_backup_code](#delete_backup_code) - Disable all user's Backup codes
* [delete_passkey](#delete_passkey) - Delete a user passkey
* [delete_web3_wallet](#delete_web3_wallet) - Delete a user web3 wallet
* [create_totp](#create_totp) - Create a TOTP for a user
* [delete_totp](#delete_totp) - Delete all the user's TOTPs
* [delete_external_account](#delete_external_account) - Delete External Account

## all

Returns a list of all users.
The users are returned sorted by creation date, with the newest users appearing first.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)


req = ::ClerkSDKBackend::Operations::GetUserListRequest.new(
  last_active_at_since: 1700690400000,
)
    
res = s.users.all(req)

if ! res.user_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                          | Type                                                                                               | Required                                                                                           | Description                                                                                        |
| -------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- |
| `request`                                                                                          | [::ClerkSDKBackend::Operations::GetUserListRequest](../../models/operations/getuserlistrequest.md) | :heavy_check_mark:                                                                                 | The request object to use for the request.                                                         |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::GetUserListResponse)](../../models/operations/getuserlistresponse.md)**



## create

Creates a new user. Your user management settings determine how you should setup your user model.

Any email address and phone number created using this method will be marked as verified.

Note: If you are performing a migration, check out our guide on [zero downtime migrations](https://clerk.com/docs/deployments/migrate-overview).

A rate limit rule of 20 requests per 10 seconds is applied to this endpoint.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)


req = ::ClerkSDKBackend::Operations::CreateUserRequestBody.new()
    
res = s.users.create(req)

if ! res.user.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                | Type                                                                                                     | Required                                                                                                 | Description                                                                                              |
| -------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                | [::ClerkSDKBackend::Operations::CreateUserRequestBody](../../models/operations/createuserrequestbody.md) | :heavy_check_mark:                                                                                       | The request object to use for the request.                                                               |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::CreateUserResponse)](../../models/operations/createuserresponse.md)**



## count

Returns a total count of all users that match the given filtering criteria.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)


req = ::ClerkSDKBackend::Operations::GetUsersCountRequest.new()
    
res = s.users.count(req)

if ! res.total_count.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                              | Type                                                                                                   | Required                                                                                               | Description                                                                                            |
| ------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------ |
| `request`                                                                                              | [::ClerkSDKBackend::Operations::GetUsersCountRequest](../../models/operations/getuserscountrequest.md) | :heavy_check_mark:                                                                                     | The request object to use for the request.                                                             |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::GetUsersCountResponse)](../../models/operations/getuserscountresponse.md)**



## find

Retrieve the details of a user

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.users.find(user_id="<id>")

if ! res.user.nil?
  # handle response
end

```

### Parameters

| Parameter                      | Type                           | Required                       | Description                    |
| ------------------------------ | ------------------------------ | ------------------------------ | ------------------------------ |
| `user_id`                      | *::String*                     | :heavy_check_mark:             | The ID of the user to retrieve |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::GetUserResponse)](../../models/operations/getuserresponse.md)**



## update

Update a user's attributes.

You can set the user's primary contact identifiers (email address and phone numbers) by updating the `primary_email_address_id` and `primary_phone_number_id` attributes respectively.
Both IDs should correspond to verified identifications that belong to the user.

You can remove a user's username by setting the username attribute to null or the blank string "".
This is a destructive action; the identification will be deleted forever.
Usernames can be removed only if they are optional in your instance settings and there's at least one other identifier which can be used for authentication.

This endpoint allows changing a user's password. When passing the `password` parameter directly you have two further options.
You can ignore the password policy checks for your instance by setting the `skip_password_checks` parameter to `true`.
You can also choose to sign the user out of all their active sessions on any device once the password is updated. Just set `sign_out_of_other_sessions` to `true`.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.users.update(user_id="<id>", request_body=::ClerkSDKBackend::Operations::UpdateUserRequestBody.new())

if ! res.user.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                | Type                                                                                                     | Required                                                                                                 | Description                                                                                              |
| -------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------- |
| `user_id`                                                                                                | *::String*                                                                                               | :heavy_check_mark:                                                                                       | The ID of the user to update                                                                             |
| `request_body`                                                                                           | [::ClerkSDKBackend::Operations::UpdateUserRequestBody](../../models/operations/updateuserrequestbody.md) | :heavy_check_mark:                                                                                       | N/A                                                                                                      |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::UpdateUserResponse)](../../models/operations/updateuserresponse.md)**



## delete

Delete the specified user

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.users.delete(user_id="<id>")

if ! res.deleted_object.nil?
  # handle response
end

```

### Parameters

| Parameter                    | Type                         | Required                     | Description                  |
| ---------------------------- | ---------------------------- | ---------------------------- | ---------------------------- |
| `user_id`                    | *::String*                   | :heavy_check_mark:           | The ID of the user to delete |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::DeleteUserResponse)](../../models/operations/deleteuserresponse.md)**



## ban

Marks the given user as banned, which means that all their sessions are revoked and they are not allowed to sign in again.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.users.ban(user_id="<id>")

if ! res.user.nil?
  # handle response
end

```

### Parameters

| Parameter                 | Type                      | Required                  | Description               |
| ------------------------- | ------------------------- | ------------------------- | ------------------------- |
| `user_id`                 | *::String*                | :heavy_check_mark:        | The ID of the user to ban |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::BanUserResponse)](../../models/operations/banuserresponse.md)**



## unban

Removes the ban mark from the given user.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.users.unban(user_id="<id>")

if ! res.user.nil?
  # handle response
end

```

### Parameters

| Parameter                   | Type                        | Required                    | Description                 |
| --------------------------- | --------------------------- | --------------------------- | --------------------------- |
| `user_id`                   | *::String*                  | :heavy_check_mark:          | The ID of the user to unban |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::UnbanUserResponse)](../../models/operations/unbanuserresponse.md)**



## lock

Marks the given user as locked, which means they are not allowed to sign in again until the lock expires.
Lock duration can be configured in the instance's restrictions settings.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.users.lock(user_id="<id>")

if ! res.user.nil?
  # handle response
end

```

### Parameters

| Parameter                  | Type                       | Required                   | Description                |
| -------------------------- | -------------------------- | -------------------------- | -------------------------- |
| `user_id`                  | *::String*                 | :heavy_check_mark:         | The ID of the user to lock |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::LockUserResponse)](../../models/operations/lockuserresponse.md)**



## unlock

Removes the lock from the given user.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.users.unlock(user_id="<id>")

if ! res.user.nil?
  # handle response
end

```

### Parameters

| Parameter                    | Type                         | Required                     | Description                  |
| ---------------------------- | ---------------------------- | ---------------------------- | ---------------------------- |
| `user_id`                    | *::String*                   | :heavy_check_mark:           | The ID of the user to unlock |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::UnlockUserResponse)](../../models/operations/unlockuserresponse.md)**



## set_profile_image

Update a user's profile image

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.users.set_profile_image(user_id="<id>", request_body=::ClerkSDKBackend::Operations::SetUserProfileImageRequestBody.new())

if ! res.user.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                  | Type                                                                                                                       | Required                                                                                                                   | Description                                                                                                                |
| -------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------- |
| `user_id`                                                                                                                  | *::String*                                                                                                                 | :heavy_check_mark:                                                                                                         | The ID of the user to update the profile image for                                                                         |
| `request_body`                                                                                                             | [::ClerkSDKBackend::Operations::SetUserProfileImageRequestBody](../../models/operations/setuserprofileimagerequestbody.md) | :heavy_check_mark:                                                                                                         | N/A                                                                                                                        |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::SetUserProfileImageResponse)](../../models/operations/setuserprofileimageresponse.md)**



## delete_profile_image

Delete a user's profile image

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.users.delete_profile_image(user_id="<id>")

if ! res.user.nil?
  # handle response
end

```

### Parameters

| Parameter                                          | Type                                               | Required                                           | Description                                        |
| -------------------------------------------------- | -------------------------------------------------- | -------------------------------------------------- | -------------------------------------------------- |
| `user_id`                                          | *::String*                                         | :heavy_check_mark:                                 | The ID of the user to delete the profile image for |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::DeleteUserProfileImageResponse)](../../models/operations/deleteuserprofileimageresponse.md)**



## update_metadata

Update a user's metadata attributes by merging existing values with the provided parameters.

This endpoint behaves differently than the *Update a user* endpoint.
Metadata values will not be replaced entirely.
Instead, a deep merge will be performed.
Deep means that any nested JSON objects will be merged as well.

You can remove metadata keys at any level by setting their value to `null`.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.users.update_metadata(user_id="<id>", request_body=::ClerkSDKBackend::Operations::UpdateUserMetadataRequestBody.new())

if ! res.user.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                | Type                                                                                                                     | Required                                                                                                                 | Description                                                                                                              |
| ------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------ |
| `user_id`                                                                                                                | *::String*                                                                                                               | :heavy_check_mark:                                                                                                       | The ID of the user whose metadata will be updated and merged                                                             |
| `request_body`                                                                                                           | [::ClerkSDKBackend::Operations::UpdateUserMetadataRequestBody](../../models/operations/updateusermetadatarequestbody.md) | :heavy_check_mark:                                                                                                       | N/A                                                                                                                      |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::UpdateUserMetadataResponse)](../../models/operations/updateusermetadataresponse.md)**



## oauth_access_token

Fetch the corresponding OAuth access token for a user that has previously authenticated with a particular OAuth provider.
For OAuth 2.0, if the access token has expired and we have a corresponding refresh token, the access token will be refreshed transparently the new one will be returned.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.users.oauth_access_token(user_id="<id>", provider="<value>")

if ! res.response_bodies.nil?
  # handle response
end

```

### Parameters

| Parameter                                                       | Type                                                            | Required                                                        | Description                                                     |
| --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- |
| `user_id`                                                       | *::String*                                                      | :heavy_check_mark:                                              | The ID of the user for which to retrieve the OAuth access token |
| `provider`                                                      | *::String*                                                      | :heavy_check_mark:                                              | The ID of the OAuth provider (e.g. `oauth_google`)              |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::GetOAuthAccessTokenResponse)](../../models/operations/getoauthaccesstokenresponse.md)**



## organization_memberships

Retrieve a paginated list of the user's organization memberships

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.users.organization_memberships(user_id="<id>", limit=4734.95, offset=3985.69)

if ! res.organization_memberships.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                 | Type                                                                                                                                      | Required                                                                                                                                  | Description                                                                                                                               |
| ----------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- |
| `user_id`                                                                                                                                 | *::String*                                                                                                                                | :heavy_check_mark:                                                                                                                        | The ID of the user whose organization memberships we want to retrieve                                                                     |
| `limit`                                                                                                                                   | *T.nilable(::Float)*                                                                                                                      | :heavy_minus_sign:                                                                                                                        | Applies a limit to the number of results returned.<br/>Can be used for paginating the results together with `offset`.                     |
| `offset`                                                                                                                                  | *T.nilable(::Float)*                                                                                                                      | :heavy_minus_sign:                                                                                                                        | Skip the first `offset` results when paginating.<br/>Needs to be an integer greater or equal to zero.<br/>To be used in conjunction with `limit`. |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::UsersGetOrganizationMembershipsResponse)](../../models/operations/usersgetorganizationmembershipsresponse.md)**



## organization_invitations

Retrieve a paginated list of the user's organization invitations

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.users.organization_invitations(user_id="<id>", limit=659.21, offset=3732.55, status=::ClerkSDKBackend::Operations::QueryParamStatus::REVOKED)

if ! res.organization_invitations_with_public_organization_data.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                 | Type                                                                                                                                      | Required                                                                                                                                  | Description                                                                                                                               |
| ----------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- |
| `user_id`                                                                                                                                 | *::String*                                                                                                                                | :heavy_check_mark:                                                                                                                        | The ID of the user whose organization invitations we want to retrieve                                                                     |
| `limit`                                                                                                                                   | *T.nilable(::Float)*                                                                                                                      | :heavy_minus_sign:                                                                                                                        | Applies a limit to the number of results returned.<br/>Can be used for paginating the results together with `offset`.                     |
| `offset`                                                                                                                                  | *T.nilable(::Float)*                                                                                                                      | :heavy_minus_sign:                                                                                                                        | Skip the first `offset` results when paginating.<br/>Needs to be an integer greater or equal to zero.<br/>To be used in conjunction with `limit`. |
| `status`                                                                                                                                  | [T.nilable(::ClerkSDKBackend::Operations::QueryParamStatus)](../../models/operations/queryparamstatus.md)                                 | :heavy_minus_sign:                                                                                                                        | Filter organization invitations based on their status                                                                                     |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::UsersGetOrganizationInvitationsResponse)](../../models/operations/usersgetorganizationinvitationsresponse.md)**



## verify_password

Check that the user's password matches the supplied input.
Useful for custom auth flows and re-verification.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.users.verify_password(user_id="<id>", request_body=::ClerkSDKBackend::Operations::VerifyPasswordRequestBody.new(
  password: "fSBhIihdxMPlTHN",
))

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                        | Type                                                                                                             | Required                                                                                                         | Description                                                                                                      |
| ---------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------- |
| `user_id`                                                                                                        | *::String*                                                                                                       | :heavy_check_mark:                                                                                               | The ID of the user for whom to verify the password                                                               |
| `request_body`                                                                                                   | [::ClerkSDKBackend::Operations::VerifyPasswordRequestBody](../../models/operations/verifypasswordrequestbody.md) | :heavy_check_mark:                                                                                               | N/A                                                                                                              |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::VerifyPasswordResponse)](../../models/operations/verifypasswordresponse.md)**



## verify_totp

Verify that the provided TOTP or backup code is valid for the user.
Verifying a backup code will result it in being consumed (i.e. it will
become invalid).
Useful for custom auth flows and re-verification.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.users.verify_totp(user_id="<id>", request_body=::ClerkSDKBackend::Operations::VerifyTOTPRequestBody.new(
  code: "<value>",
))

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                | Type                                                                                                     | Required                                                                                                 | Description                                                                                              |
| -------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------- |
| `user_id`                                                                                                | *::String*                                                                                               | :heavy_check_mark:                                                                                       | The ID of the user for whom to verify the TOTP                                                           |
| `request_body`                                                                                           | [::ClerkSDKBackend::Operations::VerifyTOTPRequestBody](../../models/operations/verifytotprequestbody.md) | :heavy_check_mark:                                                                                       | N/A                                                                                                      |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::VerifyTOTPResponse)](../../models/operations/verifytotpresponse.md)**



## disable_mfa

Disable all of a user's MFA methods (e.g. OTP sent via SMS, TOTP on their authenticator app) at once.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.users.disable_mfa(user_id="<id>")

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                               | Type                                                    | Required                                                | Description                                             |
| ------------------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------------- |
| `user_id`                                               | *::String*                                              | :heavy_check_mark:                                      | The ID of the user whose MFA methods are to be disabled |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::DisableMFAResponse)](../../models/operations/disablemfaresponse.md)**



## delete_backup_code

Disable all of a user's backup codes.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.users.delete_backup_code(user_id="<id>")

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                | Type                                                     | Required                                                 | Description                                              |
| -------------------------------------------------------- | -------------------------------------------------------- | -------------------------------------------------------- | -------------------------------------------------------- |
| `user_id`                                                | *::String*                                               | :heavy_check_mark:                                       | The ID of the user whose backup codes are to be deleted. |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::DeleteBackupCodeResponse)](../../models/operations/deletebackupcoderesponse.md)**



## delete_passkey

Delete the passkey identification for a given user and notify them through email.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.users.delete_passkey(user_id="<id>", passkey_identification_id="<id>")

if ! res.deleted_object.nil?
  # handle response
end

```

### Parameters

| Parameter                                         | Type                                              | Required                                          | Description                                       |
| ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- |
| `user_id`                                         | *::String*                                        | :heavy_check_mark:                                | The ID of the user that owns the passkey identity |
| `passkey_identification_id`                       | *::String*                                        | :heavy_check_mark:                                | The ID of the passkey identity to be deleted      |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::UserPasskeyDeleteResponse)](../../models/operations/userpasskeydeleteresponse.md)**



## delete_web3_wallet

Delete the web3 wallet identification for a given user.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.users.delete_web3_wallet(user_id="<id>", web3_wallet_identification_id="<id>")

if ! res.deleted_object.nil?
  # handle response
end

```

### Parameters

| Parameter                                        | Type                                             | Required                                         | Description                                      |
| ------------------------------------------------ | ------------------------------------------------ | ------------------------------------------------ | ------------------------------------------------ |
| `user_id`                                        | *::String*                                       | :heavy_check_mark:                               | The ID of the user that owns the web3 wallet     |
| `web3_wallet_identification_id`                  | *::String*                                       | :heavy_check_mark:                               | The ID of the web3 wallet identity to be deleted |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::UserWeb3WalletDeleteResponse)](../../models/operations/userweb3walletdeleteresponse.md)**



## create_totp

Creates a TOTP (Time-based One-Time Password) for a given user, returning both the TOTP secret and the URI.


### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.users.create_totp(user_id="<id>")

if ! res.totp.nil?
  # handle response
end

```

### Parameters

| Parameter                                              | Type                                                   | Required                                               | Description                                            |
| ------------------------------------------------------ | ------------------------------------------------------ | ------------------------------------------------------ | ------------------------------------------------------ |
| `user_id`                                              | *::String*                                             | :heavy_check_mark:                                     | The ID of the user for whom the TOTP is being created. |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::CreateUserTOTPResponse)](../../models/operations/createusertotpresponse.md)**



## delete_totp

Deletes all of the user's TOTPs.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.users.delete_totp(user_id="<id>")

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                        | Type                                             | Required                                         | Description                                      |
| ------------------------------------------------ | ------------------------------------------------ | ------------------------------------------------ | ------------------------------------------------ |
| `user_id`                                        | *::String*                                       | :heavy_check_mark:                               | The ID of the user whose TOTPs are to be deleted |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::DeleteTOTPResponse)](../../models/operations/deletetotpresponse.md)**



## delete_external_account

Delete an external account by ID.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.users.delete_external_account(user_id="<id>", external_account_id="<id>")

if ! res.deleted_object.nil?
  # handle response
end

```

### Parameters

| Parameter                                | Type                                     | Required                                 | Description                              |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| `user_id`                                | *::String*                               | :heavy_check_mark:                       | The ID of the user's external account    |
| `external_account_id`                    | *::String*                               | :heavy_check_mark:                       | The ID of the external account to delete |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::DeleteExternalAccountResponse)](../../models/operations/deleteexternalaccountresponse.md)**

