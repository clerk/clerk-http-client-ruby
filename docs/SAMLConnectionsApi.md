# ClerkBackend::SAMLConnectionsApi

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_saml_connection**](SAMLConnectionsApi.md#create_saml_connection) | **POST** /saml_connections | Create a SAML Connection |
| [**delete_saml_connection**](SAMLConnectionsApi.md#delete_saml_connection) | **DELETE** /saml_connections/{saml_connection_id} | Delete a SAML Connection |
| [**get_saml_connection**](SAMLConnectionsApi.md#get_saml_connection) | **GET** /saml_connections/{saml_connection_id} | Retrieve a SAML Connection by ID |
| [**list_saml_connections**](SAMLConnectionsApi.md#list_saml_connections) | **GET** /saml_connections | Get a list of SAML Connections for an instance |
| [**update_saml_connection**](SAMLConnectionsApi.md#update_saml_connection) | **PATCH** /saml_connections/{saml_connection_id} | Update a SAML Connection |


## create_saml_connection

> <SchemasSAMLConnection> create_saml_connection(opts)

Create a SAML Connection

Create a new SAML Connection.

### Examples

```ruby
require 'time'
require 'clerk-backend'
# setup authorization
ClerkBackend.configure do |config|
  # Configure Bearer authorization (sk_<environment>_<secret value>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ClerkBackend::SAMLConnectionsApi.new
opts = {
  create_saml_connection_request: ClerkBackend::CreateSAMLConnectionRequest.new({name: 'name_example', domain: 'domain_example', provider: 'saml_custom'}) # CreateSAMLConnectionRequest | 
}

begin
  # Create a SAML Connection
  result = api_instance.create_saml_connection(opts)
  p result
rescue ClerkBackend::ApiError => e
  puts "Error when calling SAMLConnectionsApi->create_saml_connection: #{e}"
end
```

#### Using the create_saml_connection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SchemasSAMLConnection>, Integer, Hash)> create_saml_connection_with_http_info(opts)

```ruby
begin
  # Create a SAML Connection
  data, status_code, headers = api_instance.create_saml_connection_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SchemasSAMLConnection>
rescue ClerkBackend::ApiError => e
  puts "Error when calling SAMLConnectionsApi->create_saml_connection_with_http_info: #{e}"
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


## delete_saml_connection

> <DeletedObject> delete_saml_connection(saml_connection_id)

Delete a SAML Connection

Deletes the SAML Connection whose ID matches the provided `id` in the path.

### Examples

```ruby
require 'time'
require 'clerk-backend'
# setup authorization
ClerkBackend.configure do |config|
  # Configure Bearer authorization (sk_<environment>_<secret value>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ClerkBackend::SAMLConnectionsApi.new
saml_connection_id = 'saml_connection_id_example' # String | The ID of the SAML Connection to delete

begin
  # Delete a SAML Connection
  result = api_instance.delete_saml_connection(saml_connection_id)
  p result
rescue ClerkBackend::ApiError => e
  puts "Error when calling SAMLConnectionsApi->delete_saml_connection: #{e}"
end
```

#### Using the delete_saml_connection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletedObject>, Integer, Hash)> delete_saml_connection_with_http_info(saml_connection_id)

```ruby
begin
  # Delete a SAML Connection
  data, status_code, headers = api_instance.delete_saml_connection_with_http_info(saml_connection_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletedObject>
rescue ClerkBackend::ApiError => e
  puts "Error when calling SAMLConnectionsApi->delete_saml_connection_with_http_info: #{e}"
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


## get_saml_connection

> <SchemasSAMLConnection> get_saml_connection(saml_connection_id)

Retrieve a SAML Connection by ID

Fetches the SAML Connection whose ID matches the provided `saml_connection_id` in the path.

### Examples

```ruby
require 'time'
require 'clerk-backend'
# setup authorization
ClerkBackend.configure do |config|
  # Configure Bearer authorization (sk_<environment>_<secret value>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ClerkBackend::SAMLConnectionsApi.new
saml_connection_id = 'saml_connection_id_example' # String | The ID of the SAML Connection

begin
  # Retrieve a SAML Connection by ID
  result = api_instance.get_saml_connection(saml_connection_id)
  p result
rescue ClerkBackend::ApiError => e
  puts "Error when calling SAMLConnectionsApi->get_saml_connection: #{e}"
end
```

#### Using the get_saml_connection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SchemasSAMLConnection>, Integer, Hash)> get_saml_connection_with_http_info(saml_connection_id)

```ruby
begin
  # Retrieve a SAML Connection by ID
  data, status_code, headers = api_instance.get_saml_connection_with_http_info(saml_connection_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SchemasSAMLConnection>
rescue ClerkBackend::ApiError => e
  puts "Error when calling SAMLConnectionsApi->get_saml_connection_with_http_info: #{e}"
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


## list_saml_connections

> <SAMLConnections> list_saml_connections(opts)

Get a list of SAML Connections for an instance

Returns the list of SAML Connections for an instance. Results can be paginated using the optional `limit` and `offset` query parameters. The SAML Connections are ordered by descending creation date and the most recent will be returned first.

### Examples

```ruby
require 'time'
require 'clerk-backend'
# setup authorization
ClerkBackend.configure do |config|
  # Configure Bearer authorization (sk_<environment>_<secret value>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ClerkBackend::SAMLConnectionsApi.new
opts = {
  limit: 8.14, # Float | Applies a limit to the number of results returned. Can be used for paginating the results together with `offset`.
  offset: 8.14 # Float | Skip the first `offset` results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with `limit`.
}

begin
  # Get a list of SAML Connections for an instance
  result = api_instance.list_saml_connections(opts)
  p result
rescue ClerkBackend::ApiError => e
  puts "Error when calling SAMLConnectionsApi->list_saml_connections: #{e}"
end
```

#### Using the list_saml_connections_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SAMLConnections>, Integer, Hash)> list_saml_connections_with_http_info(opts)

```ruby
begin
  # Get a list of SAML Connections for an instance
  data, status_code, headers = api_instance.list_saml_connections_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SAMLConnections>
rescue ClerkBackend::ApiError => e
  puts "Error when calling SAMLConnectionsApi->list_saml_connections_with_http_info: #{e}"
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


## update_saml_connection

> <SchemasSAMLConnection> update_saml_connection(saml_connection_id, update_saml_connection_request)

Update a SAML Connection

Updates the SAML Connection whose ID matches the provided `id` in the path.

### Examples

```ruby
require 'time'
require 'clerk-backend'
# setup authorization
ClerkBackend.configure do |config|
  # Configure Bearer authorization (sk_<environment>_<secret value>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ClerkBackend::SAMLConnectionsApi.new
saml_connection_id = 'saml_connection_id_example' # String | The ID of the SAML Connection to update
update_saml_connection_request = ClerkBackend::UpdateSAMLConnectionRequest.new # UpdateSAMLConnectionRequest | 

begin
  # Update a SAML Connection
  result = api_instance.update_saml_connection(saml_connection_id, update_saml_connection_request)
  p result
rescue ClerkBackend::ApiError => e
  puts "Error when calling SAMLConnectionsApi->update_saml_connection: #{e}"
end
```

#### Using the update_saml_connection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SchemasSAMLConnection>, Integer, Hash)> update_saml_connection_with_http_info(saml_connection_id, update_saml_connection_request)

```ruby
begin
  # Update a SAML Connection
  data, status_code, headers = api_instance.update_saml_connection_with_http_info(saml_connection_id, update_saml_connection_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SchemasSAMLConnection>
rescue ClerkBackend::ApiError => e
  puts "Error when calling SAMLConnectionsApi->update_saml_connection_with_http_info: #{e}"
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

