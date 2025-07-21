# ClerkHttpClient::ExternalAccountWithVerification

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | String representing the object&#39;s type. Objects of the same type share the same value. |  |
| **id** | **String** |  |  |
| **provider** | **String** |  |  |
| **identification_id** | **String** |  |  |
| **provider_user_id** | **String** | The unique ID of the user in the external provider&#39;s system |  |
| **approved_scopes** | **String** |  |  |
| **email_address** | **String** |  |  |
| **first_name** | **String** |  |  |
| **last_name** | **String** |  |  |
| **avatar_url** | **String** | Please use &#x60;image_url&#x60; instead | [optional] |
| **image_url** | **String** |  | [optional] |
| **username** | **String** |  | [optional] |
| **phone_number** | **String** |  | [optional] |
| **public_metadata** | **Hash&lt;String, Object&gt;** |  |  |
| **label** | **String** |  | [optional] |
| **created_at** | **Integer** | Unix timestamp of creation  |  |
| **updated_at** | **Integer** | Unix timestamp of creation  |  |
| **verification** | [**ExternalAccountWithVerificationVerification**](ExternalAccountWithVerificationVerification.md) |  |  |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::ExternalAccountWithVerification.new(
  object: null,
  id: null,
  provider: null,
  identification_id: null,
  provider_user_id: null,
  approved_scopes: null,
  email_address: null,
  first_name: null,
  last_name: null,
  avatar_url: null,
  image_url: null,
  username: null,
  phone_number: null,
  public_metadata: null,
  label: null,
  created_at: null,
  updated_at: null,
  verification: null
)
```

