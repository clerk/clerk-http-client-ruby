# ClerkHttpClient::OrganizationSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | String representing the object&#39;s type. Objects of the same type share the same value. |  |
| **enabled** | **Boolean** |  |  |
| **max_allowed_memberships** | **Integer** |  |  |
| **max_allowed_roles** | **Integer** |  |  |
| **max_allowed_permissions** | **Integer** | max_allowed_permissions is now a no-op, as permissions are now unlimited | [optional] |
| **creator_role** | **String** | The role key that a user will be assigned after creating an organization. |  |
| **admin_delete_enabled** | **Boolean** | The default for whether an admin can delete an organization with the Frontend API. |  |
| **domains_enabled** | **Boolean** |  |  |
| **domains_enrollment_modes** | **Array&lt;String&gt;** |  |  |
| **domains_default_role** | **String** | The role key that it will be used in order to create an organization invitation or suggestion. |  |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::OrganizationSettings.new(
  object: null,
  enabled: null,
  max_allowed_memberships: null,
  max_allowed_roles: null,
  max_allowed_permissions: null,
  creator_role: null,
  admin_delete_enabled: null,
  domains_enabled: null,
  domains_enrollment_modes: null,
  domains_default_role: null
)
```

