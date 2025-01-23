# ClerkHttpClient::BetaFeaturesApi

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**change_production_instance_domain**](BetaFeaturesApi.md#change_production_instance_domain) | **POST** /instance/change_domain | Update production instance domain |
| [**update_instance_auth_config**](BetaFeaturesApi.md#update_instance_auth_config) | **PATCH** /beta_features/instance_settings | Update instance settings |
| [**update_production_instance_domain**](BetaFeaturesApi.md#update_production_instance_domain) | **PUT** /beta_features/domain | Update production instance domain |


## change_production_instance_domain

> change_production_instance_domain(opts)

Update production instance domain

Change the domain of a production instance.  Changing the domain requires updating the [DNS records](https://clerk.com/docs/deployments/overview#dns-records) accordingly, deploying new [SSL certificates](https://clerk.com/docs/deployments/overview#deploy), updating your Social Connection's redirect URLs and setting the new keys in your code.  WARNING: Changing your domain will invalidate all current user sessions (i.e. users will be logged out). Also, while your application is being deployed, a small downtime is expected to occur.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

opts = {
  change_production_instance_domain_request: ClerkHttpClient::ChangeProductionInstanceDomainRequest.new # ChangeProductionInstanceDomainRequest | 
}

begin
  # Update production instance domain
  Clerk::SDK.beta_features.change_production_instance_domain(opts)
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.beta_features->change_production_instance_domain: #{e}"
end
```

#### Using the `change_production_instance_domain_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> change_production_instance_domain_with_http_info(opts)

```ruby
begin
  # Update production instance domain
  data, status_code, headers = Clerk::SDK.beta_features.change_production_instance_domain_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.beta_features->change_production_instance_domain_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **change_production_instance_domain_request** | [**ChangeProductionInstanceDomainRequest**](ChangeProductionInstanceDomainRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_instance_auth_config

> <UpdateInstanceAuthConfig200Response> update_instance_auth_config(opts)

Update instance settings

Updates the settings of an instance

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

opts = {
  update_instance_auth_config_request: ClerkHttpClient::UpdateInstanceAuthConfigRequest.new # UpdateInstanceAuthConfigRequest | 
}

begin
  # Update instance settings
  result = Clerk::SDK.beta_features.update_instance_auth_config(opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.beta_features->update_instance_auth_config: #{e}"
end
```

#### Using the `update_instance_auth_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateInstanceAuthConfig200Response>, Integer, Hash)> update_instance_auth_config_with_http_info(opts)

```ruby
begin
  # Update instance settings
  data, status_code, headers = Clerk::SDK.beta_features.update_instance_auth_config_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateInstanceAuthConfig200Response>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.beta_features->update_instance_auth_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_instance_auth_config_request** | [**UpdateInstanceAuthConfigRequest**](UpdateInstanceAuthConfigRequest.md) |  | [optional] |

### Return type

[**UpdateInstanceAuthConfig200Response**](UpdateInstanceAuthConfig200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_production_instance_domain

> update_production_instance_domain(opts)

Update production instance domain

Change the domain of a production instance.  Changing the domain requires updating the [DNS records](https://clerk.com/docs/deployments/overview#dns-records) accordingly, deploying new [SSL certificates](https://clerk.com/docs/deployments/overview#deploy), updating your Social Connection's redirect URLs and setting the new keys in your code.  WARNING: Changing your domain will invalidate all current user sessions (i.e. users will be logged out). Also, while your application is being deployed, a small downtime is expected to occur.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

opts = {
  update_production_instance_domain_request: ClerkHttpClient::UpdateProductionInstanceDomainRequest.new # UpdateProductionInstanceDomainRequest | 
}

begin
  # Update production instance domain
  Clerk::SDK.beta_features.update_production_instance_domain(opts)
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.beta_features->update_production_instance_domain: #{e}"
end
```

#### Using the `update_production_instance_domain_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_production_instance_domain_with_http_info(opts)

```ruby
begin
  # Update production instance domain
  data, status_code, headers = Clerk::SDK.beta_features.update_production_instance_domain_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.beta_features->update_production_instance_domain_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_production_instance_domain_request** | [**UpdateProductionInstanceDomainRequest**](UpdateProductionInstanceDomainRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

