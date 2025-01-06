# ClerkHttpClient::SAMLAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **object** | **String** | String representing the object&#39;s type. Objects of the same type share the same value.  |  |
| **provider** | **String** |  |  |
| **active** | **Boolean** |  |  |
| **email_address** | **String** |  |  |
| **first_name** | **String** |  | [optional] |
| **last_name** | **String** |  | [optional] |
| **provider_user_id** | **String** |  | [optional] |
| **public_metadata** | **Object** |  | [optional] |
| **verification** | [**SAMLAccountVerification**](SAMLAccountVerification.md) |  |  |
| **saml_connection** | [**SAMLAccountSamlConnection**](SAMLAccountSamlConnection.md) |  | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::SAMLAccount.new(
  id: null,
  object: null,
  provider: null,
  active: null,
  email_address: null,
  first_name: null,
  last_name: null,
  provider_user_id: null,
  public_metadata: null,
  verification: null,
  saml_connection: null
)
```

