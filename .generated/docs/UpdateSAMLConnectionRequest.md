# ClerkHttpClient::UpdateSAMLConnectionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the new SAML Connection | [optional] |
| **domain** | **String** | The domain to use for the new SAML Connection | [optional] |
| **domains** | **Array&lt;String&gt;** | A list of the domains on use for the SAML connection | [optional] |
| **idp_entity_id** | **String** | The entity id as provided by the IdP | [optional] |
| **idp_sso_url** | **String** | The SSO url as provided by the IdP | [optional] |
| **idp_certificate** | **String** | The x509 certificated as provided by the IdP | [optional] |
| **idp_metadata_url** | **String** | The URL which serves the IdP metadata. If present, it takes priority over the corresponding individual properties and replaces them | [optional] |
| **idp_metadata** | **String** | The XML content of the IdP metadata file. If present, it takes priority over the corresponding individual properties | [optional] |
| **organization_id** | **String** | The ID of the organization to which users of this SAML Connection will be added | [optional] |
| **attribute_mapping** | [**UpdateSAMLConnectionRequestAttributeMapping**](UpdateSAMLConnectionRequestAttributeMapping.md) |  | [optional] |
| **active** | **Boolean** | Activate or de-activate the SAML Connection | [optional] |
| **sync_user_attributes** | **Boolean** | Controls whether to update the user&#39;s attributes in each sign-in | [optional] |
| **allow_subdomains** | **Boolean** | Allow users with an email address subdomain to use this connection in order to authenticate | [optional] |
| **allow_idp_initiated** | **Boolean** | Enable or deactivate IdP-initiated flows | [optional] |
| **disable_additional_identifications** | **Boolean** | Enable or deactivate additional identifications | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::UpdateSAMLConnectionRequest.new(
  name: null,
  domain: null,
  domains: null,
  idp_entity_id: null,
  idp_sso_url: null,
  idp_certificate: null,
  idp_metadata_url: null,
  idp_metadata: null,
  organization_id: null,
  attribute_mapping: null,
  active: null,
  sync_user_attributes: null,
  allow_subdomains: null,
  allow_idp_initiated: null,
  disable_additional_identifications: null
)
```

