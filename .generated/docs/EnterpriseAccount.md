# ClerkHttpClient::EnterpriseAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **object** | **String** | String representing the object&#39;s type. Objects of the same type share the same value.  |  |
| **protocol** | **String** | The authentication protocol used to sign in.  | [optional] |
| **provider** | **String** |  |  |
| **active** | **Boolean** |  |  |
| **email_address** | **String** |  |  |
| **first_name** | **String** |  | [optional] |
| **last_name** | **String** |  | [optional] |
| **provider_user_id** | **String** | The unique ID of the user in the external provider&#39;s system | [optional] |
| **enterprise_connection_id** | **String** |  | [optional] |
| **public_metadata** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **verification** | [**EnterpriseAccountVerification**](EnterpriseAccountVerification.md) |  |  |
| **enterprise_connection** | [**EnterpriseAccountEnterpriseConnection**](EnterpriseAccountEnterpriseConnection.md) |  | [optional] |
| **last_authenticated_at** | **Integer** | Unix timestamp of last authentication.  | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::EnterpriseAccount.new(
  id: null,
  object: null,
  protocol: null,
  provider: null,
  active: null,
  email_address: null,
  first_name: null,
  last_name: null,
  provider_user_id: null,
  enterprise_connection_id: null,
  public_metadata: null,
  verification: null,
  enterprise_connection: null,
  last_authenticated_at: null
)
```

