# Organizations
(*organizations*)

## Overview

Organizations are used to group members under a common entity and provide shared access to resources.
<https://clerk.com/docs/organizations/overview>

### Available Operations

* [all](#all) - Get a list of organizations for an instance
* [create](#create) - Create an organization
* [find](#find) - Retrieve an organization by ID or slug
* [update](#update) - Update an organization
* [delete](#delete) - Delete an organization
* [update_metadata](#update_metadata) - Merge and update metadata for an organization
* [upload_logo](#upload_logo) - Upload a logo for the organization
* [delete_logo](#delete_logo) - Delete the organization's logo.

## all

This request returns the list of organizations for an instance.
Results can be paginated using the optional `limit` and `offset` query parameters.
The organizations are ordered by descending creation date.
Most recent organizations will be returned first.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)


req = ::ClerkSDKBackend::Operations::ListOrganizationsRequest.new()
    
res = s.organizations.all(req)

if ! res.organizations.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                      | Type                                                                                                           | Required                                                                                                       | Description                                                                                                    |
| -------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                      | [::ClerkSDKBackend::Operations::ListOrganizationsRequest](../../models/operations/listorganizationsrequest.md) | :heavy_check_mark:                                                                                             | The request object to use for the request.                                                                     |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::ListOrganizationsResponse)](../../models/operations/listorganizationsresponse.md)**



## create

Creates a new organization with the given name for an instance.
In order to successfully create an organization you need to provide the ID of the User who will become the organization administrator.
You can specify an optional slug for the new organization.
If provided, the organization slug can contain only lowercase alphanumeric characters (letters and digits) and the dash "-".
Organization slugs must be unique for the instance.
You can provide additional metadata for the organization and set any custom attribute you want.
Organizations support private and public metadata.
Private metadata can only be accessed from the Backend API.
Public metadata can be accessed from the Backend API, and are read-only from the Frontend API.
The `created_by` user will see this as their [active organization] (https://clerk.com/docs/organizations/overview#active-organization)
the next time they create a session, presuming they don't explicitly set a different organization as active before then.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)


req = ::ClerkSDKBackend::Operations::CreateOrganizationRequestBody.new(
  name: "<value>",
  created_by: "<value>",
)
    
res = s.organizations.create(req)

if ! res.organization.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                | Type                                                                                                                     | Required                                                                                                                 | Description                                                                                                              |
| ------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                | [::ClerkSDKBackend::Operations::CreateOrganizationRequestBody](../../models/operations/createorganizationrequestbody.md) | :heavy_check_mark:                                                                                                       | The request object to use for the request.                                                                               |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::CreateOrganizationResponse)](../../models/operations/createorganizationresponse.md)**



## find

Fetches the organization whose ID or slug matches the provided `id_or_slug` URL query parameter.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.organizations.find(organization_id="<id>", include_members_count=false)

if ! res.organization.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                          | Type                                                                                               | Required                                                                                           | Description                                                                                        |
| -------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- |
| `organization_id`                                                                                  | *::String*                                                                                         | :heavy_check_mark:                                                                                 | The ID or slug of the organization                                                                 |
| `include_members_count`                                                                            | *T.nilable(T::Boolean)*                                                                            | :heavy_minus_sign:                                                                                 | Flag to denote whether or not the organization's members count should be included in the response. |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::GetOrganizationResponse)](../../models/operations/getorganizationresponse.md)**



## update

Updates an existing organization

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.organizations.update(organization_id="<id>", request_body=::ClerkSDKBackend::Operations::UpdateOrganizationRequestBody.new())

if ! res.organization.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                | Type                                                                                                                     | Required                                                                                                                 | Description                                                                                                              |
| ------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------ |
| `organization_id`                                                                                                        | *::String*                                                                                                               | :heavy_check_mark:                                                                                                       | The ID of the organization to update                                                                                     |
| `request_body`                                                                                                           | [::ClerkSDKBackend::Operations::UpdateOrganizationRequestBody](../../models/operations/updateorganizationrequestbody.md) | :heavy_check_mark:                                                                                                       | N/A                                                                                                                      |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::UpdateOrganizationResponse)](../../models/operations/updateorganizationresponse.md)**



## delete

Deletes the given organization.
Please note that deleting an organization will also delete all memberships and invitations.
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

    
res = s.organizations.delete(organization_id="<id>")

if ! res.deleted_object.nil?
  # handle response
end

```

### Parameters

| Parameter                            | Type                                 | Required                             | Description                          |
| ------------------------------------ | ------------------------------------ | ------------------------------------ | ------------------------------------ |
| `organization_id`                    | *::String*                           | :heavy_check_mark:                   | The ID of the organization to delete |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::DeleteOrganizationResponse)](../../models/operations/deleteorganizationresponse.md)**



## update_metadata

Update organization metadata attributes by merging existing values with the provided parameters.
Metadata values will be updated via a deep merge.
Deep meaning that any nested JSON objects will be merged as well.
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

    
res = s.organizations.update_metadata(organization_id="<id>", request_body=::ClerkSDKBackend::Operations::MergeOrganizationMetadataRequestBody.new())

if ! res.organization.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                              | Type                                                                                                                                   | Required                                                                                                                               | Description                                                                                                                            |
| -------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------- |
| `organization_id`                                                                                                                      | *::String*                                                                                                                             | :heavy_check_mark:                                                                                                                     | The ID of the organization for which metadata will be merged or updated                                                                |
| `request_body`                                                                                                                         | [::ClerkSDKBackend::Operations::MergeOrganizationMetadataRequestBody](../../models/operations/mergeorganizationmetadatarequestbody.md) | :heavy_check_mark:                                                                                                                     | N/A                                                                                                                                    |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::MergeOrganizationMetadataResponse)](../../models/operations/mergeorganizationmetadataresponse.md)**



## upload_logo

Set or replace an organization's logo, by uploading an image file.
This endpoint uses the `multipart/form-data` request content type and accepts a file of image type.
The file size cannot exceed 10MB.
Only the following file content types are supported: `image/jpeg`, `image/png`, `image/gif`, `image/webp`, `image/x-icon`, `image/vnd.microsoft.icon`.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.organizations.upload_logo(organization_id="<id>", request_body=::ClerkSDKBackend::Operations::UploadOrganizationLogoRequestBody.new(
  file: ::ClerkSDKBackend::Operations::UploadOrganizationLogoFile.new(
    file_name: "example.file",
    content: "0x0DDEE4e6Ea".encode(),
  ),
))

if ! res.organization_with_logo.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                        | Type                                                                                                                             | Required                                                                                                                         | Description                                                                                                                      |
| -------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------- |
| `organization_id`                                                                                                                | *::String*                                                                                                                       | :heavy_check_mark:                                                                                                               | The ID of the organization for which to upload a logo                                                                            |
| `request_body`                                                                                                                   | [::ClerkSDKBackend::Operations::UploadOrganizationLogoRequestBody](../../models/operations/uploadorganizationlogorequestbody.md) | :heavy_check_mark:                                                                                                               | N/A                                                                                                                              |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::UploadOrganizationLogoResponse)](../../models/operations/uploadorganizationlogoresponse.md)**



## delete_logo

Delete the organization's logo.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.organizations.delete_logo(organization_id="<id>")

if ! res.organization.nil?
  # handle response
end

```

### Parameters

| Parameter                                                      | Type                                                           | Required                                                       | Description                                                    |
| -------------------------------------------------------------- | -------------------------------------------------------------- | -------------------------------------------------------------- | -------------------------------------------------------------- |
| `organization_id`                                              | *::String*                                                     | :heavy_check_mark:                                             | The ID of the organization for which the logo will be deleted. |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::DeleteOrganizationLogoResponse)](../../models/operations/deleteorganizationlogoresponse.md)**

