# ClerkHttpClient::SchemasSAMLConnection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  |  |
| **id** | **String** |  |  |
| **name** | **String** |  |  |
| **domain** | **String** |  |  |
| **idp_entity_id** | **String** |  |  |
| **idp_sso_url** | **String** |  |  |
| **idp_certificate** | **String** |  |  |
| **idp_metadata_url** | **String** |  | [optional] |
| **idp_metadata** | **String** |  | [optional] |
| **acs_url** | **String** |  |  |
| **sp_entity_id** | **String** |  |  |
| **sp_metadata_url** | **String** |  |  |
| **attribute_mapping** | [**SchemasSAMLConnectionAttributeMapping**](SchemasSAMLConnectionAttributeMapping.md) |  | [optional] |
| **active** | **Boolean** |  |  |
| **provider** | **String** |  |  |
| **user_count** | **Integer** |  |  |
| **sync_user_attributes** | **Boolean** |  |  |
| **allow_subdomains** | **Boolean** |  | [optional] |
| **allow_idp_initiated** | **Boolean** |  | [optional] |
| **disable_additional_identifications** | **Boolean** |  | [optional] |
| **created_at** | **Integer** | Unix timestamp of creation.  |  |
| **updated_at** | **Integer** | Unix timestamp of last update.  |  |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::SchemasSAMLConnection.new(
  object: null,
  id: null,
  name: null,
  domain: null,
  idp_entity_id: null,
  idp_sso_url: null,
  idp_certificate: null,
  idp_metadata_url: null,
  idp_metadata: null,
  acs_url: null,
  sp_entity_id: null,
  sp_metadata_url: null,
  attribute_mapping: null,
  active: null,
  provider: null,
  user_count: null,
  sync_user_attributes: null,
  allow_subdomains: null,
  allow_idp_initiated: null,
  disable_additional_identifications: null,
  created_at: null,
  updated_at: null
)
```

