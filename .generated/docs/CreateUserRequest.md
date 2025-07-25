# ClerkHttpClient::CreateUserRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_id** | **String** | The ID of the user as used in your external systems or your previous authentication solution. Must be unique across your instance. | [optional] |
| **first_name** | **String** | The first name to assign to the user | [optional] |
| **last_name** | **String** | The last name to assign to the user | [optional] |
| **email_address** | **Array&lt;String&gt;** | Email addresses to add to the user. Must be unique across your instance. The first email address will be set as the user&#39;s primary email address. | [optional] |
| **phone_number** | **Array&lt;String&gt;** | Phone numbers to add to the user. Must be unique across your instance. The first phone number will be set as the user&#39;s primary phone number. | [optional] |
| **web3_wallet** | **Array&lt;String&gt;** | Web3 wallets to add to the user. Must be unique across your instance. The first wallet will be set as the user&#39;s primary wallet. | [optional] |
| **username** | **String** | The username to give to the user. It must be unique across your instance. | [optional] |
| **password** | **String** | The plaintext password to give the user. Must be at least 8 characters long, and cannot be in any list of hacked passwords. | [optional] |
| **password_digest** | **String** | In case you already have the password digests and not the passwords, you can use them for the newly created user via this property. The digests should be generated with one of the supported algorithms. The hashing algorithm can be specified using the &#x60;password_hasher&#x60; property. | [optional] |
| **password_hasher** | **String** | The hashing algorithm that was used to generate the password digest.  The algorithms we support at the moment are [&#x60;bcrypt&#x60;](https://en.wikipedia.org/wiki/Bcrypt), [&#x60;bcrypt_sha256_django&#x60;](https://docs.djangoproject.com/en/4.0/topics/auth/passwords/), [&#x60;md5&#x60;](https://en.wikipedia.org/wiki/MD5), &#x60;pbkdf2_sha1&#x60;, &#x60;pbkdf2_sha256&#x60;, [&#x60;pbkdf2_sha256_django&#x60;](https://docs.djangoproject.com/en/4.0/topics/auth/passwords/), [&#x60;phpass&#x60;](https://www.openwall.com/phpass/), &#x60;md5_phpass&#x60;, [&#x60;scrypt_firebase&#x60;](https://firebaseopensource.com/projects/firebase/scrypt/), [&#x60;scrypt_werkzeug&#x60;](https://werkzeug.palletsprojects.com/en/3.0.x/utils/#werkzeug.security.generate_password_hash), [&#x60;sha256&#x60;](https://en.wikipedia.org/wiki/SHA-2), [&#x60;ldap_ssha&#x60;](https://www.openldap.org/faq/data/cache/347.html) and the [&#x60;argon2&#x60;](https://argon2.online/) variants: &#x60;argon2i&#x60; and &#x60;argon2id&#x60;.  Each of the supported hashers expects the incoming digest to be in a particular format. See the [Clerk docs](https://clerk.com/docs/references/backend/user/create-user) for more information. | [optional] |
| **skip_password_checks** | **Boolean** | When set to &#x60;true&#x60; all password checks are skipped. It is recommended to use this method only when migrating plaintext passwords to Clerk. Upon migration the user base should be prompted to pick stronger password. | [optional] |
| **skip_password_requirement** | **Boolean** | When set to &#x60;true&#x60;, &#x60;password&#x60; is not required anymore when creating the user and can be omitted. This is useful when you are trying to create a user that doesn&#39;t have a password, in an instance that is using passwords. Please note that you cannot use this flag if password is the only way for a user to sign into your instance. | [optional] |
| **totp_secret** | **String** | In case TOTP is configured on the instance, you can provide the secret to enable it on the newly created user without the need to reset it. Please note that currently the supported options are: * Period: 30 seconds * Code length: 6 digits * Algorithm: SHA1 | [optional] |
| **backup_codes** | **Array&lt;String&gt;** | If Backup Codes are configured on the instance, you can provide them to enable it on the newly created user without the need to reset them. You must provide the backup codes in plain format or the corresponding bcrypt digest. | [optional] |
| **public_metadata** | **Hash&lt;String, Object&gt;** | Metadata saved on the user, that is visible to both your Frontend and Backend APIs | [optional] |
| **private_metadata** | **Hash&lt;String, Object&gt;** | Metadata saved on the user, that is only visible to your Backend API | [optional] |
| **unsafe_metadata** | **Hash&lt;String, Object&gt;** | Metadata saved on the user, that can be updated from both the Frontend and Backend APIs. Note: Since this data can be modified from the frontend, it is not guaranteed to be safe. | [optional] |
| **delete_self_enabled** | **Boolean** | If enabled, user can delete themselves via FAPI.  | [optional] |
| **legal_accepted_at** | **String** | A custom timestamp denoting _when_ the user accepted legal requirements, specified in RFC3339 format (e.g. &#x60;2012-10-20T07:15:20.902Z&#x60;). | [optional] |
| **skip_legal_checks** | **Boolean** | When set to &#x60;true&#x60; all legal checks are skipped. It is not recommended to skip legal checks unless you are migrating a user to Clerk. | [optional] |
| **create_organization_enabled** | **Boolean** | If enabled, user can create organizations via FAPI.  | [optional] |
| **create_organizations_limit** | **Integer** | The maximum number of organizations the user can create. 0 means unlimited.  | [optional] |
| **created_at** | **String** | A custom date/time denoting _when_ the user signed up to the application, specified in RFC3339 format (e.g. &#x60;2012-10-20T07:15:20.902Z&#x60;). | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::CreateUserRequest.new(
  external_id: null,
  first_name: null,
  last_name: null,
  email_address: null,
  phone_number: null,
  web3_wallet: null,
  username: null,
  password: null,
  password_digest: null,
  password_hasher: null,
  skip_password_checks: null,
  skip_password_requirement: null,
  totp_secret: null,
  backup_codes: null,
  public_metadata: null,
  private_metadata: null,
  unsafe_metadata: null,
  delete_self_enabled: null,
  legal_accepted_at: null,
  skip_legal_checks: null,
  create_organization_enabled: null,
  create_organizations_limit: null,
  created_at: null
)
```

