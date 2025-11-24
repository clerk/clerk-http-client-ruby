# ClerkHttpClient::UpdateOrganizationPermissionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the permission. | [optional] |
| **key** | **String** | The key of the permission. Must have the format \&quot;org:feature:action\&quot; where feature and action are segments consisting of lowercase letters, digits, or underscores. Cannot begin with \&quot;org:sys_\&quot; as that prefix is reserved for system permissions. | [optional] |
| **description** | **String** | A description of the permission. | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::UpdateOrganizationPermissionRequest.new(
  name: null,
  key: null,
  description: null
)
```

