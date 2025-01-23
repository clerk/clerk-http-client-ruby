# ClerkHttpClient::CreateSAMLConnectionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name to use as a label for this SAML Connection |  |
| **domain** | **String** | The domain of your organization. Sign in flows using an email with this domain, will use this SAML Connection. |  |
| **provider** | **String** | The IdP provider of the connection. |  |
| **idp_entity_id** | **String** | The Entity ID as provided by the IdP | [optional] |
| **idp_sso_url** | **String** | The Single-Sign On URL as provided by the IdP | [optional] |
| **idp_certificate** | **String** | The X.509 certificate as provided by the IdP | [optional] |
| **idp_metadata_url** | **String** | The URL which serves the IdP metadata. If present, it takes priority over the corresponding individual properties | [optional] |
| **idp_metadata** | **String** | The XML content of the IdP metadata file. If present, it takes priority over the corresponding individual properties | [optional] |
| **organization_id** | **String** | The ID of the organization to which users of this SAML Connection will be added | [optional] |
| **attribute_mapping** | [**CreateSAMLConnectionRequestAttributeMapping**](CreateSAMLConnectionRequestAttributeMapping.md) |  | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::CreateSAMLConnectionRequest.new(
  name: null,
  domain: null,
  provider: null,
  idp_entity_id: null,
  idp_sso_url: null,
  idp_certificate: null,
  idp_metadata_url: null,
  idp_metadata: null,
  organization_id: null,
  attribute_mapping: null
)
```

