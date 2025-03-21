# ClerkHttpClient::SignUp

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  |  |
| **id** | **String** |  |  |
| **status** | **String** |  |  |
| **required_fields** | **Array&lt;String&gt;** |  |  |
| **optional_fields** | **Array&lt;String&gt;** |  |  |
| **missing_fields** | **Array&lt;String&gt;** |  |  |
| **unverified_fields** | **Array&lt;String&gt;** |  |  |
| **verifications** | [**SignUpVerifications**](SignUpVerifications.md) |  |  |
| **username** | **String** |  |  |
| **email_address** | **String** |  |  |
| **phone_number** | **String** |  |  |
| **web3_wallet** | **String** |  |  |
| **password_enabled** | **Boolean** |  |  |
| **first_name** | **String** |  |  |
| **last_name** | **String** |  |  |
| **unsafe_metadata** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **public_metadata** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **custom_action** | **Boolean** |  |  |
| **external_id** | **String** |  |  |
| **created_session_id** | **String** |  |  |
| **created_user_id** | **String** |  |  |
| **abandon_at** | **Integer** | Unix timestamp at which the user abandoned the sign up attempt.  |  |
| **legal_accepted_at** | **Integer** | Unix timestamp at which the user accepted the legal requirements.  |  |
| **external_account** | **Object** |  | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::SignUp.new(
  object: null,
  id: null,
  status: null,
  required_fields: null,
  optional_fields: null,
  missing_fields: null,
  unverified_fields: null,
  verifications: null,
  username: null,
  email_address: null,
  phone_number: null,
  web3_wallet: null,
  password_enabled: null,
  first_name: null,
  last_name: null,
  unsafe_metadata: null,
  public_metadata: null,
  custom_action: null,
  external_id: null,
  created_session_id: null,
  created_user_id: null,
  abandon_at: 1700690400000,
  legal_accepted_at: 1700690400000,
  external_account: null
)
```

