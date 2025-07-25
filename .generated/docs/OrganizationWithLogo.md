# ClerkHttpClient::OrganizationWithLogo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  |  |
| **id** | **String** |  |  |
| **name** | **String** |  |  |
| **slug** | **String** |  |  |
| **image_url** | **String** |  |  |
| **has_image** | **Boolean** |  |  |
| **members_count** | **Integer** |  | [optional] |
| **missing_member_with_elevated_permissions** | **Boolean** |  | [optional] |
| **pending_invitations_count** | **Integer** |  | [optional] |
| **max_allowed_memberships** | **Integer** |  |  |
| **admin_delete_enabled** | **Boolean** |  |  |
| **public_metadata** | **Hash&lt;String, Object&gt;** |  |  |
| **private_metadata** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **created_by** | **String** |  | [optional] |
| **created_at** | **Integer** | Unix timestamp of creation.  |  |
| **updated_at** | **Integer** | Unix timestamp of last update.  |  |
| **logo_url** | **String** |  | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::OrganizationWithLogo.new(
  object: null,
  id: null,
  name: null,
  slug: null,
  image_url: null,
  has_image: null,
  members_count: null,
  missing_member_with_elevated_permissions: null,
  pending_invitations_count: null,
  max_allowed_memberships: null,
  admin_delete_enabled: null,
  public_metadata: null,
  private_metadata: null,
  created_by: null,
  created_at: null,
  updated_at: null,
  logo_url: null
)
```

