# OrganizationMemberships
(*organization_memberships*)

## Overview

### Available Operations

* [create](#create) - Create a new organization membership
* [all](#all) - Get a list of all members of an organization
* [update](#update) - Update an organization membership
* [delete](#delete) - Remove a member from an organization
* [update_metadata](#update_metadata) - Merge and update organization membership metadata
* [find](#find) - Get a list of all organization memberships within an instance.

## create

Adds a user as a member to the given organization.
Only users in the same instance as the organization can be added as members.

This organization will be the user's [active organization] (https://clerk.com/docs/organizations/overview#active-organization)
the next time they create a session, presuming they don't explicitly set a
different organization as active before then.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.organization_memberships.create(organization_id="<id>", request_body=::ClerkSDKBackend::Operations::CreateOrganizationMembershipRequestBody.new(
  user_id: "<id>",
  role: "<value>",
))

if ! res.organization_membership.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                    | Type                                                                                                                                         | Required                                                                                                                                     | Description                                                                                                                                  |
| -------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------- |
| `organization_id`                                                                                                                            | *::String*                                                                                                                                   | :heavy_check_mark:                                                                                                                           | The ID of the organization where the new membership will be created                                                                          |
| `request_body`                                                                                                                               | [::ClerkSDKBackend::Operations::CreateOrganizationMembershipRequestBody](../../models/operations/createorganizationmembershiprequestbody.md) | :heavy_check_mark:                                                                                                                           | N/A                                                                                                                                          |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::CreateOrganizationMembershipResponse)](../../models/operations/createorganizationmembershipresponse.md)**



## all

Retrieves all user memberships for the given organization

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.organization_memberships.all(organization_id="<id>", limit=2433.94, offset=7280.53, order_by="<value>")

if ! res.organization_memberships.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                           | Type                                                                                                                                                                                                                                | Required                                                                                                                                                                                                                            | Description                                                                                                                                                                                                                         |
| ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `organization_id`                                                                                                                                                                                                                   | *::String*                                                                                                                                                                                                                          | :heavy_check_mark:                                                                                                                                                                                                                  | The organization ID.                                                                                                                                                                                                                |
| `limit`                                                                                                                                                                                                                             | *T.nilable(::Float)*                                                                                                                                                                                                                | :heavy_minus_sign:                                                                                                                                                                                                                  | Applies a limit to the number of results returned.<br/>Can be used for paginating the results together with `offset`.                                                                                                               |
| `offset`                                                                                                                                                                                                                            | *T.nilable(::Float)*                                                                                                                                                                                                                | :heavy_minus_sign:                                                                                                                                                                                                                  | Skip the first `offset` results when paginating.<br/>Needs to be an integer greater or equal to zero.<br/>To be used in conjunction with `limit`.                                                                                   |
| `order_by`                                                                                                                                                                                                                          | *T.nilable(::String)*                                                                                                                                                                                                               | :heavy_minus_sign:                                                                                                                                                                                                                  | Sorts organizations memberships by phone_number, email_address, created_at, first_name, last_name or username.<br/>By prepending one of those values with + or -,<br/>we can choose to sort in ascending (ASC) or descending (DESC) order." |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::ListOrganizationMembershipsResponse)](../../models/operations/listorganizationmembershipsresponse.md)**



## update

Updates the properties of an existing organization membership

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.organization_memberships.update(organization_id="<id>", user_id="<id>", request_body=::ClerkSDKBackend::Operations::UpdateOrganizationMembershipRequestBody.new(
  role: "<value>",
))

if ! res.organization_membership.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                    | Type                                                                                                                                         | Required                                                                                                                                     | Description                                                                                                                                  |
| -------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------- |
| `organization_id`                                                                                                                            | *::String*                                                                                                                                   | :heavy_check_mark:                                                                                                                           | The ID of the organization the membership belongs to                                                                                         |
| `user_id`                                                                                                                                    | *::String*                                                                                                                                   | :heavy_check_mark:                                                                                                                           | The ID of the user that this membership belongs to                                                                                           |
| `request_body`                                                                                                                               | [::ClerkSDKBackend::Operations::UpdateOrganizationMembershipRequestBody](../../models/operations/updateorganizationmembershiprequestbody.md) | :heavy_check_mark:                                                                                                                           | N/A                                                                                                                                          |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::UpdateOrganizationMembershipResponse)](../../models/operations/updateorganizationmembershipresponse.md)**



## delete

Removes the given membership from the organization

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.organization_memberships.delete(organization_id="<id>", user_id="<id>")

if ! res.organization_membership.nil?
  # handle response
end

```

### Parameters

| Parameter                                            | Type                                                 | Required                                             | Description                                          |
| ---------------------------------------------------- | ---------------------------------------------------- | ---------------------------------------------------- | ---------------------------------------------------- |
| `organization_id`                                    | *::String*                                           | :heavy_check_mark:                                   | The ID of the organization the membership belongs to |
| `user_id`                                            | *::String*                                           | :heavy_check_mark:                                   | The ID of the user that this membership belongs to   |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::DeleteOrganizationMembershipResponse)](../../models/operations/deleteorganizationmembershipresponse.md)**



## update_metadata

Update an organization membership's metadata attributes by merging existing values with the provided parameters.
Metadata values will be updated via a deep merge. Deep means that any nested JSON objects will be merged as well.
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

    
res = s.organization_memberships.update_metadata(organization_id="<id>", user_id="<id>", request_body=::ClerkSDKBackend::Operations::UpdateOrganizationMembershipMetadataRequestBody.new())

if ! res.organization_membership.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                    | Type                                                                                                                                                         | Required                                                                                                                                                     | Description                                                                                                                                                  |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `organization_id`                                                                                                                                            | *::String*                                                                                                                                                   | :heavy_check_mark:                                                                                                                                           | The ID of the organization the membership belongs to                                                                                                         |
| `user_id`                                                                                                                                                    | *::String*                                                                                                                                                   | :heavy_check_mark:                                                                                                                                           | The ID of the user that this membership belongs to                                                                                                           |
| `request_body`                                                                                                                                               | [::ClerkSDKBackend::Operations::UpdateOrganizationMembershipMetadataRequestBody](../../models/operations/updateorganizationmembershipmetadatarequestbody.md) | :heavy_check_mark:                                                                                                                                           | N/A                                                                                                                                                          |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::UpdateOrganizationMembershipMetadataResponse)](../../models/operations/updateorganizationmembershipmetadataresponse.md)**



## find

Retrieves all organization user memberships for the given instance.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.organization_memberships.find(limit=401.41, offset=4880.98, order_by="<value>")

if ! res.organization_memberships.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                          | Type                                                                                                                                                                                                                               | Required                                                                                                                                                                                                                           | Description                                                                                                                                                                                                                        |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `limit`                                                                                                                                                                                                                            | *T.nilable(::Float)*                                                                                                                                                                                                               | :heavy_minus_sign:                                                                                                                                                                                                                 | Applies a limit to the number of results returned.<br/>Can be used for paginating the results together with `offset`.                                                                                                              |
| `offset`                                                                                                                                                                                                                           | *T.nilable(::Float)*                                                                                                                                                                                                               | :heavy_minus_sign:                                                                                                                                                                                                                 | Skip the first `offset` results when paginating.<br/>Needs to be an integer greater or equal to zero.<br/>To be used in conjunction with `limit`.                                                                                  |
| `order_by`                                                                                                                                                                                                                         | *T.nilable(::String)*                                                                                                                                                                                                              | :heavy_minus_sign:                                                                                                                                                                                                                 | Sorts organizations memberships by phone_number, email_address, created_at, first_name, last_name or username.<br/>By prepending one of those values with + or -,<br/>we can choose to sort in ascending (ASC) or descending (DESC) order. |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::InstanceGetOrganizationMembershipsResponse)](../../models/operations/instancegetorganizationmembershipsresponse.md)**

