# ClerkHttpClient::CommercePayerResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | String representing the object&#39;s type. Objects of the same type share the same value. |  |
| **id** | **String** | Unique identifier for the payer. |  |
| **instance_id** | **String** | Unique identifier for the Clerk instance. |  |
| **user_id** | **String** | User ID for user-type payers. | [optional] |
| **first_name** | **String** | First name of the payer. |  |
| **last_name** | **String** | Last name of the payer. |  |
| **email** | **String** | Email address of the payer. |  |
| **organization_id** | **String** | Organization ID for org-type payers. | [optional] |
| **organization_name** | **String** | Organization name for org-type payers. | [optional] |
| **image_url** | **String** | URL of the payer&#39;s image/avatar. |  |
| **created_at** | **Integer** | Unix timestamp (in milliseconds) when the payer was created. |  |
| **updated_at** | **Integer** | Unix timestamp (in milliseconds) when the payer was last updated. |  |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::CommercePayerResponse.new(
  object: null,
  id: null,
  instance_id: null,
  user_id: null,
  first_name: null,
  last_name: null,
  email: null,
  organization_id: null,
  organization_name: null,
  image_url: null,
  created_at: null,
  updated_at: null
)
```

