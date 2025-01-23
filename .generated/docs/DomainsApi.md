# ClerkHttpClient::DomainsApi

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_domain**](DomainsApi.md#add_domain) | **POST** /domains | Add a domain |
| [**delete_domain**](DomainsApi.md#delete_domain) | **DELETE** /domains/{domain_id} | Delete a satellite domain |
| [**list_domains**](DomainsApi.md#list_domains) | **GET** /domains | List all instance domains |
| [**update_domain**](DomainsApi.md#update_domain) | **PATCH** /domains/{domain_id} | Update a domain |


## add_domain

> <Domain> add_domain(opts)

Add a domain

Add a new domain for your instance. Useful in the case of multi-domain instances, allows adding satellite domains to an instance. The new domain must have a `name`. The domain name can contain the port for development instances, like `localhost:3000`. At the moment, instances can have only one primary domain, so the `is_satellite` parameter must be set to `true`. If you're planning to configure the new satellite domain to run behind a proxy, pass the `proxy_url` parameter accordingly.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

opts = {
  add_domain_request: ClerkHttpClient::AddDomainRequest.new({name: 'name_example', is_satellite: false}) # AddDomainRequest | 
}

begin
  # Add a domain
  result = Clerk::SDK.domains.add_domain(opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.domains->add_domain: #{e}"
end
```

#### Using the `add_domain_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Domain>, Integer, Hash)> add_domain_with_http_info(opts)

```ruby
begin
  # Add a domain
  data, status_code, headers = Clerk::SDK.domains.add_domain_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Domain>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.domains->add_domain_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **add_domain_request** | [**AddDomainRequest**](AddDomainRequest.md) |  | [optional] |

### Return type

[**Domain**](Domain.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_domain

> <DeletedObject> delete_domain(domain_id)

Delete a satellite domain

Deletes a satellite domain for the instance. It is currently not possible to delete the instance's primary domain.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

domain_id = 'domain_id_example' # String | The ID of the domain that will be deleted. Must be a satellite domain.

begin
  # Delete a satellite domain
  result = Clerk::SDK.domains.delete_domain(domain_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.domains->delete_domain: #{e}"
end
```

#### Using the `delete_domain_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletedObject>, Integer, Hash)> delete_domain_with_http_info(domain_id)

```ruby
begin
  # Delete a satellite domain
  data, status_code, headers = Clerk::SDK.domains.delete_domain_with_http_info(domain_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletedObject>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.domains->delete_domain_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain_id** | **String** | The ID of the domain that will be deleted. Must be a satellite domain. |  |

### Return type

[**DeletedObject**](DeletedObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_domains

> <Domains> list_domains

List all instance domains

Use this endpoint to get a list of all domains for an instance. The response will contain the primary domain for the instance and any satellite domains. Each domain in the response contains information about the URLs where Clerk operates and the required CNAME targets.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end


begin
  # List all instance domains
  result = Clerk::SDK.domains.list_domains
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.domains->list_domains: #{e}"
end
```

#### Using the `list_domains_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Domains>, Integer, Hash)> list_domains_with_http_info

```ruby
begin
  # List all instance domains
  data, status_code, headers = Clerk::SDK.domains.list_domains_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Domains>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.domains->list_domains_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Domains**](Domains.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_domain

> <Domain> update_domain(domain_id, update_domain_request)

Update a domain

The `proxy_url` can be updated only for production instances. Update one of the instance's domains. Both primary and satellite domains can be updated. If you choose to use Clerk via proxy, use this endpoint to specify the `proxy_url`. Whenever you decide you'd rather switch to DNS setup for Clerk, simply set `proxy_url` to `null` for the domain. When you update a production instance's primary domain name, you have to make sure that you've completed all the necessary setup steps for DNS and emails to work. Expect downtime otherwise. Updating a primary domain's name will also update the instance's home origin, affecting the default application paths.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

domain_id = 'domain_id_example' # String | The ID of the domain that will be updated.
update_domain_request = ClerkHttpClient::UpdateDomainRequest.new # UpdateDomainRequest | 

begin
  # Update a domain
  result = Clerk::SDK.domains.update_domain(domain_id, update_domain_request)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.domains->update_domain: #{e}"
end
```

#### Using the `update_domain_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Domain>, Integer, Hash)> update_domain_with_http_info(domain_id, update_domain_request)

```ruby
begin
  # Update a domain
  data, status_code, headers = Clerk::SDK.domains.update_domain_with_http_info(domain_id, update_domain_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Domain>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.domains->update_domain_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain_id** | **String** | The ID of the domain that will be updated. |  |
| **update_domain_request** | [**UpdateDomainRequest**](UpdateDomainRequest.md) |  |  |

### Return type

[**Domain**](Domain.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

