# ClerkBackend::UpdateInstanceOrganizationSettingsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** |  | [optional] |
| **max_allowed_memberships** | **Integer** |  | [optional] |
| **admin_delete_enabled** | **Boolean** |  | [optional] |
| **domains_enabled** | **Boolean** |  | [optional] |
| **domains_enrollment_modes** | **Array&lt;String&gt;** | Specify which enrollment modes to enable for your Organization Domains. Supported modes are &#39;automatic_invitation&#39; &amp; &#39;automatic_suggestion&#39;. | [optional] |
| **creator_role_id** | **String** | Specify what the default organization role is for an organization creator. | [optional] |
| **domains_default_role_id** | **String** | Specify what the default organization role is for the organization domains. | [optional] |

## Example

```ruby
require 'clerk-backend'

instance = ClerkBackend::UpdateInstanceOrganizationSettingsRequest.new(
  enabled: null,
  max_allowed_memberships: null,
  admin_delete_enabled: null,
  domains_enabled: null,
  domains_enrollment_modes: null,
  creator_role_id: null,
  domains_default_role_id: null
)
```

