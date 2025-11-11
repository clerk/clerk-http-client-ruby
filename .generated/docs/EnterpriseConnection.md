# ClerkHttpClient::EnterpriseConnection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **protocol** | **String** |  |  |
| **provider** | **String** |  |  |
| **name** | **String** |  |  |
| **logo_public_url** | **String** |  |  |
| **domain** | **String** |  | [optional] |
| **domains** | **Array&lt;String&gt;** |  | [optional] |
| **active** | **Boolean** |  |  |
| **sync_user_attributes** | **Boolean** |  |  |
| **allow_subdomains** | **Boolean** |  |  |
| **allow_idp_initiated** | **Boolean** |  |  |
| **disable_additional_identifications** | **Boolean** |  |  |
| **created_at** | **Integer** | Unix timestamp of creation.  |  |
| **updated_at** | **Integer** | Unix timestamp of last update.  |  |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::EnterpriseConnection.new(
  id: null,
  protocol: null,
  provider: null,
  name: null,
  logo_public_url: null,
  domain: null,
  domains: null,
  active: null,
  sync_user_attributes: null,
  allow_subdomains: null,
  allow_idp_initiated: null,
  disable_additional_identifications: null,
  created_at: null,
  updated_at: null
)
```

