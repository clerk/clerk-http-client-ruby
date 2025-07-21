# Clerk::SDK.organization_domains

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_organization_domain**](OrganizationDomainsApi.md#create_organization_domain) | **POST** /organizations/{organization_id}/domains | Create a new organization domain. |
| [**delete_organization_domain**](OrganizationDomainsApi.md#delete_organization_domain) | **DELETE** /organizations/{organization_id}/domains/{domain_id} | Remove a domain from an organization. |
| [**list_all_organization_domains**](OrganizationDomainsApi.md#list_all_organization_domains) | **GET** /organization_domains | List all organization domains |
| [**list_organization_domains**](OrganizationDomainsApi.md#list_organization_domains) | **GET** /organizations/{organization_id}/domains | Get a list of all domains of an organization. |
| [**update_organization_domain**](OrganizationDomainsApi.md#update_organization_domain) | **PATCH** /organizations/{organization_id}/domains/{domain_id} | Update an organization domain. |


## create_organization_domain

> <OrganizationDomain> create_organization_domain(organization_id, create_organization_domain_request)

Create a new organization domain.

Creates a new organization domain. By default the domain is verified, but can be optionally set to unverified.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

organization_id = 'organization_id_example' # String | The ID of the organization where the new domain will be created.
create_organization_domain_request = ClerkHttpClient::CreateOrganizationDomainRequest.new # CreateOrganizationDomainRequest | 

begin
  # Create a new organization domain.
  result = Clerk::SDK.organization_domains.create_organization_domain(organization_id, create_organization_domain_request)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organization_domains->create_organization_domain: #{e}"
end
```

#### Using the `create_organization_domain_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganizationDomain>, Integer, Hash)> create_organization_domain_with_http_info(organization_id, create_organization_domain_request)

```ruby
begin
  # Create a new organization domain.
  data, status_code, headers = Clerk::SDK.organization_domains.create_organization_domain_with_http_info(organization_id, create_organization_domain_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganizationDomain>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organization_domains->create_organization_domain_with_http_info: #{e}"
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
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

organization_id = 'organization_id_example' # String | The ID of the organization the domain belongs to
domain_id = 'domain_id_example' # String | The ID of the domain

begin
  # Remove a domain from an organization.
  result = Clerk::SDK.organization_domains.delete_organization_domain(organization_id, domain_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organization_domains->delete_organization_domain: #{e}"
end
```

#### Using the `delete_organization_domain_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletedObject>, Integer, Hash)> delete_organization_domain_with_http_info(organization_id, domain_id)

```ruby
begin
  # Remove a domain from an organization.
  data, status_code, headers = Clerk::SDK.organization_domains.delete_organization_domain_with_http_info(organization_id, domain_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletedObject>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organization_domains->delete_organization_domain_with_http_info: #{e}"
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


## list_all_organization_domains

> <OrganizationDomains> list_all_organization_domains(opts)

List all organization domains

Retrieves a list of all organization domains within the current instance. This endpoint can be used to list all domains across all organizations or filter domains by organization, verification status, enrollment mode, or search query.  The response includes pagination information and details about each domain including its verification status, enrollment mode, and associated counts. 

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

opts = {
  organization_id: 'organization_id_example', # String | The ID of the organization to filter domains by
  verified: 'true', # String | Filter by verification status
  enrollment_mode: ['manual_invitation'], # Array<String> | Filter by enrollment mode
  query: 'query_example', # String | Search domains by name or organization ID. If the query starts with \"org_\", it will search by exact organization ID match. Otherwise, it performs a case-insensitive partial match on the domain name.  Note: An empty string or whitespace-only value is not allowed and will result in a validation error. 
  order_by: 'order_by_example', # String | Allows to return organization domains in a particular order. At the moment, you can order the returned domains by their `name` or `created_at`. In order to specify the direction, you can use the `+/-` symbols prepended to the property to order by. For example, if you want domains to be returned in descending order according to their `created_at` property, you can use `-created_at`. If you don't use `+` or `-`, then `+` is implied. Defaults to `-created_at`. 
  offset: 56, # Integer | Skip the first `offset` results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with `limit`.
  limit: 56 # Integer | Applies a limit to the number of results returned. Can be used for paginating the results together with `offset`.
}

begin
  # List all organization domains
  result = Clerk::SDK.organization_domains.list_all_organization_domains(opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organization_domains->list_all_organization_domains: #{e}"
end
```

#### Using the `list_all_organization_domains_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganizationDomains>, Integer, Hash)> list_all_organization_domains_with_http_info(opts)

```ruby
begin
  # List all organization domains
  data, status_code, headers = Clerk::SDK.organization_domains.list_all_organization_domains_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganizationDomains>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organization_domains->list_all_organization_domains_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization_id** | **String** | The ID of the organization to filter domains by | [optional] |
| **verified** | **String** | Filter by verification status | [optional] |
| **enrollment_mode** | [**Array&lt;String&gt;**](String.md) | Filter by enrollment mode | [optional] |
| **query** | **String** | Search domains by name or organization ID. If the query starts with \&quot;org_\&quot;, it will search by exact organization ID match. Otherwise, it performs a case-insensitive partial match on the domain name.  Note: An empty string or whitespace-only value is not allowed and will result in a validation error.  | [optional] |
| **order_by** | **String** | Allows to return organization domains in a particular order. At the moment, you can order the returned domains by their &#x60;name&#x60; or &#x60;created_at&#x60;. In order to specify the direction, you can use the &#x60;+/-&#x60; symbols prepended to the property to order by. For example, if you want domains to be returned in descending order according to their &#x60;created_at&#x60; property, you can use &#x60;-created_at&#x60;. If you don&#39;t use &#x60;+&#x60; or &#x60;-&#x60;, then &#x60;+&#x60; is implied. Defaults to &#x60;-created_at&#x60;.  | [optional][default to &#39;-created_at&#39;] |
| **offset** | **Integer** | Skip the first &#x60;offset&#x60; results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with &#x60;limit&#x60;. | [optional][default to 0] |
| **limit** | **Integer** | Applies a limit to the number of results returned. Can be used for paginating the results together with &#x60;offset&#x60;. | [optional][default to 10] |

### Return type

[**OrganizationDomains**](OrganizationDomains.md)

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
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

organization_id = 'organization_id_example' # String | The organization ID.
opts = {
  verified: 'verified_example', # String | Filter domains by their verification status. `true` or `false`
  enrollment_mode: 'enrollment_mode_example', # String | Filter domains by their enrollment mode
  limit: 56, # Integer | Applies a limit to the number of results returned. Can be used for paginating the results together with `offset`.
  offset: 56 # Integer | Skip the first `offset` results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with `limit`.
}

begin
  # Get a list of all domains of an organization.
  result = Clerk::SDK.organization_domains.list_organization_domains(organization_id, opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organization_domains->list_organization_domains: #{e}"
end
```

#### Using the `list_organization_domains_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganizationDomains>, Integer, Hash)> list_organization_domains_with_http_info(organization_id, opts)

```ruby
begin
  # Get a list of all domains of an organization.
  data, status_code, headers = Clerk::SDK.organization_domains.list_organization_domains_with_http_info(organization_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganizationDomains>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organization_domains->list_organization_domains_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization_id** | **String** | The organization ID. |  |
| **verified** | **String** | Filter domains by their verification status. &#x60;true&#x60; or &#x60;false&#x60; | [optional] |
| **enrollment_mode** | **String** | Filter domains by their enrollment mode | [optional] |
| **limit** | **Integer** | Applies a limit to the number of results returned. Can be used for paginating the results together with &#x60;offset&#x60;. | [optional][default to 10] |
| **offset** | **Integer** | Skip the first &#x60;offset&#x60; results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with &#x60;limit&#x60;. | [optional][default to 0] |

### Return type

[**OrganizationDomains**](OrganizationDomains.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_organization_domain

> <OrganizationDomain> update_organization_domain(organization_id, domain_id, update_organization_domain_request)

Update an organization domain.

Updates the properties of an existing organization domain.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

organization_id = 'organization_id_example' # String | The ID of the organization the domain belongs to
domain_id = 'domain_id_example' # String | The ID of the domain
update_organization_domain_request = ClerkHttpClient::UpdateOrganizationDomainRequest.new # UpdateOrganizationDomainRequest | 

begin
  # Update an organization domain.
  result = Clerk::SDK.organization_domains.update_organization_domain(organization_id, domain_id, update_organization_domain_request)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organization_domains->update_organization_domain: #{e}"
end
```

#### Using the `update_organization_domain_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganizationDomain>, Integer, Hash)> update_organization_domain_with_http_info(organization_id, domain_id, update_organization_domain_request)

```ruby
begin
  # Update an organization domain.
  data, status_code, headers = Clerk::SDK.organization_domains.update_organization_domain_with_http_info(organization_id, domain_id, update_organization_domain_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganizationDomain>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organization_domains->update_organization_domain_with_http_info: #{e}"
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

