# ClerkHttpClient::CreateOrganizationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the new organization. May not contain URLs or HTML. |  |
| **created_by** | **String** | The ID of the User who will become the administrator for the new organization |  |
| **private_metadata** | **Object** | Metadata saved on the organization, accessible only from the Backend API | [optional] |
| **public_metadata** | **Object** | Metadata saved on the organization, read-only from the Frontend API and fully accessible (read/write) from the Backend API | [optional] |
| **slug** | **String** | A slug for the new organization. Can contain only lowercase alphanumeric characters and the dash \&quot;-\&quot;. Must be unique for the instance. | [optional] |
| **max_allowed_memberships** | **Integer** | The maximum number of memberships allowed for this organization | [optional] |
| **created_at** | **String** | A custom date/time denoting _when_ the organization was created, specified in RFC3339 format (e.g. &#x60;2012-10-20T07:15:20.902Z&#x60;). | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::CreateOrganizationRequest.new(
  name: null,
  created_by: null,
  private_metadata: null,
  public_metadata: null,
  slug: null,
  max_allowed_memberships: null,
  created_at: null
)
```

