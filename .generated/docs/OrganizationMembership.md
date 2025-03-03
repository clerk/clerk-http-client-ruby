# ClerkHttpClient::OrganizationMembership

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **object** | **String** | String representing the object&#39;s type. Objects of the same type share the same value.  |  |
| **role** | **String** |  |  |
| **role_name** | **String** |  | [optional] |
| **permissions** | **Array&lt;String&gt;** |  |  |
| **public_metadata** | **Hash&lt;String, Object&gt;** | Metadata saved on the organization membership, accessible from both Frontend and Backend APIs |  |
| **private_metadata** | **Hash&lt;String, Object&gt;** | Metadata saved on the organization membership, accessible only from the Backend API | [optional] |
| **organization** | [**Organization**](Organization.md) |  |  |
| **public_user_data** | [**OrganizationMembershipPublicUserData**](OrganizationMembershipPublicUserData.md) |  | [optional] |
| **created_at** | **Integer** | Unix timestamp of creation. |  |
| **updated_at** | **Integer** | Unix timestamp of last update. |  |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::OrganizationMembership.new(
  id: null,
  object: null,
  role: null,
  role_name: null,
  permissions: null,
  public_metadata: null,
  private_metadata: null,
  organization: null,
  public_user_data: null,
  created_at: null,
  updated_at: null
)
```

