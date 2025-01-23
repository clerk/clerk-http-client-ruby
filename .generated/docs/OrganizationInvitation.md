# ClerkHttpClient::OrganizationInvitation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **object** | **String** | String representing the object&#39;s type. Objects of the same type share the same value.  | [optional] |
| **email_address** | **String** |  | [optional] |
| **role** | **String** |  | [optional] |
| **role_name** | **String** |  | [optional] |
| **organization_id** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **public_metadata** | **Object** |  | [optional] |
| **private_metadata** | **Object** |  | [optional] |
| **created_at** | **Integer** | Unix timestamp of creation. | [optional] |
| **updated_at** | **Integer** | Unix timestamp of last update. | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::OrganizationInvitation.new(
  id: null,
  object: null,
  email_address: null,
  role: null,
  role_name: null,
  organization_id: null,
  status: null,
  public_metadata: null,
  private_metadata: null,
  created_at: null,
  updated_at: null
)
```

