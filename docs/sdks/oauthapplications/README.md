# OauthApplications
(*oauth_applications*)

## Overview

### Available Operations

* [all](#all) - Get a list of OAuth applications for an instance
* [create](#create) - Create an OAuth application
* [find](#find) - Retrieve an OAuth application by ID
* [update](#update) - Update an OAuth application
* [delete](#delete) - Delete an OAuth application
* [rotate_secret](#rotate_secret) - Rotate the client secret of the given OAuth application

## all

This request returns the list of OAuth applications for an instance.
Results can be paginated using the optional `limit` and `offset` query parameters.
The OAuth applications are ordered by descending creation date.
Most recent OAuth applications will be returned first.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.oauth_applications.all(limit=2433.94, offset=7280.53)

if ! res.o_auth_applications.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                 | Type                                                                                                                                      | Required                                                                                                                                  | Description                                                                                                                               |
| ----------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- |
| `limit`                                                                                                                                   | *T.nilable(::Float)*                                                                                                                      | :heavy_minus_sign:                                                                                                                        | Applies a limit to the number of results returned.<br/>Can be used for paginating the results together with `offset`.                     |
| `offset`                                                                                                                                  | *T.nilable(::Float)*                                                                                                                      | :heavy_minus_sign:                                                                                                                        | Skip the first `offset` results when paginating.<br/>Needs to be an integer greater or equal to zero.<br/>To be used in conjunction with `limit`. |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::ListOAuthApplicationsResponse)](../../models/operations/listoauthapplicationsresponse.md)**



## create

Creates a new OAuth application with the given name and callback URL for an instance.
The callback URL must be a valid url.
All URL schemes are allowed such as `http://`, `https://`, `myapp://`, etc...

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)


req = ::ClerkSDKBackend::Operations::CreateOAuthApplicationRequestBody.new(
  name: "<value>",
  callback_url: "https://probable-heating.com/",
  scopes: "profile email public_metadata",
)
    
res = s.oauth_applications.create(req)

if ! res.o_auth_application_with_secret.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                        | Type                                                                                                                             | Required                                                                                                                         | Description                                                                                                                      |
| -------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                        | [::ClerkSDKBackend::Operations::CreateOAuthApplicationRequestBody](../../models/operations/createoauthapplicationrequestbody.md) | :heavy_check_mark:                                                                                                               | The request object to use for the request.                                                                                       |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::CreateOAuthApplicationResponse)](../../models/operations/createoauthapplicationresponse.md)**



## find

Fetches the OAuth application whose ID matches the provided `id` in the path.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.oauth_applications.find(oauth_application_id="<id>")

if ! res.o_auth_application.nil?
  # handle response
end

```

### Parameters

| Parameter                       | Type                            | Required                        | Description                     |
| ------------------------------- | ------------------------------- | ------------------------------- | ------------------------------- |
| `oauth_application_id`          | *::String*                      | :heavy_check_mark:              | The ID of the OAuth application |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::GetOAuthApplicationResponse)](../../models/operations/getoauthapplicationresponse.md)**



## update

Updates an existing OAuth application

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.oauth_applications.update(oauth_application_id="<id>", request_body=::ClerkSDKBackend::Operations::UpdateOAuthApplicationRequestBody.new(
  scopes: "profile email public_metadata private_metadata",
))

if ! res.o_auth_application.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                        | Type                                                                                                                             | Required                                                                                                                         | Description                                                                                                                      |
| -------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------- |
| `oauth_application_id`                                                                                                           | *::String*                                                                                                                       | :heavy_check_mark:                                                                                                               | The ID of the OAuth application to update                                                                                        |
| `request_body`                                                                                                                   | [::ClerkSDKBackend::Operations::UpdateOAuthApplicationRequestBody](../../models/operations/updateoauthapplicationrequestbody.md) | :heavy_check_mark:                                                                                                               | N/A                                                                                                                              |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::UpdateOAuthApplicationResponse)](../../models/operations/updateoauthapplicationresponse.md)**



## delete

Deletes the given OAuth application.
This is not reversible.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.oauth_applications.delete(oauth_application_id="<id>")

if ! res.deleted_object.nil?
  # handle response
end

```

### Parameters

| Parameter                                 | Type                                      | Required                                  | Description                               |
| ----------------------------------------- | ----------------------------------------- | ----------------------------------------- | ----------------------------------------- |
| `oauth_application_id`                    | *::String*                                | :heavy_check_mark:                        | The ID of the OAuth application to delete |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::DeleteOAuthApplicationResponse)](../../models/operations/deleteoauthapplicationresponse.md)**



## rotate_secret

Rotates the OAuth application's client secret.
When the client secret is rotated, make sure to update it in authorized OAuth clients.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.oauth_applications.rotate_secret(oauth_application_id="<id>")

if ! res.o_auth_application_with_secret.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `oauth_application_id`                                                | *::String*                                                            | :heavy_check_mark:                                                    | The ID of the OAuth application for which to rotate the client secret |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::RotateOAuthApplicationSecretResponse)](../../models/operations/rotateoauthapplicationsecretresponse.md)**

