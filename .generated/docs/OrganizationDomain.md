# ClerkHttpClient::OrganizationDomain

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | String representing the object&#39;s type. Objects of the same type share the same value. Always &#x60;organization_domain&#x60;  |  |
| **id** | **String** | Unique identifier for the organization domain |  |
| **organization_id** | **String** | Unique identifier for the organization |  |
| **name** | **String** | Name of the organization domain |  |
| **enrollment_mode** | **String** | Mode of enrollment for the domain |  |
| **affiliation_email_address** | **String** | Affiliation email address for the domain, if available. |  |
| **verification** | [**OrganizationDomainVerification**](OrganizationDomainVerification.md) | Verification details for the domain |  |
| **total_pending_invitations** | **Integer** | Total number of pending invitations associated with this domain |  |
| **total_pending_suggestions** | **Integer** | Total number of pending suggestions associated with this domain |  |
| **created_at** | **Integer** | Unix timestamp when the domain was created |  |
| **updated_at** | **Integer** | Unix timestamp of the last update to the domain |  |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::OrganizationDomain.new(
  object: null,
  id: null,
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

