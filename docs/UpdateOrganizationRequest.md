# ClerkHttpClient::UpdateOrganizationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_metadata** | **Object** | Metadata saved on the organization, that is visible to both your frontend and backend. | [optional] |
| **private_metadata** | **Object** | Metadata saved on the organization that is only visible to your backend. | [optional] |
| **name** | **String** | The new name of the organization. May not contain URLs or HTML. | [optional] |
| **slug** | **String** | The new slug of the organization, which needs to be unique in the instance | [optional] |
| **max_allowed_memberships** | **Integer** | The maximum number of memberships allowed for this organization | [optional] |
| **admin_delete_enabled** | **Boolean** | If true, an admin can delete this organization with the Frontend API. | [optional] |
| **created_at** | **String** | A custom date/time denoting _when_ the organization was created, specified in RFC3339 format (e.g. &#x60;2012-10-20T07:15:20.902Z&#x60;). | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::UpdateOrganizationRequest.new(
  public_metadata: null,
  private_metadata: null,
  name: null,
  slug: null,
  max_allowed_memberships: null,
  admin_delete_enabled: null,
  created_at: null
)
```

