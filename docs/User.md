# ClerkHttpClient::User

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **object** | **String** | String representing the object&#39;s type. Objects of the same type share the same value.  | [optional] |
| **external_id** | **String** |  | [optional] |
| **primary_email_address_id** | **String** |  | [optional] |
| **primary_phone_number_id** | **String** |  | [optional] |
| **primary_web3_wallet_id** | **String** |  | [optional] |
| **username** | **String** |  | [optional] |
| **first_name** | **String** |  | [optional] |
| **last_name** | **String** |  | [optional] |
| **profile_image_url** | **String** |  | [optional] |
| **image_url** | **String** |  | [optional] |
| **has_image** | **Boolean** |  | [optional] |
| **public_metadata** | **Object** |  | [optional] |
| **private_metadata** | **Object** |  | [optional] |
| **unsafe_metadata** | **Object** |  | [optional] |
| **email_addresses** | [**Array&lt;EmailAddress&gt;**](EmailAddress.md) |  | [optional] |
| **phone_numbers** | [**Array&lt;PhoneNumber&gt;**](PhoneNumber.md) |  | [optional] |
| **web3_wallets** | [**Array&lt;Web3Wallet&gt;**](Web3Wallet.md) |  | [optional] |
| **passkeys** | [**Array&lt;SchemasPasskey&gt;**](SchemasPasskey.md) |  | [optional] |
| **password_enabled** | **Boolean** |  | [optional] |
| **two_factor_enabled** | **Boolean** |  | [optional] |
| **totp_enabled** | **Boolean** |  | [optional] |
| **backup_code_enabled** | **Boolean** |  | [optional] |
| **mfa_enabled_at** | **Integer** | Unix timestamp of when MFA was last enabled for this user. It should be noted that this field is not nullified if MFA is disabled.  | [optional] |
| **mfa_disabled_at** | **Integer** | Unix timestamp of when MFA was last disabled for this user. It should be noted that this field is not nullified if MFA is enabled again.  | [optional] |
| **external_accounts** | **Array&lt;Object&gt;** |  | [optional] |
| **saml_accounts** | [**Array&lt;SAMLAccount&gt;**](SAMLAccount.md) |  | [optional] |
| **last_sign_in_at** | **Integer** | Unix timestamp of last sign-in.  | [optional] |
| **banned** | **Boolean** | Flag to denote whether user is banned or not.  | [optional] |
| **locked** | **Boolean** | Flag to denote whether user is currently locked, i.e. restricted from signing in or not.  | [optional] |
| **lockout_expires_in_seconds** | **Integer** | The number of seconds remaining until the lockout period expires for a locked user. A null value for a locked user indicates that lockout never expires.  | [optional] |
| **verification_attempts_remaining** | **Integer** | The number of verification attempts remaining until the user is locked. Null if account lockout is not enabled. Note: if a user is locked explicitly via the Backend API, they may still have verification attempts remaining.  | [optional] |
| **updated_at** | **Integer** | Unix timestamp of last update.  | [optional] |
| **created_at** | **Integer** | Unix timestamp of creation.  | [optional] |
| **delete_self_enabled** | **Boolean** | If enabled, user can delete themselves via FAPI.  | [optional] |
| **create_organization_enabled** | **Boolean** | If enabled, user can create organizations via FAPI.  | [optional] |
| **create_organizations_limit** | **Integer** | The maximum number of organizations the user can create. 0 means unlimited.  | [optional] |
| **last_active_at** | **Integer** | Unix timestamp of the latest session activity, with day precision.  | [optional] |
| **legal_accepted_at** | **Integer** | Unix timestamp of when the user accepted the legal requirements.  | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::User.new(
  id: null,
  object: null,
  external_id: null,
  primary_email_address_id: null,
  primary_phone_number_id: null,
  primary_web3_wallet_id: null,
  username: null,
  first_name: null,
  last_name: null,
  profile_image_url: null,
  image_url: null,
  has_image: null,
  public_metadata: null,
  private_metadata: null,
  unsafe_metadata: null,
  email_addresses: null,
  phone_numbers: null,
  web3_wallets: null,
  passkeys: null,
  password_enabled: null,
  two_factor_enabled: null,
  totp_enabled: null,
  backup_code_enabled: null,
  mfa_enabled_at: null,
  mfa_disabled_at: null,
  external_accounts: null,
  saml_accounts: null,
  last_sign_in_at: null,
  banned: null,
  locked: null,
  lockout_expires_in_seconds: null,
  verification_attempts_remaining: null,
  updated_at: null,
  created_at: null,
  delete_self_enabled: null,
  create_organization_enabled: null,
  create_organizations_limit: null,
  last_active_at: 1700690400000,
  legal_accepted_at: 1700690400000
)
```

