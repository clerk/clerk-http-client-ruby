# Clerk::SDK.saml_connections

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
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

opts = {
  create_saml_connection_request: ClerkHttpClient::CreateSAMLConnectionRequest.new({name: 'name_example', provider: 'saml_custom'}) # CreateSAMLConnectionRequest | 
}

begin
  # Create a SAML Connection
  result = Clerk::SDK.saml_connections.create_saml_connection(opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.saml_connections->create_saml_connection: #{e}"
end
```

#### Using the `create_saml_connection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SchemasSAMLConnection>, Integer, Hash)> create_saml_connection_with_http_info(opts)

```ruby
begin
  # Create a SAML Connection
  data, status_code, headers = Clerk::SDK.saml_connections.create_saml_connection_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SchemasSAMLConnection>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.saml_connections->create_saml_connection_with_http_info: #{e}"
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
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

saml_connection_id = 'saml_connection_id_example' # String | The ID of the SAML Connection to delete

begin
  # Delete a SAML Connection
  result = Clerk::SDK.saml_connections.delete_saml_connection(saml_connection_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.saml_connections->delete_saml_connection: #{e}"
end
```

#### Using the `delete_saml_connection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletedObject>, Integer, Hash)> delete_saml_connection_with_http_info(saml_connection_id)

```ruby
begin
  # Delete a SAML Connection
  data, status_code, headers = Clerk::SDK.saml_connections.delete_saml_connection_with_http_info(saml_connection_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletedObject>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.saml_connections->delete_saml_connection_with_http_info: #{e}"
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
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

saml_connection_id = 'saml_connection_id_example' # String | The ID of the SAML Connection

begin
  # Retrieve a SAML Connection by ID
  result = Clerk::SDK.saml_connections.get_saml_connection(saml_connection_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.saml_connections->get_saml_connection: #{e}"
end
```

#### Using the `get_saml_connection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SchemasSAMLConnection>, Integer, Hash)> get_saml_connection_with_http_info(saml_connection_id)

```ruby
begin
  # Retrieve a SAML Connection by ID
  data, status_code, headers = Clerk::SDK.saml_connections.get_saml_connection_with_http_info(saml_connection_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SchemasSAMLConnection>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.saml_connections->get_saml_connection_with_http_info: #{e}"
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
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

opts = {
  limit: 56, # Integer | Applies a limit to the number of results returned. Can be used for paginating the results together with `offset`.
  offset: 56, # Integer | Skip the first `offset` results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with `limit`.
  query: 'query_example', # String | Returns SAML connections that have a name that matches the given query, via case-insensitive partial match.
  order_by: 'order_by_example', # String | Sorts organizations memberships by phone_number, email_address, created_at, first_name, last_name or username. By prepending one of those values with + or -, we can choose to sort in ascending (ASC) or descending (DESC) order.
  organization_id: ['inner_example'] # Array<String> | Returns SAML connections that have an associated organization ID to the given organizations. For each organization id, the `+` and `-` can be prepended to the id, which denote whether the respective organization should be included or excluded from the result set. Accepts up to 100 organization ids.
}

begin
  # Get a list of SAML Connections for an instance
  result = Clerk::SDK.saml_connections.list_saml_connections(opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.saml_connections->list_saml_connections: #{e}"
end
```

#### Using the `list_saml_connections_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SAMLConnections>, Integer, Hash)> list_saml_connections_with_http_info(opts)

```ruby
begin
  # Get a list of SAML Connections for an instance
  data, status_code, headers = Clerk::SDK.saml_connections.list_saml_connections_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SAMLConnections>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.saml_connections->list_saml_connections_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Applies a limit to the number of results returned. Can be used for paginating the results together with &#x60;offset&#x60;. | [optional][default to 10] |
| **offset** | **Integer** | Skip the first &#x60;offset&#x60; results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with &#x60;limit&#x60;. | [optional][default to 0] |
| **query** | **String** | Returns SAML connections that have a name that matches the given query, via case-insensitive partial match. | [optional] |
| **order_by** | **String** | Sorts organizations memberships by phone_number, email_address, created_at, first_name, last_name or username. By prepending one of those values with + or -, we can choose to sort in ascending (ASC) or descending (DESC) order. | [optional] |
| **organization_id** | [**Array&lt;String&gt;**](String.md) | Returns SAML connections that have an associated organization ID to the given organizations. For each organization id, the &#x60;+&#x60; and &#x60;-&#x60; can be prepended to the id, which denote whether the respective organization should be included or excluded from the result set. Accepts up to 100 organization ids. | [optional] |

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
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

saml_connection_id = 'saml_connection_id_example' # String | The ID of the SAML Connection to update
update_saml_connection_request = ClerkHttpClient::UpdateSAMLConnectionRequest.new # UpdateSAMLConnectionRequest | 

begin
  # Update a SAML Connection
  result = Clerk::SDK.saml_connections.update_saml_connection(saml_connection_id, update_saml_connection_request)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.saml_connections->update_saml_connection: #{e}"
end
```

#### Using the `update_saml_connection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SchemasSAMLConnection>, Integer, Hash)> update_saml_connection_with_http_info(saml_connection_id, update_saml_connection_request)

```ruby
begin
  # Update a SAML Connection
  data, status_code, headers = Clerk::SDK.saml_connections.update_saml_connection_with_http_info(saml_connection_id, update_saml_connection_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SchemasSAMLConnection>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.saml_connections->update_saml_connection_with_http_info: #{e}"
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

