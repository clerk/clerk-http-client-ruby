# ClerkHttpClient::InstanceSettingsApi

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**update**](InstanceSettingsApi.md#update) | **PATCH** /instance | Update instance settings |
| [**update_organization_settings**](InstanceSettingsApi.md#update_organization_settings) | **PATCH** /instance/organization_settings | Update instance organization settings |
| [**update_restrictions**](InstanceSettingsApi.md#update_restrictions) | **PATCH** /instance/restrictions | Update instance restrictions |


## update

> update_instance(opts)

Update instance settings

Updates the settings of an instance

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::InstanceSettingsApi.new
opts = {
  update_instance_request: ClerkHttpClient::UpdateInstanceRequest.new # UpdateInstanceRequest | 
}

begin
  # Update instance settings
  sdk.update(opts)
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling InstanceSettingsApi->update: #{e}"
end
```

#### Using the `update_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_instance_with_http_info(opts)

```ruby
begin
  # Update instance settings
  data, status_code, headers = sdk.update_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling InstanceSettingsApi->update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_instance_request** | [**UpdateInstanceRequest**](UpdateInstanceRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_organization_settings

> <OrganizationSettings> update_instance_organization_settings(opts)

Update instance organization settings

Updates the organization settings of the instance

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::InstanceSettingsApi.new
opts = {
  update_instance_organization_settings_request: ClerkHttpClient::UpdateInstanceOrganizationSettingsRequest.new # UpdateInstanceOrganizationSettingsRequest | 
}

begin
  # Update instance organization settings
  result = sdk.update_organization_settings(opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling InstanceSettingsApi->update_organization_settings: #{e}"
end
```

#### Using the `update_organization_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganizationSettings>, Integer, Hash)> update_instance_organization_settings_with_http_info(opts)

```ruby
begin
  # Update instance organization settings
  data, status_code, headers = sdk.update_organization_settings_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganizationSettings>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling InstanceSettingsApi->update_organization_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_instance_organization_settings_request** | [**UpdateInstanceOrganizationSettingsRequest**](UpdateInstanceOrganizationSettingsRequest.md) |  | [optional] |

### Return type

[**OrganizationSettings**](OrganizationSettings.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_restrictions

> <InstanceRestrictions> update_instance_restrictions(opts)

Update instance restrictions

Updates the restriction settings of an instance

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::InstanceSettingsApi.new
opts = {
  update_instance_restrictions_request: ClerkHttpClient::UpdateInstanceRestrictionsRequest.new # UpdateInstanceRestrictionsRequest | 
}

begin
  # Update instance restrictions
  result = sdk.update_restrictions(opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling InstanceSettingsApi->update_restrictions: #{e}"
end
```

#### Using the `update_restrictions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InstanceRestrictions>, Integer, Hash)> update_instance_restrictions_with_http_info(opts)

```ruby
begin
  # Update instance restrictions
  data, status_code, headers = sdk.update_restrictions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InstanceRestrictions>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling InstanceSettingsApi->update_restrictions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_instance_restrictions_request** | [**UpdateInstanceRestrictionsRequest**](UpdateInstanceRestrictionsRequest.md) |  | [optional] |

### Return type

[**InstanceRestrictions**](InstanceRestrictions.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

