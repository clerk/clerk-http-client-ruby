# ClerkHttpClient::SAMLConnection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **name** | **String** |  |  |
| **domain** | **String** |  |  |
| **active** | **Boolean** |  |  |
| **provider** | **String** |  |  |
| **sync_user_attributes** | **Boolean** |  |  |
| **allow_subdomains** | **Boolean** |  | [optional] |
| **allow_idp_initiated** | **Boolean** |  | [optional] |
| **disable_additional_identifications** | **Boolean** |  | [optional] |
| **created_at** | **Integer** | Unix timestamp of creation.  |  |
| **updated_at** | **Integer** | Unix timestamp of last update.  |  |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::SAMLConnection.new(
  id: null,
  name: null,
  domain: null,
  active: null,
  provider: null,
  sync_user_attributes: null,
  allow_subdomains: null,
  allow_idp_initiated: null,
  disable_additional_identifications: null,
  created_at: null,
  updated_at: null
)
```

