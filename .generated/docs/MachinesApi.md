# Clerk::SDK.machines

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_machine**](MachinesApi.md#create_machine) | **POST** /machines | Create a machine |
| [**create_machine_scope**](MachinesApi.md#create_machine_scope) | **POST** /machines/{machine_id}/scopes | Create a machine scope |
| [**delete_machine**](MachinesApi.md#delete_machine) | **DELETE** /machines/{machine_id} | Delete a machine |
| [**delete_machine_scope**](MachinesApi.md#delete_machine_scope) | **DELETE** /machines/{machine_id}/scopes/{other_machine_id} | Delete a machine scope |
| [**get_machine**](MachinesApi.md#get_machine) | **GET** /machines/{machine_id} | Retrieve a machine |
| [**get_machine_secret_key**](MachinesApi.md#get_machine_secret_key) | **GET** /machines/{machine_id}/secret_key | Retrieve a machine secret key |
| [**list_machines**](MachinesApi.md#list_machines) | **GET** /machines | Get a list of machines for an instance |
| [**update_machine**](MachinesApi.md#update_machine) | **PATCH** /machines/{machine_id} | Update a machine |


## create_machine

> <CreateMachine200Response> create_machine(opts)

Create a machine

Creates a new machine.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

opts = {
  create_machine_request: ClerkHttpClient::CreateMachineRequest.new({name: 'name_example'}) # CreateMachineRequest | 
}

begin
  # Create a machine
  result = Clerk::SDK.machines.create_machine(opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.machines->create_machine: #{e}"
end
```

#### Using the `create_machine_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateMachine200Response>, Integer, Hash)> create_machine_with_http_info(opts)

```ruby
begin
  # Create a machine
  data, status_code, headers = Clerk::SDK.machines.create_machine_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateMachine200Response>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.machines->create_machine_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_machine_request** | [**CreateMachineRequest**](CreateMachineRequest.md) |  | [optional] |

### Return type

[**CreateMachine200Response**](CreateMachine200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_machine_scope

> <MachineScope> create_machine_scope(machine_id, opts)

Create a machine scope

Creates a new machine scope, allowing the specified machine to access another machine. Maximum of 25 scopes per machine.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

machine_id = 'machine_id_example' # String | The ID of the machine that will have access to another machine
opts = {
  create_machine_scope_request: ClerkHttpClient::CreateMachineScopeRequest.new({to_machine_id: 'to_machine_id_example'}) # CreateMachineScopeRequest | 
}

begin
  # Create a machine scope
  result = Clerk::SDK.machines.create_machine_scope(machine_id, opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.machines->create_machine_scope: #{e}"
end
```

#### Using the `create_machine_scope_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MachineScope>, Integer, Hash)> create_machine_scope_with_http_info(machine_id, opts)

```ruby
begin
  # Create a machine scope
  data, status_code, headers = Clerk::SDK.machines.create_machine_scope_with_http_info(machine_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MachineScope>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.machines->create_machine_scope_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **machine_id** | **String** | The ID of the machine that will have access to another machine |  |
| **create_machine_scope_request** | [**CreateMachineScopeRequest**](CreateMachineScopeRequest.md) |  | [optional] |

### Return type

[**MachineScope**](MachineScope.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_machine

> <DeleteMachine200Response> delete_machine(machine_id)

Delete a machine

Deletes a machine.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

machine_id = 'machine_id_example' # String | The ID of the machine to delete

begin
  # Delete a machine
  result = Clerk::SDK.machines.delete_machine(machine_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.machines->delete_machine: #{e}"
end
```

#### Using the `delete_machine_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteMachine200Response>, Integer, Hash)> delete_machine_with_http_info(machine_id)

```ruby
begin
  # Delete a machine
  data, status_code, headers = Clerk::SDK.machines.delete_machine_with_http_info(machine_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteMachine200Response>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.machines->delete_machine_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **machine_id** | **String** | The ID of the machine to delete |  |

### Return type

[**DeleteMachine200Response**](DeleteMachine200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_machine_scope

> <DeleteMachineScope200Response> delete_machine_scope(machine_id, other_machine_id)

Delete a machine scope

Deletes a machine scope, removing access from one machine to another.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

machine_id = 'machine_id_example' # String | The ID of the machine that has access to another machine
other_machine_id = 'other_machine_id_example' # String | The ID of the machine that is being accessed

begin
  # Delete a machine scope
  result = Clerk::SDK.machines.delete_machine_scope(machine_id, other_machine_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.machines->delete_machine_scope: #{e}"
end
```

#### Using the `delete_machine_scope_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteMachineScope200Response>, Integer, Hash)> delete_machine_scope_with_http_info(machine_id, other_machine_id)

```ruby
begin
  # Delete a machine scope
  data, status_code, headers = Clerk::SDK.machines.delete_machine_scope_with_http_info(machine_id, other_machine_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteMachineScope200Response>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.machines->delete_machine_scope_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **machine_id** | **String** | The ID of the machine that has access to another machine |  |
| **other_machine_id** | **String** | The ID of the machine that is being accessed |  |

### Return type

[**DeleteMachineScope200Response**](DeleteMachineScope200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_machine

> <Machine> get_machine(machine_id)

Retrieve a machine

Returns the details of a machine.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

machine_id = 'machine_id_example' # String | The ID of the machine to retrieve

begin
  # Retrieve a machine
  result = Clerk::SDK.machines.get_machine(machine_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.machines->get_machine: #{e}"
end
```

#### Using the `get_machine_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Machine>, Integer, Hash)> get_machine_with_http_info(machine_id)

```ruby
begin
  # Retrieve a machine
  data, status_code, headers = Clerk::SDK.machines.get_machine_with_http_info(machine_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Machine>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.machines->get_machine_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **machine_id** | **String** | The ID of the machine to retrieve |  |

### Return type

[**Machine**](Machine.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_machine_secret_key

> <GetMachineSecretKey200Response> get_machine_secret_key(machine_id)

Retrieve a machine secret key

Returns the secret key for a machine.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

machine_id = 'machine_id_example' # String | The ID of the machine to retrieve the secret key for

begin
  # Retrieve a machine secret key
  result = Clerk::SDK.machines.get_machine_secret_key(machine_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.machines->get_machine_secret_key: #{e}"
end
```

#### Using the `get_machine_secret_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMachineSecretKey200Response>, Integer, Hash)> get_machine_secret_key_with_http_info(machine_id)

```ruby
begin
  # Retrieve a machine secret key
  data, status_code, headers = Clerk::SDK.machines.get_machine_secret_key_with_http_info(machine_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMachineSecretKey200Response>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.machines->get_machine_secret_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **machine_id** | **String** | The ID of the machine to retrieve the secret key for |  |

### Return type

[**GetMachineSecretKey200Response**](GetMachineSecretKey200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_machines

> <ListMachines200Response> list_machines(opts)

Get a list of machines for an instance

This request returns the list of machines for an instance. The machines are ordered by descending creation date (i.e. most recent machines will be returned first)

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
  query: 'query_example' # String | Returns machines with ID or name that match the given query. Uses exact match for machine ID and partial match for name.
}

begin
  # Get a list of machines for an instance
  result = Clerk::SDK.machines.list_machines(opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.machines->list_machines: #{e}"
end
```

#### Using the `list_machines_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListMachines200Response>, Integer, Hash)> list_machines_with_http_info(opts)

```ruby
begin
  # Get a list of machines for an instance
  data, status_code, headers = Clerk::SDK.machines.list_machines_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListMachines200Response>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.machines->list_machines_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Applies a limit to the number of results returned. Can be used for paginating the results together with &#x60;offset&#x60;. | [optional][default to 10] |
| **offset** | **Integer** | Skip the first &#x60;offset&#x60; results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with &#x60;limit&#x60;. | [optional][default to 0] |
| **query** | **String** | Returns machines with ID or name that match the given query. Uses exact match for machine ID and partial match for name. | [optional] |

### Return type

[**ListMachines200Response**](ListMachines200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_machine

> <Machine> update_machine(machine_id, opts)

Update a machine

Updates an existing machine. Only the provided fields will be updated.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

machine_id = 'machine_id_example' # String | The ID of the machine to update
opts = {
  update_machine_request: ClerkHttpClient::UpdateMachineRequest.new # UpdateMachineRequest | 
}

begin
  # Update a machine
  result = Clerk::SDK.machines.update_machine(machine_id, opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.machines->update_machine: #{e}"
end
```

#### Using the `update_machine_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Machine>, Integer, Hash)> update_machine_with_http_info(machine_id, opts)

```ruby
begin
  # Update a machine
  data, status_code, headers = Clerk::SDK.machines.update_machine_with_http_info(machine_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Machine>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.machines->update_machine_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **machine_id** | **String** | The ID of the machine to update |  |
| **update_machine_request** | [**UpdateMachineRequest**](UpdateMachineRequest.md) |  | [optional] |

### Return type

[**Machine**](Machine.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

