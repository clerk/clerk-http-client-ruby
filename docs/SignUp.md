# ClerkHttpClient::SignUp

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  |  |
| **id** | **String** |  |  |
| **status** | **String** |  |  |
| **required_fields** | **Array&lt;String&gt;** |  | [optional] |
| **optional_fields** | **Array&lt;String&gt;** |  | [optional] |
| **missing_fields** | **Array&lt;String&gt;** |  | [optional] |
| **unverified_fields** | **Array&lt;String&gt;** |  | [optional] |
| **verifications** | **Object** |  | [optional] |
| **username** | **String** |  | [optional] |
| **email_address** | **String** |  | [optional] |
| **phone_number** | **String** |  | [optional] |
| **web3_wallet** | **String** |  | [optional] |
| **password_enabled** | **Boolean** |  |  |
| **first_name** | **String** |  | [optional] |
| **last_name** | **String** |  | [optional] |
| **unsafe_metadata** | **Object** |  | [optional] |
| **public_metadata** | **Object** |  | [optional] |
| **custom_action** | **Boolean** |  |  |
| **external_id** | **String** |  | [optional] |
| **created_session_id** | **String** |  | [optional] |
| **created_user_id** | **String** |  | [optional] |
| **abandon_at** | **Integer** |  |  |
| **external_account** | **Object** |  | [optional] |

## Example

```ruby
require 'clerk-http-client-ruby'

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
  abandon_at: null,
  external_account: null
)
```

