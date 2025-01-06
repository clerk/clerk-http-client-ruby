# ClerkHttpClient::OrganizationDomainApi

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**update_organization_domain**](OrganizationDomainApi.md#update_organization_domain) | **PATCH** /organizations/{organization_id}/domains/{domain_id} | Update an organization domain. |


## update_organization_domain

> <OrganizationDomain> update_organization_domain(organization_id, domain_id, update_organization_domain_request)

Update an organization domain.

Updates the properties of an existing organization domain.

### Examples

```ruby
require 'time'
require 'clerk-http-client'
# setup authorization
ClerkHttpClient.configure do |config|
  # Configure Bearer authorization (sk_<environment>_<secret value>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ClerkHttpClient::OrganizationDomainApi.new
organization_id = 'organization_id_example' # String | The ID of the organization the domain belongs to
domain_id = 'domain_id_example' # String | The ID of the domain
update_organization_domain_request = ClerkHttpClient::UpdateOrganizationDomainRequest.new # UpdateOrganizationDomainRequest | 

begin
  # Update an organization domain.
  result = api_instance.update_organization_domain(organization_id, domain_id, update_organization_domain_request)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling OrganizationDomainApi->update_organization_domain: #{e}"
end
```

#### Using the update_organization_domain_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganizationDomain>, Integer, Hash)> update_organization_domain_with_http_info(organization_id, domain_id, update_organization_domain_request)

```ruby
begin
  # Update an organization domain.
  data, status_code, headers = api_instance.update_organization_domain_with_http_info(organization_id, domain_id, update_organization_domain_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganizationDomain>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling OrganizationDomainApi->update_organization_domain_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization_id** | **String** | The ID of the organization the domain belongs to |  |
| **domain_id** | **String** | The ID of the domain |  |
| **update_organization_domain_request** | [**UpdateOrganizationDomainRequest**](UpdateOrganizationDomainRequest.md) |  |  |

### Return type

[**OrganizationDomain**](OrganizationDomain.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

