# Clerk::SDK.oauth_applications

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_oauth_application**](OAuthApplicationsApi.md#create_oauth_application) | **POST** /oauth_applications | Create an OAuth application |
| [**delete_oauth_application**](OAuthApplicationsApi.md#delete_oauth_application) | **DELETE** /oauth_applications/{oauth_application_id} | Delete an OAuth application |
| [**get_oauth_application**](OAuthApplicationsApi.md#get_oauth_application) | **GET** /oauth_applications/{oauth_application_id} | Retrieve an OAuth application by ID |
| [**list_oauth_applications**](OAuthApplicationsApi.md#list_oauth_applications) | **GET** /oauth_applications | Get a list of OAuth applications for an instance |
| [**rotate_oauth_application_secret**](OAuthApplicationsApi.md#rotate_oauth_application_secret) | **POST** /oauth_applications/{oauth_application_id}/rotate_secret | Rotate the client secret of the given OAuth application |
| [**update_oauth_application**](OAuthApplicationsApi.md#update_oauth_application) | **PATCH** /oauth_applications/{oauth_application_id} | Update an OAuth application |


## create_oauth_application

> <OAuthApplicationWithSecret> create_oauth_application(opts)

Create an OAuth application

Creates a new OAuth application with the given name and callback URL for an instance. The callback URL must be a valid url. All URL schemes are allowed such as `http://`, `https://`, `myapp://`, etc...

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

opts = {
  create_oauth_application_request: ClerkHttpClient::CreateOAuthApplicationRequest.new({name: 'name_example'}) # CreateOAuthApplicationRequest | 
}

begin
  # Create an OAuth application
  result = Clerk::SDK.oauth_applications.create_oauth_application(opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.oauth_applications->create_oauth_application: #{e}"
end
```

#### Using the `create_oauth_application_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OAuthApplicationWithSecret>, Integer, Hash)> create_oauth_application_with_http_info(opts)

```ruby
begin
  # Create an OAuth application
  data, status_code, headers = Clerk::SDK.oauth_applications.create_oauth_application_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OAuthApplicationWithSecret>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.oauth_applications->create_oauth_application_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_oauth_application_request** | [**CreateOAuthApplicationRequest**](CreateOAuthApplicationRequest.md) |  | [optional] |

### Return type

[**OAuthApplicationWithSecret**](OAuthApplicationWithSecret.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_oauth_application

> <DeletedObject> delete_oauth_application(oauth_application_id)

Delete an OAuth application

Deletes the given OAuth application. This is not reversible.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

oauth_application_id = 'oauth_application_id_example' # String | The ID of the OAuth application to delete

begin
  # Delete an OAuth application
  result = Clerk::SDK.oauth_applications.delete_oauth_application(oauth_application_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.oauth_applications->delete_oauth_application: #{e}"
end
```

#### Using the `delete_oauth_application_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletedObject>, Integer, Hash)> delete_oauth_application_with_http_info(oauth_application_id)

```ruby
begin
  # Delete an OAuth application
  data, status_code, headers = Clerk::SDK.oauth_applications.delete_oauth_application_with_http_info(oauth_application_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletedObject>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.oauth_applications->delete_oauth_application_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **oauth_application_id** | **String** | The ID of the OAuth application to delete |  |

### Return type

[**DeletedObject**](DeletedObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_oauth_application

> <OAuthApplication> get_oauth_application(oauth_application_id)

Retrieve an OAuth application by ID

Fetches the OAuth application whose ID matches the provided `id` in the path.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

oauth_application_id = 'oauth_application_id_example' # String | The ID of the OAuth application

begin
  # Retrieve an OAuth application by ID
  result = Clerk::SDK.oauth_applications.get_oauth_application(oauth_application_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.oauth_applications->get_oauth_application: #{e}"
end
```

#### Using the `get_oauth_application_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OAuthApplication>, Integer, Hash)> get_oauth_application_with_http_info(oauth_application_id)

```ruby
begin
  # Retrieve an OAuth application by ID
  data, status_code, headers = Clerk::SDK.oauth_applications.get_oauth_application_with_http_info(oauth_application_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OAuthApplication>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.oauth_applications->get_oauth_application_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **oauth_application_id** | **String** | The ID of the OAuth application |  |

### Return type

[**OAuthApplication**](OAuthApplication.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_oauth_applications

> <OAuthApplications> list_oauth_applications(opts)

Get a list of OAuth applications for an instance

This request returns the list of OAuth applications for an instance. Results can be paginated using the optional `limit` and `offset` query parameters. The OAuth applications are ordered by descending creation date. Most recent OAuth applications will be returned first.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

opts = {
  limit: 8.14, # Float | Applies a limit to the number of results returned. Can be used for paginating the results together with `offset`.
  offset: 8.14 # Float | Skip the first `offset` results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with `limit`.
}

begin
  # Get a list of OAuth applications for an instance
  result = Clerk::SDK.oauth_applications.list_oauth_applications(opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.oauth_applications->list_oauth_applications: #{e}"
end
```

#### Using the `list_oauth_applications_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OAuthApplications>, Integer, Hash)> list_oauth_applications_with_http_info(opts)

```ruby
begin
  # Get a list of OAuth applications for an instance
  data, status_code, headers = Clerk::SDK.oauth_applications.list_oauth_applications_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OAuthApplications>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.oauth_applications->list_oauth_applications_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Float** | Applies a limit to the number of results returned. Can be used for paginating the results together with &#x60;offset&#x60;. | [optional][default to 10] |
| **offset** | **Float** | Skip the first &#x60;offset&#x60; results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with &#x60;limit&#x60;. | [optional][default to 0] |

### Return type

[**OAuthApplications**](OAuthApplications.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## rotate_oauth_application_secret

> <OAuthApplicationWithSecret> rotate_oauth_application_secret(oauth_application_id)

Rotate the client secret of the given OAuth application

Rotates the OAuth application's client secret. When the client secret is rotated, make sure to update it in authorized OAuth clients.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

oauth_application_id = 'oauth_application_id_example' # String | The ID of the OAuth application for which to rotate the client secret

begin
  # Rotate the client secret of the given OAuth application
  result = Clerk::SDK.oauth_applications.rotate_oauth_application_secret(oauth_application_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.oauth_applications->rotate_oauth_application_secret: #{e}"
end
```

#### Using the `rotate_oauth_application_secret_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OAuthApplicationWithSecret>, Integer, Hash)> rotate_oauth_application_secret_with_http_info(oauth_application_id)

```ruby
begin
  # Rotate the client secret of the given OAuth application
  data, status_code, headers = Clerk::SDK.oauth_applications.rotate_oauth_application_secret_with_http_info(oauth_application_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OAuthApplicationWithSecret>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.oauth_applications->rotate_oauth_application_secret_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **oauth_application_id** | **String** | The ID of the OAuth application for which to rotate the client secret |  |

### Return type

[**OAuthApplicationWithSecret**](OAuthApplicationWithSecret.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_oauth_application

> <OAuthApplication> update_oauth_application(oauth_application_id, update_oauth_application_request)

Update an OAuth application

Updates an existing OAuth application

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

oauth_application_id = 'oauth_application_id_example' # String | The ID of the OAuth application to update
update_oauth_application_request = ClerkHttpClient::UpdateOAuthApplicationRequest.new # UpdateOAuthApplicationRequest | 

begin
  # Update an OAuth application
  result = Clerk::SDK.oauth_applications.update_oauth_application(oauth_application_id, update_oauth_application_request)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.oauth_applications->update_oauth_application: #{e}"
end
```

#### Using the `update_oauth_application_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OAuthApplication>, Integer, Hash)> update_oauth_application_with_http_info(oauth_application_id, update_oauth_application_request)

```ruby
begin
  # Update an OAuth application
  data, status_code, headers = Clerk::SDK.oauth_applications.update_oauth_application_with_http_info(oauth_application_id, update_oauth_application_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OAuthApplication>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.oauth_applications->update_oauth_application_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **oauth_application_id** | **String** | The ID of the OAuth application to update |  |
| **update_oauth_application_request** | [**UpdateOAuthApplicationRequest**](UpdateOAuthApplicationRequest.md) |  |  |

### Return type

[**OAuthApplication**](OAuthApplication.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

