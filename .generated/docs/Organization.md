# ClerkHttpClient::Organization

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  |  |
| **id** | **String** |  |  |
| **name** | **String** |  |  |
| **slug** | **String** |  |  |
| **members_count** | **Integer** |  | [optional] |
| **max_allowed_memberships** | **Integer** |  |  |
| **admin_delete_enabled** | **Boolean** |  | [optional] |
| **public_metadata** | **Hash&lt;String, Object&gt;** |  |  |
| **private_metadata** | **Hash&lt;String, Object&gt;** |  |  |
| **created_by** | **String** |  | [optional] |
| **created_at** | **Integer** | Unix timestamp of creation.  |  |
| **updated_at** | **Integer** | Unix timestamp of last update.  |  |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::Organization.new(
  object: null,
  id: null,
  name: null,
  slug: null,
  members_count: null,
  max_allowed_memberships: null,
  admin_delete_enabled: null,
  public_metadata: null,
  private_metadata: null,
  created_by: null,
  created_at: null,
  updated_at: null
)
```
