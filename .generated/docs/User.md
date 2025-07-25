# ClerkHttpClient::User

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **object** | **String** | String representing the object&#39;s type. Objects of the same type share the same value.  |  |
| **external_id** | **String** |  |  |
| **primary_email_address_id** | **String** |  |  |
| **primary_phone_number_id** | **String** |  |  |
| **primary_web3_wallet_id** | **String** |  |  |
| **username** | **String** |  |  |
| **first_name** | **String** |  |  |
| **last_name** | **String** |  |  |
| **profile_image_url** | **String** |  | [optional] |
| **image_url** | **String** |  | [optional] |
| **has_image** | **Boolean** |  |  |
| **public_metadata** | **Hash&lt;String, Object&gt;** |  |  |
| **private_metadata** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **unsafe_metadata** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **email_addresses** | [**Array&lt;EmailAddress&gt;**](EmailAddress.md) |  |  |
| **phone_numbers** | [**Array&lt;PhoneNumber&gt;**](PhoneNumber.md) |  |  |
| **web3_wallets** | [**Array&lt;Web3Wallet&gt;**](Web3Wallet.md) |  |  |
| **passkeys** | [**Array&lt;SchemasPasskey&gt;**](SchemasPasskey.md) |  |  |
| **password_enabled** | **Boolean** |  |  |
| **two_factor_enabled** | **Boolean** |  |  |
| **totp_enabled** | **Boolean** |  |  |
| **backup_code_enabled** | **Boolean** |  |  |
| **mfa_enabled_at** | **Integer** | Unix timestamp of when MFA was last enabled for this user. It should be noted that this field is not nullified if MFA is disabled.  |  |
| **mfa_disabled_at** | **Integer** | Unix timestamp of when MFA was last disabled for this user. It should be noted that this field is not nullified if MFA is enabled again.  |  |
| **external_accounts** | [**Array&lt;ExternalAccountWithVerification&gt;**](ExternalAccountWithVerification.md) |  |  |
| **saml_accounts** | [**Array&lt;SAMLAccount&gt;**](SAMLAccount.md) |  |  |
| **last_sign_in_at** | **Integer** | Unix timestamp of last sign-in.  |  |
| **banned** | **Boolean** | Flag to denote whether user is banned or not.  |  |
| **locked** | **Boolean** | Flag to denote whether user is currently locked, i.e. restricted from signing in or not.  |  |
| **lockout_expires_in_seconds** | **Integer** | The number of seconds remaining until the lockout period expires for a locked user. A null value for a locked user indicates that lockout never expires.  |  |
| **verification_attempts_remaining** | **Integer** | The number of verification attempts remaining until the user is locked. Null if account lockout is not enabled. Note: if a user is locked explicitly via the Backend API, they may still have verification attempts remaining.  |  |
| **updated_at** | **Integer** | Unix timestamp of last update.  |  |
| **created_at** | **Integer** | Unix timestamp of creation.  |  |
| **delete_self_enabled** | **Boolean** | If enabled, user can delete themselves via FAPI.  |  |
| **create_organization_enabled** | **Boolean** | If enabled, user can create organizations via FAPI.  |  |
| **create_organizations_limit** | **Integer** | The maximum number of organizations the user can create. 0 means unlimited.  | [optional] |
| **last_active_at** | **Integer** | Unix timestamp of the latest session activity, with day precision.  |  |
| **legal_accepted_at** | **Integer** | Unix timestamp of when the user accepted the legal requirements.  |  |

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

