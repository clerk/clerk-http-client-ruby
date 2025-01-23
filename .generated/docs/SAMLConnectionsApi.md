# ClerkHttpClient::SAMLConnectionsApi

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create**](SAMLConnectionsApi.md#create) | **POST** /saml_connections | Create a SAML Connection |
| [**delete**](SAMLConnectionsApi.md#delete) | **DELETE** /saml_connections/{saml_connection_id} | Delete a SAML Connection |
| [**find**](SAMLConnectionsApi.md#find) | **GET** /saml_connections/{saml_connection_id} | Retrieve a SAML Connection by ID |
| [**all**](SAMLConnectionsApi.md#all) | **GET** /saml_connections | Get a list of SAML Connections for an instance |
| [**update**](SAMLConnectionsApi.md#update) | **PATCH** /saml_connections/{saml_connection_id} | Update a SAML Connection |


## create

> <SchemasSAMLConnection> create_saml_connection(opts)

Create a SAML Connection

Create a new SAML Connection.

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::SAMLConnectionsApi.new
opts = {
  create_saml_connection_request: ClerkHttpClient::CreateSAMLConnectionRequest.new({name: 'name_example', domain: 'domain_example', provider: 'saml_custom'}) # CreateSAMLConnectionRequest | 
}

begin
  # Create a SAML Connection
  result = sdk.create(opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling SAMLConnectionsApi->create: #{e}"
end
```

#### Using the `create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SchemasSAMLConnection>, Integer, Hash)> create_saml_connection_with_http_info(opts)

```ruby
begin
  # Create a SAML Connection
  data, status_code, headers = sdk.create_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SchemasSAMLConnection>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling SAMLConnectionsApi->create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_saml_connection_request** | [**CreateSAMLConnectionRequest**](CreateSAMLConnectionRequest.md) |  | [optional] |

### Return type

[**SchemasSAMLConnection**](SchemasSAMLConnection.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete

> <DeletedObject> delete_saml_connection(saml_connection_id)

Delete a SAML Connection

Deletes the SAML Connection whose ID matches the provided `id` in the path.

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::SAMLConnectionsApi.new
saml_connection_id = 'saml_connection_id_example' # String | The ID of the SAML Connection to delete

begin
  # Delete a SAML Connection
  result = sdk.delete(saml_connection_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling SAMLConnectionsApi->delete: #{e}"
end
```

#### Using the `delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletedObject>, Integer, Hash)> delete_saml_connection_with_http_info(saml_connection_id)

```ruby
begin
  # Delete a SAML Connection
  data, status_code, headers = sdk.delete_with_http_info(saml_connection_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletedObject>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling SAMLConnectionsApi->delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **saml_connection_id** | **String** | The ID of the SAML Connection to delete |  |

### Return type

[**DeletedObject**](DeletedObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## find

> <SchemasSAMLConnection> get_saml_connection(saml_connection_id)

Retrieve a SAML Connection by ID

Fetches the SAML Connection whose ID matches the provided `saml_connection_id` in the path.

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::SAMLConnectionsApi.new
saml_connection_id = 'saml_connection_id_example' # String | The ID of the SAML Connection

begin
  # Retrieve a SAML Connection by ID
  result = sdk.find(saml_connection_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling SAMLConnectionsApi->find: #{e}"
end
```

#### Using the `find_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SchemasSAMLConnection>, Integer, Hash)> get_saml_connection_with_http_info(saml_connection_id)

```ruby
begin
  # Retrieve a SAML Connection by ID
  data, status_code, headers = sdk.find_with_http_info(saml_connection_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SchemasSAMLConnection>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling SAMLConnectionsApi->find_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **saml_connection_id** | **String** | The ID of the SAML Connection |  |

### Return type

[**SchemasSAMLConnection**](SchemasSAMLConnection.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## all

> <SAMLConnections> list_saml_connections(opts)

Get a list of SAML Connections for an instance

Returns the list of SAML Connections for an instance. Results can be paginated using the optional `limit` and `offset` query parameters. The SAML Connections are ordered by descending creation date and the most recent will be returned first.

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::SAMLConnectionsApi.new
opts = {
  limit: 8.14, # Float | Applies a limit to the number of results returned. Can be used for paginating the results together with `offset`.
  offset: 8.14 # Float | Skip the first `offset` results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with `limit`.
}

begin
  # Get a list of SAML Connections for an instance
  result = sdk.all(opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling SAMLConnectionsApi->all: #{e}"
end
```

#### Using the `all_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SAMLConnections>, Integer, Hash)> list_saml_connections_with_http_info(opts)

```ruby
begin
  # Get a list of SAML Connections for an instance
  data, status_code, headers = sdk.all_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SAMLConnections>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling SAMLConnectionsApi->all_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Float** | Applies a limit to the number of results returned. Can be used for paginating the results together with &#x60;offset&#x60;. | [optional][default to 10] |
| **offset** | **Float** | Skip the first &#x60;offset&#x60; results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with &#x60;limit&#x60;. | [optional][default to 0] |

### Return type

[**SAMLConnections**](SAMLConnections.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update

> <SchemasSAMLConnection> update_saml_connection(saml_connection_id, update_saml_connection_request)

Update a SAML Connection

Updates the SAML Connection whose ID matches the provided `id` in the path.

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::SAMLConnectionsApi.new
saml_connection_id = 'saml_connection_id_example' # String | The ID of the SAML Connection to update
update_saml_connection_request = ClerkHttpClient::UpdateSAMLConnectionRequest.new # UpdateSAMLConnectionRequest | 

begin
  # Update a SAML Connection
  result = sdk.update(saml_connection_id, update_saml_connection_request)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling SAMLConnectionsApi->update: #{e}"
end
```

#### Using the `update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SchemasSAMLConnection>, Integer, Hash)> update_saml_connection_with_http_info(saml_connection_id, update_saml_connection_request)

```ruby
begin
  # Update a SAML Connection
  data, status_code, headers = sdk.update_with_http_info(saml_connection_id, update_saml_connection_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SchemasSAMLConnection>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling SAMLConnectionsApi->update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **saml_connection_id** | **String** | The ID of the SAML Connection to update |  |
| **update_saml_connection_request** | [**UpdateSAMLConnectionRequest**](UpdateSAMLConnectionRequest.md) |  |  |

### Return type

[**SchemasSAMLConnection**](SchemasSAMLConnection.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

