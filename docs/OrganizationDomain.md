# ClerkHttpClient::OrganizationDomain

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the organization domain | [optional] |
| **object** | **String** | String representing the object&#39;s type. Objects of the same type share the same value. Always &#x60;organization_domain&#x60;  | [optional] |
| **organization_id** | **String** | Unique identifier for the organization | [optional] |
| **name** | **String** | Name of the organization domain | [optional] |
| **enrollment_mode** | **String** | Mode of enrollment for the domain | [optional] |
| **affiliation_email_address** | **String** | Affiliation email address for the domain, if available. | [optional] |
| **verification** | [**OrganizationDomainVerification**](OrganizationDomainVerification.md) | Verification details for the domain | [optional] |
| **total_pending_invitations** | **Integer** | Total number of pending invitations associated with this domain | [optional] |
| **total_pending_suggestions** | **Integer** | Total number of pending suggestions associated with this domain | [optional] |
| **created_at** | **Integer** | Unix timestamp when the domain was created | [optional] |
| **updated_at** | **Integer** | Unix timestamp of the last update to the domain | [optional] |

## Example

```ruby
require 'clerk-http-client-ruby'

instance = ClerkHttpClient::OrganizationDomain.new(
  id: null,
  object: null,
  organization_id: null,
  name: null,
  enrollment_mode: null,
  affiliation_email_address: null,
  verification: null,
  total_pending_invitations: null,
  total_pending_suggestions: null,
  created_at: null,
  updated_at: null
)
```

