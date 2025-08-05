# Clerk::SDK.aws_credentials

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_aws_credential**](AWSCredentialsApi.md#delete_aws_credential) | **DELETE** /aws_credentials/{id} | Delete an AWS Credential |
| [**update_aws_credential**](AWSCredentialsApi.md#update_aws_credential) | **PATCH** /aws_credentials/{id} | Update an AWS Credential |


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

