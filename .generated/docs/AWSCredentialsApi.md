# Clerk::SDK.aws_credentials

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_aws_credential**](AWSCredentialsApi.md#create_aws_credential) | **POST** /aws_credentials | Create an AWS Credential |
| [**delete_aws_credential**](AWSCredentialsApi.md#delete_aws_credential) | **DELETE** /aws_credentials/{id} | Delete an AWS Credential |
| [**get_aws_credential**](AWSCredentialsApi.md#get_aws_credential) | **GET** /aws_credentials/{id} | Retrieve an AWS Credential |
| [**get_aws_credential_list**](AWSCredentialsApi.md#get_aws_credential_list) | **GET** /aws_credentials | List all AWS Credentials |
| [**update_aws_credential**](AWSCredentialsApi.md#update_aws_credential) | **PATCH** /aws_credentials/{id} | Update an AWS Credential |


## create_aws_credential

> <AWSCredential> create_aws_credential(opts)

Create an AWS Credential

Create a new AWS Credential

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

opts = {
  create_aws_credential_request: ClerkHttpClient::CreateAWSCredentialRequest.new({access_key_id: 'access_key_id_example', secret_access_key: 'secret_access_key_example', user_pool_ids: ['user_pool_ids_example']}) # CreateAWSCredentialRequest | 
}

begin
  # Create an AWS Credential
  result = Clerk::SDK.aws_credentials.create_aws_credential(opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.aws_credentials->create_aws_credential: #{e}"
end
```

#### Using the `create_aws_credential_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AWSCredential>, Integer, Hash)> create_aws_credential_with_http_info(opts)

```ruby
begin
  # Create an AWS Credential
  data, status_code, headers = Clerk::SDK.aws_credentials.create_aws_credential_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AWSCredential>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.aws_credentials->create_aws_credential_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_aws_credential_request** | [**CreateAWSCredentialRequest**](CreateAWSCredentialRequest.md) |  | [optional] |

### Return type

[**AWSCredential**](AWSCredential.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_aws_credential

> <DeletedObject> delete_aws_credential(id)

Delete an AWS Credential

Delete the AWS Credential with the given ID

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

id = 'id_example' # String | The ID of the AWS Credential to delete

begin
  # Delete an AWS Credential
  result = Clerk::SDK.aws_credentials.delete_aws_credential(id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.aws_credentials->delete_aws_credential: #{e}"
end
```

#### Using the `delete_aws_credential_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletedObject>, Integer, Hash)> delete_aws_credential_with_http_info(id)

```ruby
begin
  # Delete an AWS Credential
  data, status_code, headers = Clerk::SDK.aws_credentials.delete_aws_credential_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletedObject>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.aws_credentials->delete_aws_credential_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the AWS Credential to delete |  |

### Return type

[**DeletedObject**](DeletedObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_aws_credential

> <AWSCredential> get_aws_credential(id)

Retrieve an AWS Credential

Returns the details of an AWS Credential.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

id = 'id_example' # String | The ID of the AWS Credential to retrieve

begin
  # Retrieve an AWS Credential
  result = Clerk::SDK.aws_credentials.get_aws_credential(id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.aws_credentials->get_aws_credential: #{e}"
end
```

#### Using the `get_aws_credential_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AWSCredential>, Integer, Hash)> get_aws_credential_with_http_info(id)

```ruby
begin
  # Retrieve an AWS Credential
  data, status_code, headers = Clerk::SDK.aws_credentials.get_aws_credential_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AWSCredential>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.aws_credentials->get_aws_credential_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the AWS Credential to retrieve |  |

### Return type

[**AWSCredential**](AWSCredential.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_aws_credential_list

> <Array<AWSCredential>> get_aws_credential_list

List all AWS Credentials

Returns a list of all AWS Credentials.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end


begin
  # List all AWS Credentials
  result = Clerk::SDK.aws_credentials.get_aws_credential_list
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.aws_credentials->get_aws_credential_list: #{e}"
end
```

#### Using the `get_aws_credential_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AWSCredential>>, Integer, Hash)> get_aws_credential_list_with_http_info

```ruby
begin
  # List all AWS Credentials
  data, status_code, headers = Clerk::SDK.aws_credentials.get_aws_credential_list_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AWSCredential>>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.aws_credentials->get_aws_credential_list_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;AWSCredential&gt;**](AWSCredential.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_aws_credential

> <AWSCredential> update_aws_credential(id, opts)

Update an AWS Credential

Updates an AWS credential.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

id = 'id_example' # String | The ID of the AWS Credential to update
opts = {
  update_aws_credential_request: ClerkHttpClient::UpdateAWSCredentialRequest.new # UpdateAWSCredentialRequest | 
}

begin
  # Update an AWS Credential
  result = Clerk::SDK.aws_credentials.update_aws_credential(id, opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.aws_credentials->update_aws_credential: #{e}"
end
```

#### Using the `update_aws_credential_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AWSCredential>, Integer, Hash)> update_aws_credential_with_http_info(id, opts)

```ruby
begin
  # Update an AWS Credential
  data, status_code, headers = Clerk::SDK.aws_credentials.update_aws_credential_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AWSCredential>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.aws_credentials->update_aws_credential_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the AWS Credential to update |  |
| **update_aws_credential_request** | [**UpdateAWSCredentialRequest**](UpdateAWSCredentialRequest.md) |  | [optional] |

### Return type

[**AWSCredential**](AWSCredential.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

