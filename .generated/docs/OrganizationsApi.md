# Clerk::SDK.organizations

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_organization**](OrganizationsApi.md#create_organization) | **POST** /organizations | Create an organization |
| [**delete_organization**](OrganizationsApi.md#delete_organization) | **DELETE** /organizations/{organization_id} | Delete an organization |
| [**delete_organization_logo**](OrganizationsApi.md#delete_organization_logo) | **DELETE** /organizations/{organization_id}/logo | Delete the organization&#39;s logo. |
| [**get_organization**](OrganizationsApi.md#get_organization) | **GET** /organizations/{organization_id} | Retrieve an organization by ID or slug |
| [**list_organizations**](OrganizationsApi.md#list_organizations) | **GET** /organizations | Get a list of organizations for an instance |
| [**merge_organization_metadata**](OrganizationsApi.md#merge_organization_metadata) | **PATCH** /organizations/{organization_id}/metadata | Merge and update metadata for an organization |
| [**update_organization**](OrganizationsApi.md#update_organization) | **PATCH** /organizations/{organization_id} | Update an organization |
| [**upload_organization_logo**](OrganizationsApi.md#upload_organization_logo) | **PUT** /organizations/{organization_id}/logo | Upload a logo for the organization |


## create_organization

> <Organization> create_organization(opts)

Create an organization

Creates a new organization with the given name for an instance. You can specify an optional slug for the new organization. If provided, the organization slug can contain only lowercase alphanumeric characters (letters and digits) and the dash \"-\". Organization slugs must be unique for the instance. You can provide additional metadata for the organization and set any custom attribute you want. Organizations support private and public metadata. Private metadata can only be accessed from the Backend API. Public metadata can be accessed from the Backend API, and are read-only from the Frontend API. The `created_by` user will see this as their [active organization](https://clerk.com/docs/organizations/overview#active-organization) the next time they create a session, presuming they don't explicitly set a different organization as active before then.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

opts = {
  create_organization_request: ClerkHttpClient::CreateOrganizationRequest.new({name: 'name_example'}) # CreateOrganizationRequest | 
}

begin
  # Create an organization
  result = Clerk::SDK.organizations.create_organization(opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organizations->create_organization: #{e}"
end
```

#### Using the `create_organization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Organization>, Integer, Hash)> create_organization_with_http_info(opts)

```ruby
begin
  # Create an organization
  data, status_code, headers = Clerk::SDK.organizations.create_organization_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Organization>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organizations->create_organization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_organization_request** | [**CreateOrganizationRequest**](CreateOrganizationRequest.md) |  | [optional] |

### Return type

[**Organization**](Organization.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_organization

> <DeletedObject> delete_organization(organization_id)

Delete an organization

Deletes the given organization. Please note that deleting an organization will also delete all memberships and invitations. This is not reversible.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

organization_id = 'organization_id_example' # String | The ID of the organization to delete

begin
  # Delete an organization
  result = Clerk::SDK.organizations.delete_organization(organization_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organizations->delete_organization: #{e}"
end
```

#### Using the `delete_organization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletedObject>, Integer, Hash)> delete_organization_with_http_info(organization_id)

```ruby
begin
  # Delete an organization
  data, status_code, headers = Clerk::SDK.organizations.delete_organization_with_http_info(organization_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletedObject>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organizations->delete_organization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization_id** | **String** | The ID of the organization to delete |  |

### Return type

[**DeletedObject**](DeletedObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_organization_logo

> <Organization> delete_organization_logo(organization_id)

Delete the organization's logo.

Delete the organization's logo.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

organization_id = 'organization_id_example' # String | The ID of the organization for which the logo will be deleted.

begin
  # Delete the organization's logo.
  result = Clerk::SDK.organizations.delete_organization_logo(organization_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organizations->delete_organization_logo: #{e}"
end
```

#### Using the `delete_organization_logo_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Organization>, Integer, Hash)> delete_organization_logo_with_http_info(organization_id)

```ruby
begin
  # Delete the organization's logo.
  data, status_code, headers = Clerk::SDK.organizations.delete_organization_logo_with_http_info(organization_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Organization>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organizations->delete_organization_logo_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization_id** | **String** | The ID of the organization for which the logo will be deleted. |  |

### Return type

[**Organization**](Organization.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_organization

> <Organization> get_organization(organization_id, opts)

Retrieve an organization by ID or slug

Fetches the organization whose ID or slug matches the provided `id_or_slug` URL query parameter.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

organization_id = 'organization_id_example' # String | The ID or slug of the organization
opts = {
  include_members_count: true, # Boolean | Flag to denote whether or not the organization's members count should be included in the response.
  include_missing_member_with_elevated_permissions: true # Boolean | Flag to denote whether or not to include a member with elevated permissions who is not currently a member of the organization.
}

begin
  # Retrieve an organization by ID or slug
  result = Clerk::SDK.organizations.get_organization(organization_id, opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organizations->get_organization: #{e}"
end
```

#### Using the `get_organization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Organization>, Integer, Hash)> get_organization_with_http_info(organization_id, opts)

```ruby
begin
  # Retrieve an organization by ID or slug
  data, status_code, headers = Clerk::SDK.organizations.get_organization_with_http_info(organization_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Organization>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organizations->get_organization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization_id** | **String** | The ID or slug of the organization |  |
| **include_members_count** | **Boolean** | Flag to denote whether or not the organization&#39;s members count should be included in the response. | [optional] |
| **include_missing_member_with_elevated_permissions** | **Boolean** | Flag to denote whether or not to include a member with elevated permissions who is not currently a member of the organization. | [optional] |

### Return type

[**Organization**](Organization.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_organizations

> <Organizations> list_organizations(opts)

Get a list of organizations for an instance

This request returns the list of organizations for an instance. Results can be paginated using the optional `limit` and `offset` query parameters. The organizations are ordered by descending creation date. Most recent organizations will be returned first.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

opts = {
  include_members_count: true, # Boolean | Flag to denote whether the member counts of each organization should be included in the response or not.
  include_missing_member_with_elevated_permissions: true, # Boolean | Flag to denote whether or not to include a member with elevated permissions who is not currently a member of the organization.
  query: 'query_example', # String | Returns organizations with ID, name, or slug that match the given query. Uses exact match for organization ID and partial match for name and slug.
  user_id: ['inner_example'], # Array<String> | Returns organizations with the user ids specified. Any user ids not found are ignored. For each user id, the `+` and `-` can be prepended to the id, which denote whether the respective organization should be included or excluded from the result set.
  organization_id: ['inner_example'], # Array<String> | Returns organizations with the organization ids specified. Any organization ids not found are ignored. For each organization id, the `+` and `-` can be prepended to the id, which denote whether the respective organization should be included or excluded from the result set. Accepts up to 100 organization ids. Example: ?organization_id=+org_1&organization_id=-org_2
  order_by: 'order_by_example', # String | Allows to return organizations in a particular order. At the moment, you can order the returned organizations either by their `name`, `created_at` or `members_count`. In order to specify the direction, you can use the `+/-` symbols prepended in the property to order by. For example, if you want organizations to be returned in descending order according to their `created_at` property, you can use `-created_at`. If you don't use `+` or `-`, then `+` is implied. Defaults to `-created_at`.
  limit: 56, # Integer | Applies a limit to the number of results returned. Can be used for paginating the results together with `offset`.
  offset: 56 # Integer | Skip the first `offset` results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with `limit`.
}

begin
  # Get a list of organizations for an instance
  result = Clerk::SDK.organizations.list_organizations(opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organizations->list_organizations: #{e}"
end
```

#### Using the `list_organizations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Organizations>, Integer, Hash)> list_organizations_with_http_info(opts)

```ruby
begin
  # Get a list of organizations for an instance
  data, status_code, headers = Clerk::SDK.organizations.list_organizations_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Organizations>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organizations->list_organizations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include_members_count** | **Boolean** | Flag to denote whether the member counts of each organization should be included in the response or not. | [optional] |
| **include_missing_member_with_elevated_permissions** | **Boolean** | Flag to denote whether or not to include a member with elevated permissions who is not currently a member of the organization. | [optional] |
| **query** | **String** | Returns organizations with ID, name, or slug that match the given query. Uses exact match for organization ID and partial match for name and slug. | [optional] |
| **user_id** | [**Array&lt;String&gt;**](String.md) | Returns organizations with the user ids specified. Any user ids not found are ignored. For each user id, the &#x60;+&#x60; and &#x60;-&#x60; can be prepended to the id, which denote whether the respective organization should be included or excluded from the result set. | [optional] |
| **organization_id** | [**Array&lt;String&gt;**](String.md) | Returns organizations with the organization ids specified. Any organization ids not found are ignored. For each organization id, the &#x60;+&#x60; and &#x60;-&#x60; can be prepended to the id, which denote whether the respective organization should be included or excluded from the result set. Accepts up to 100 organization ids. Example: ?organization_id&#x3D;+org_1&amp;organization_id&#x3D;-org_2 | [optional] |
| **order_by** | **String** | Allows to return organizations in a particular order. At the moment, you can order the returned organizations either by their &#x60;name&#x60;, &#x60;created_at&#x60; or &#x60;members_count&#x60;. In order to specify the direction, you can use the &#x60;+/-&#x60; symbols prepended in the property to order by. For example, if you want organizations to be returned in descending order according to their &#x60;created_at&#x60; property, you can use &#x60;-created_at&#x60;. If you don&#39;t use &#x60;+&#x60; or &#x60;-&#x60;, then &#x60;+&#x60; is implied. Defaults to &#x60;-created_at&#x60;. | [optional][default to &#39;-created_at&#39;] |
| **limit** | **Integer** | Applies a limit to the number of results returned. Can be used for paginating the results together with &#x60;offset&#x60;. | [optional][default to 10] |
| **offset** | **Integer** | Skip the first &#x60;offset&#x60; results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with &#x60;limit&#x60;. | [optional][default to 0] |

### Return type

[**Organizations**](Organizations.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## merge_organization_metadata

> <Organization> merge_organization_metadata(organization_id, merge_organization_metadata_request)

Merge and update metadata for an organization

Update organization metadata attributes by merging existing values with the provided parameters. Metadata values will be updated via a deep merge. Deep meaning that any nested JSON objects will be merged as well. You can remove metadata keys at any level by setting their value to `null`.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

organization_id = 'organization_id_example' # String | The ID of the organization for which metadata will be merged or updated
merge_organization_metadata_request = ClerkHttpClient::MergeOrganizationMetadataRequest.new # MergeOrganizationMetadataRequest | 

begin
  # Merge and update metadata for an organization
  result = Clerk::SDK.organizations.merge_organization_metadata(organization_id, merge_organization_metadata_request)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organizations->merge_organization_metadata: #{e}"
end
```

#### Using the `merge_organization_metadata_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Organization>, Integer, Hash)> merge_organization_metadata_with_http_info(organization_id, merge_organization_metadata_request)

```ruby
begin
  # Merge and update metadata for an organization
  data, status_code, headers = Clerk::SDK.organizations.merge_organization_metadata_with_http_info(organization_id, merge_organization_metadata_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Organization>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organizations->merge_organization_metadata_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization_id** | **String** | The ID of the organization for which metadata will be merged or updated |  |
| **merge_organization_metadata_request** | [**MergeOrganizationMetadataRequest**](MergeOrganizationMetadataRequest.md) |  |  |

### Return type

[**Organization**](Organization.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_organization

> <Organization> update_organization(organization_id, update_organization_request)

Update an organization

Updates an existing organization

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

organization_id = 'organization_id_example' # String | The ID of the organization to update
update_organization_request = ClerkHttpClient::UpdateOrganizationRequest.new # UpdateOrganizationRequest | 

begin
  # Update an organization
  result = Clerk::SDK.organizations.update_organization(organization_id, update_organization_request)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organizations->update_organization: #{e}"
end
```

#### Using the `update_organization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Organization>, Integer, Hash)> update_organization_with_http_info(organization_id, update_organization_request)

```ruby
begin
  # Update an organization
  data, status_code, headers = Clerk::SDK.organizations.update_organization_with_http_info(organization_id, update_organization_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Organization>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organizations->update_organization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization_id** | **String** | The ID of the organization to update |  |
| **update_organization_request** | [**UpdateOrganizationRequest**](UpdateOrganizationRequest.md) |  |  |

### Return type

[**Organization**](Organization.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## upload_organization_logo

> <OrganizationWithLogo> upload_organization_logo(organization_id, file, opts)

Upload a logo for the organization

Set or replace an organization's logo, by uploading an image file. This endpoint uses the `multipart/form-data` request content type and accepts a file of image type. The file size cannot exceed 10MB. Only the following file content types are supported: `image/jpeg`, `image/png`, `image/gif`, `image/webp`.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

organization_id = 'organization_id_example' # String | The ID of the organization for which to upload a logo
file = File.new('/path/to/some/file') # File | 
opts = {
  uploader_user_id: 'uploader_user_id_example' # String | The ID of the user that will be credited with the image upload.
}

begin
  # Upload a logo for the organization
  result = Clerk::SDK.organizations.upload_organization_logo(organization_id, file, opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organizations->upload_organization_logo: #{e}"
end
```

#### Using the `upload_organization_logo_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganizationWithLogo>, Integer, Hash)> upload_organization_logo_with_http_info(organization_id, file, opts)

```ruby
begin
  # Upload a logo for the organization
  data, status_code, headers = Clerk::SDK.organizations.upload_organization_logo_with_http_info(organization_id, file, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganizationWithLogo>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organizations->upload_organization_logo_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization_id** | **String** | The ID of the organization for which to upload a logo |  |
| **file** | **File** |  |  |
| **uploader_user_id** | **String** | The ID of the user that will be credited with the image upload. | [optional] |

### Return type

[**OrganizationWithLogo**](OrganizationWithLogo.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json

