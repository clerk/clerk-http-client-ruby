# ClerkHttpClient::OrganizationInvitation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | String representing the object&#39;s type. Objects of the same type share the same value.  |  |
| **id** | **String** |  |  |
| **email_address** | **String** |  |  |
| **role** | **String** |  |  |
| **role_name** | **String** |  |  |
| **organization_id** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **public_metadata** | **Hash&lt;String, Object&gt;** |  |  |
| **private_metadata** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **url** | **String** |  |  |
| **expires_at** | **Integer** | Unix timestamp of expiration. |  |
| **created_at** | **Integer** | Unix timestamp of creation. |  |
| **updated_at** | **Integer** | Unix timestamp of last update. |  |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::OrganizationInvitation.new(
  object: null,
  id: null,
  email_address: null,
  role: null,
  role_name: null,
  organization_id: null,
  status: null,
  public_metadata: null,
  private_metadata: null,
  url: null,
  expires_at: null,
  created_at: null,
  updated_at: null
)
```

