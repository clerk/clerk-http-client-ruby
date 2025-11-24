# Clerk::SDK.organization_permissions

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_organization_permission**](OrganizationPermissionsApi.md#create_organization_permission) | **POST** /organization_permissions | Create a new organization permission |
| [**delete_organization_permission**](OrganizationPermissionsApi.md#delete_organization_permission) | **DELETE** /organization_permissions/{permission_id} | Delete an organization permission |
| [**get_organization_permission**](OrganizationPermissionsApi.md#get_organization_permission) | **GET** /organization_permissions/{permission_id} | Get an organization permission |
| [**list_organization_permissions**](OrganizationPermissionsApi.md#list_organization_permissions) | **GET** /organization_permissions | Get a list of all organization permissions |
| [**update_organization_permission**](OrganizationPermissionsApi.md#update_organization_permission) | **PATCH** /organization_permissions/{permission_id} | Update an organization permission |


## create_organization_permission

> <Permission> create_organization_permission(create_organization_permission_request)

Create a new organization permission

Creates a new organization permission for the given instance.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

create_organization_permission_request = ClerkHttpClient::CreateOrganizationPermissionRequest.new({name: 'name_example', key: 'key_example'}) # CreateOrganizationPermissionRequest | 

begin
  # Create a new organization permission
  result = Clerk::SDK.organization_permissions.create_organization_permission(create_organization_permission_request)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organization_permissions->create_organization_permission: #{e}"
end
```

#### Using the `create_organization_permission_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Permission>, Integer, Hash)> create_organization_permission_with_http_info(create_organization_permission_request)

```ruby
begin
  # Create a new organization permission
  data, status_code, headers = Clerk::SDK.organization_permissions.create_organization_permission_with_http_info(create_organization_permission_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Permission>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organization_permissions->create_organization_permission_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_organization_permission_request** | [**CreateOrganizationPermissionRequest**](CreateOrganizationPermissionRequest.md) |  |  |

### Return type

[**Permission**](Permission.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_organization_permission

> <DeletedObject> delete_organization_permission(permission_id)

Delete an organization permission

Deletes an organization permission. System permissions cannot be deleted.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

permission_id = 'permission_id_example' # String | The ID of the permission to delete

begin
  # Delete an organization permission
  result = Clerk::SDK.organization_permissions.delete_organization_permission(permission_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organization_permissions->delete_organization_permission: #{e}"
end
```

#### Using the `delete_organization_permission_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletedObject>, Integer, Hash)> delete_organization_permission_with_http_info(permission_id)

```ruby
begin
  # Delete an organization permission
  data, status_code, headers = Clerk::SDK.organization_permissions.delete_organization_permission_with_http_info(permission_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletedObject>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organization_permissions->delete_organization_permission_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **permission_id** | **String** | The ID of the permission to delete |  |

### Return type

[**DeletedObject**](DeletedObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_organization_permission

> <Permission> get_organization_permission(permission_id)

Get an organization permission

Retrieves the details of an organization permission.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

permission_id = 'permission_id_example' # String | The ID of the permission to retrieve

begin
  # Get an organization permission
  result = Clerk::SDK.organization_permissions.get_organization_permission(permission_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organization_permissions->get_organization_permission: #{e}"
end
```

#### Using the `get_organization_permission_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Permission>, Integer, Hash)> get_organization_permission_with_http_info(permission_id)

```ruby
begin
  # Get an organization permission
  data, status_code, headers = Clerk::SDK.organization_permissions.get_organization_permission_with_http_info(permission_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Permission>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organization_permissions->get_organization_permission_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **permission_id** | **String** | The ID of the permission to retrieve |  |

### Return type

[**Permission**](Permission.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_organization_permissions

> <Permissions> list_organization_permissions(opts)

Get a list of all organization permissions

Retrieves all organization permissions for the given instance.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

opts = {
  query: 'query_example', # String | Returns organization permissions with ID, name, or key that match the given query. Uses exact match for permission ID and partial match for name and key.
  order_by: 'order_by_example', # String | Allows to return organization permissions in a particular order. At the moment, you can order the returned permissions by their `created_at`, `name`, or `key`. In order to specify the direction, you can use the `+/-` symbols prepended in the property to order by. For example, if you want permissions to be returned in descending order according to their `created_at` property, you can use `-created_at`.
  limit: 56, # Integer | Applies a limit to the number of results returned. Can be used for paginating the results together with `offset`.
  offset: 56 # Integer | Skip the first `offset` results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with `limit`.
}

begin
  # Get a list of all organization permissions
  result = Clerk::SDK.organization_permissions.list_organization_permissions(opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organization_permissions->list_organization_permissions: #{e}"
end
```

#### Using the `list_organization_permissions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Permissions>, Integer, Hash)> list_organization_permissions_with_http_info(opts)

```ruby
begin
  # Get a list of all organization permissions
  data, status_code, headers = Clerk::SDK.organization_permissions.list_organization_permissions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Permissions>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organization_permissions->list_organization_permissions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | **String** | Returns organization permissions with ID, name, or key that match the given query. Uses exact match for permission ID and partial match for name and key. | [optional] |
| **order_by** | **String** | Allows to return organization permissions in a particular order. At the moment, you can order the returned permissions by their &#x60;created_at&#x60;, &#x60;name&#x60;, or &#x60;key&#x60;. In order to specify the direction, you can use the &#x60;+/-&#x60; symbols prepended in the property to order by. For example, if you want permissions to be returned in descending order according to their &#x60;created_at&#x60; property, you can use &#x60;-created_at&#x60;. | [optional] |
| **limit** | **Integer** | Applies a limit to the number of results returned. Can be used for paginating the results together with &#x60;offset&#x60;. | [optional][default to 10] |
| **offset** | **Integer** | Skip the first &#x60;offset&#x60; results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with &#x60;limit&#x60;. | [optional][default to 0] |

### Return type

[**Permissions**](Permissions.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_organization_permission

> <Permission> update_organization_permission(permission_id, update_organization_permission_request)

Update an organization permission

Updates the properties of an existing organization permission. System permissions cannot be updated.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

permission_id = 'permission_id_example' # String | The ID of the permission to update
update_organization_permission_request = ClerkHttpClient::UpdateOrganizationPermissionRequest.new # UpdateOrganizationPermissionRequest | 

begin
  # Update an organization permission
  result = Clerk::SDK.organization_permissions.update_organization_permission(permission_id, update_organization_permission_request)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organization_permissions->update_organization_permission: #{e}"
end
```

#### Using the `update_organization_permission_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Permission>, Integer, Hash)> update_organization_permission_with_http_info(permission_id, update_organization_permission_request)

```ruby
begin
  # Update an organization permission
  data, status_code, headers = Clerk::SDK.organization_permissions.update_organization_permission_with_http_info(permission_id, update_organization_permission_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Permission>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organization_permissions->update_organization_permission_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **permission_id** | **String** | The ID of the permission to update |  |
| **update_organization_permission_request** | [**UpdateOrganizationPermissionRequest**](UpdateOrganizationPermissionRequest.md) |  |  |

### Return type

[**Permission**](Permission.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

