# ClerkBackend::OrganizationDomainsApi

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_organization_domain**](OrganizationDomainsApi.md#create_organization_domain) | **POST** /organizations/{organization_id}/domains | Create a new organization domain. |
| [**delete_organization_domain**](OrganizationDomainsApi.md#delete_organization_domain) | **DELETE** /organizations/{organization_id}/domains/{domain_id} | Remove a domain from an organization. |
| [**list_organization_domains**](OrganizationDomainsApi.md#list_organization_domains) | **GET** /organizations/{organization_id}/domains | Get a list of all domains of an organization. |


## create_organization_domain

> <OrganizationDomain> create_organization_domain(organization_id, create_organization_domain_request)

Create a new organization domain.

Creates a new organization domain. By default the domain is verified, but can be optionally set to unverified.

### Examples

```ruby
require 'time'
require 'clerk-backend'
# setup authorization
ClerkBackend.configure do |config|
  # Configure Bearer authorization (sk_<environment>_<secret value>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ClerkBackend::OrganizationDomainsApi.new
organization_id = 'organization_id_example' # String | The ID of the organization where the new domain will be created.
create_organization_domain_request = ClerkBackend::CreateOrganizationDomainRequest.new # CreateOrganizationDomainRequest | 

begin
  # Create a new organization domain.
  result = api_instance.create_organization_domain(organization_id, create_organization_domain_request)
  p result
rescue ClerkBackend::ApiError => e
  puts "Error when calling OrganizationDomainsApi->create_organization_domain: #{e}"
end
```

#### Using the create_organization_domain_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganizationDomain>, Integer, Hash)> create_organization_domain_with_http_info(organization_id, create_organization_domain_request)

```ruby
begin
  # Create a new organization domain.
  data, status_code, headers = api_instance.create_organization_domain_with_http_info(organization_id, create_organization_domain_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganizationDomain>
rescue ClerkBackend::ApiError => e
  puts "Error when calling OrganizationDomainsApi->create_organization_domain_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization_id** | **String** | The ID of the organization where the new domain will be created. |  |
| **create_organization_domain_request** | [**CreateOrganizationDomainRequest**](CreateOrganizationDomainRequest.md) |  |  |

### Return type

[**OrganizationDomain**](OrganizationDomain.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_organization_domain

> <DeletedObject> delete_organization_domain(organization_id, domain_id)

Remove a domain from an organization.

Removes the given domain from the organization.

### Examples

```ruby
require 'time'
require 'clerk-backend'
# setup authorization
ClerkBackend.configure do |config|
  # Configure Bearer authorization (sk_<environment>_<secret value>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ClerkBackend::OrganizationDomainsApi.new
organization_id = 'organization_id_example' # String | The ID of the organization the domain belongs to
domain_id = 'domain_id_example' # String | The ID of the domain

begin
  # Remove a domain from an organization.
  result = api_instance.delete_organization_domain(organization_id, domain_id)
  p result
rescue ClerkBackend::ApiError => e
  puts "Error when calling OrganizationDomainsApi->delete_organization_domain: #{e}"
end
```

#### Using the delete_organization_domain_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletedObject>, Integer, Hash)> delete_organization_domain_with_http_info(organization_id, domain_id)

```ruby
begin
  # Remove a domain from an organization.
  data, status_code, headers = api_instance.delete_organization_domain_with_http_info(organization_id, domain_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletedObject>
rescue ClerkBackend::ApiError => e
  puts "Error when calling OrganizationDomainsApi->delete_organization_domain_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization_id** | **String** | The ID of the organization the domain belongs to |  |
| **domain_id** | **String** | The ID of the domain |  |

### Return type

[**DeletedObject**](DeletedObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_organization_domains

> <OrganizationDomains> list_organization_domains(organization_id, opts)

Get a list of all domains of an organization.

Get a list of all domains of an organization.

### Examples

```ruby
require 'time'
require 'clerk-backend'
# setup authorization
ClerkBackend.configure do |config|
  # Configure Bearer authorization (sk_<environment>_<secret value>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ClerkBackend::OrganizationDomainsApi.new
organization_id = 'organization_id_example' # String | The organization ID.
opts = {
  limit: 8.14, # Float | Applies a limit to the number of results returned. Can be used for paginating the results together with `offset`.
  offset: 8.14, # Float | Skip the first `offset` results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with `limit`.
  verified: 'verified_example', # String | Filter domains by their verification status. `true` or `false`
  enrollment_mode: 'enrollment_mode_example' # String | Filter domains by their enrollment mode
}

begin
  # Get a list of all domains of an organization.
  result = api_instance.list_organization_domains(organization_id, opts)
  p result
rescue ClerkBackend::ApiError => e
  puts "Error when calling OrganizationDomainsApi->list_organization_domains: #{e}"
end
```

#### Using the list_organization_domains_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganizationDomains>, Integer, Hash)> list_organization_domains_with_http_info(organization_id, opts)

```ruby
begin
  # Get a list of all domains of an organization.
  data, status_code, headers = api_instance.list_organization_domains_with_http_info(organization_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganizationDomains>
rescue ClerkBackend::ApiError => e
  puts "Error when calling OrganizationDomainsApi->list_organization_domains_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization_id** | **String** | The organization ID. |  |
| **limit** | **Float** | Applies a limit to the number of results returned. Can be used for paginating the results together with &#x60;offset&#x60;. | [optional][default to 10] |
| **offset** | **Float** | Skip the first &#x60;offset&#x60; results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with &#x60;limit&#x60;. | [optional][default to 0] |
| **verified** | **String** | Filter domains by their verification status. &#x60;true&#x60; or &#x60;false&#x60; | [optional] |
| **enrollment_mode** | **String** | Filter domains by their enrollment mode | [optional] |

### Return type

[**OrganizationDomains**](OrganizationDomains.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json
