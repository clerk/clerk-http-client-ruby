# ClerkHttpClient::OrganizationDomainApi

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**update**](OrganizationDomainApi.md#update) | **PATCH** /organizations/{organization_id}/domains/{domain_id} | Update an organization domain. |


## update

> <OrganizationDomain> update_organization_domain(organization_id, domain_id, update_organization_domain_request)

Update an organization domain.

Updates the properties of an existing organization domain.

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::OrganizationDomainApi.new
organization_id = 'organization_id_example' # String | The ID of the organization the domain belongs to
domain_id = 'domain_id_example' # String | The ID of the domain
update_organization_domain_request = ClerkHttpClient::UpdateOrganizationDomainRequest.new # UpdateOrganizationDomainRequest | 

begin
  # Update an organization domain.
  result = sdk.update(organization_id, domain_id, update_organization_domain_request)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling OrganizationDomainApi->update: #{e}"
end
```

#### Using the `update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganizationDomain>, Integer, Hash)> update_organization_domain_with_http_info(organization_id, domain_id, update_organization_domain_request)

```ruby
begin
  # Update an organization domain.
  data, status_code, headers = sdk.update_with_http_info(organization_id, domain_id, update_organization_domain_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganizationDomain>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling OrganizationDomainApi->update_with_http_info: #{e}"
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

