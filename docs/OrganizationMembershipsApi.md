# ClerkHttpClient::OrganizationMembershipsApi

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_organization_membership**](OrganizationMembershipsApi.md#create_organization_membership) | **POST** /organizations/{organization_id}/memberships | Create a new organization membership |
| [**delete_organization_membership**](OrganizationMembershipsApi.md#delete_organization_membership) | **DELETE** /organizations/{organization_id}/memberships/{user_id} | Remove a member from an organization |
| [**instance_get_organization_memberships**](OrganizationMembershipsApi.md#instance_get_organization_memberships) | **GET** /organization_memberships | Get a list of all organization memberships within an instance. |
| [**list_organization_memberships**](OrganizationMembershipsApi.md#list_organization_memberships) | **GET** /organizations/{organization_id}/memberships | Get a list of all members of an organization |
| [**update_organization_membership**](OrganizationMembershipsApi.md#update_organization_membership) | **PATCH** /organizations/{organization_id}/memberships/{user_id} | Update an organization membership |
| [**update_organization_membership_metadata**](OrganizationMembershipsApi.md#update_organization_membership_metadata) | **PATCH** /organizations/{organization_id}/memberships/{user_id}/metadata | Merge and update organization membership metadata |


## create_organization_membership

> <OrganizationMembership> create_organization_membership(organization_id, create_organization_membership_request)

Create a new organization membership

Adds a user as a member to the given organization. Only users in the same instance as the organization can be added as members.  This organization will be the user's [active organization] (https://clerk.com/docs/organizations/overview#active-organization) the next time they create a session, presuming they don't explicitly set a different organization as active before then.

### Examples

```ruby
require 'time'
require 'clerk-http-client-ruby'
# setup authorization
ClerkHttpClient.configure do |config|
  # Configure Bearer authorization (sk_<environment>_<secret value>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ClerkHttpClient::OrganizationMembershipsApi.new
organization_id = 'organization_id_example' # String | The ID of the organization where the new membership will be created
create_organization_membership_request = ClerkHttpClient::CreateOrganizationMembershipRequest.new({user_id: 'user_id_example', role: 'role_example'}) # CreateOrganizationMembershipRequest | 

begin
  # Create a new organization membership
  result = api_instance.create_organization_membership(organization_id, create_organization_membership_request)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling OrganizationMembershipsApi->create_organization_membership: #{e}"
end
```

#### Using the create_organization_membership_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganizationMembership>, Integer, Hash)> create_organization_membership_with_http_info(organization_id, create_organization_membership_request)

```ruby
begin
  # Create a new organization membership
  data, status_code, headers = api_instance.create_organization_membership_with_http_info(organization_id, create_organization_membership_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganizationMembership>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling OrganizationMembershipsApi->create_organization_membership_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization_id** | **String** | The ID of the organization where the new membership will be created |  |
| **create_organization_membership_request** | [**CreateOrganizationMembershipRequest**](CreateOrganizationMembershipRequest.md) |  |  |

### Return type

[**OrganizationMembership**](OrganizationMembership.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_organization_membership

> <OrganizationMembership> delete_organization_membership(organization_id, user_id)

Remove a member from an organization

Removes the given membership from the organization

### Examples

```ruby
require 'time'
require 'clerk-http-client-ruby'
# setup authorization
ClerkHttpClient.configure do |config|
  # Configure Bearer authorization (sk_<environment>_<secret value>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ClerkHttpClient::OrganizationMembershipsApi.new
organization_id = 'organization_id_example' # String | The ID of the organization the membership belongs to
user_id = 'user_id_example' # String | The ID of the user that this membership belongs to

begin
  # Remove a member from an organization
  result = api_instance.delete_organization_membership(organization_id, user_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling OrganizationMembershipsApi->delete_organization_membership: #{e}"
end
```

#### Using the delete_organization_membership_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganizationMembership>, Integer, Hash)> delete_organization_membership_with_http_info(organization_id, user_id)

```ruby
begin
  # Remove a member from an organization
  data, status_code, headers = api_instance.delete_organization_membership_with_http_info(organization_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganizationMembership>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling OrganizationMembershipsApi->delete_organization_membership_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization_id** | **String** | The ID of the organization the membership belongs to |  |
| **user_id** | **String** | The ID of the user that this membership belongs to |  |

### Return type

[**OrganizationMembership**](OrganizationMembership.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## instance_get_organization_memberships

> <OrganizationMemberships> instance_get_organization_memberships(opts)

Get a list of all organization memberships within an instance.

Retrieves all organization user memberships for the given instance.

### Examples

```ruby
require 'time'
require 'clerk-http-client-ruby'
# setup authorization
ClerkHttpClient.configure do |config|
  # Configure Bearer authorization (sk_<environment>_<secret value>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ClerkHttpClient::OrganizationMembershipsApi.new
opts = {
  limit: 8.14, # Float | Applies a limit to the number of results returned. Can be used for paginating the results together with `offset`.
  offset: 8.14, # Float | Skip the first `offset` results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with `limit`.
  order_by: 'order_by_example' # String | Sorts organizations memberships by phone_number, email_address, created_at, first_name, last_name or username. By prepending one of those values with + or -, we can choose to sort in ascending (ASC) or descending (DESC) order.
}

begin
  # Get a list of all organization memberships within an instance.
  result = api_instance.instance_get_organization_memberships(opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling OrganizationMembershipsApi->instance_get_organization_memberships: #{e}"
end
```

#### Using the instance_get_organization_memberships_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganizationMemberships>, Integer, Hash)> instance_get_organization_memberships_with_http_info(opts)

```ruby
begin
  # Get a list of all organization memberships within an instance.
  data, status_code, headers = api_instance.instance_get_organization_memberships_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganizationMemberships>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling OrganizationMembershipsApi->instance_get_organization_memberships_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Float** | Applies a limit to the number of results returned. Can be used for paginating the results together with &#x60;offset&#x60;. | [optional][default to 10] |
| **offset** | **Float** | Skip the first &#x60;offset&#x60; results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with &#x60;limit&#x60;. | [optional][default to 0] |
| **order_by** | **String** | Sorts organizations memberships by phone_number, email_address, created_at, first_name, last_name or username. By prepending one of those values with + or -, we can choose to sort in ascending (ASC) or descending (DESC) order. | [optional] |

### Return type

[**OrganizationMemberships**](OrganizationMemberships.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_organization_memberships

> <OrganizationMemberships> list_organization_memberships(organization_id, opts)

Get a list of all members of an organization

Retrieves all user memberships for the given organization

### Examples

```ruby
require 'time'
require 'clerk-http-client-ruby'
# setup authorization
ClerkHttpClient.configure do |config|
  # Configure Bearer authorization (sk_<environment>_<secret value>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ClerkHttpClient::OrganizationMembershipsApi.new
organization_id = 'organization_id_example' # String | The organization ID.
opts = {
  limit: 8.14, # Float | Applies a limit to the number of results returned. Can be used for paginating the results together with `offset`.
  offset: 8.14, # Float | Skip the first `offset` results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with `limit`.
  order_by: 'order_by_example' # String | Sorts organizations memberships by phone_number, email_address, created_at, first_name, last_name or username. By prepending one of those values with + or -, we can choose to sort in ascending (ASC) or descending (DESC) order.\"
}

begin
  # Get a list of all members of an organization
  result = api_instance.list_organization_memberships(organization_id, opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling OrganizationMembershipsApi->list_organization_memberships: #{e}"
end
```

#### Using the list_organization_memberships_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganizationMemberships>, Integer, Hash)> list_organization_memberships_with_http_info(organization_id, opts)

```ruby
begin
  # Get a list of all members of an organization
  data, status_code, headers = api_instance.list_organization_memberships_with_http_info(organization_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganizationMemberships>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling OrganizationMembershipsApi->list_organization_memberships_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization_id** | **String** | The organization ID. |  |
| **limit** | **Float** | Applies a limit to the number of results returned. Can be used for paginating the results together with &#x60;offset&#x60;. | [optional][default to 10] |
| **offset** | **Float** | Skip the first &#x60;offset&#x60; results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with &#x60;limit&#x60;. | [optional][default to 0] |
| **order_by** | **String** | Sorts organizations memberships by phone_number, email_address, created_at, first_name, last_name or username. By prepending one of those values with + or -, we can choose to sort in ascending (ASC) or descending (DESC) order.\&quot; | [optional] |

### Return type

[**OrganizationMemberships**](OrganizationMemberships.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_organization_membership

> <OrganizationMembership> update_organization_membership(organization_id, user_id, update_organization_membership_request)

Update an organization membership

Updates the properties of an existing organization membership

### Examples

```ruby
require 'time'
require 'clerk-http-client-ruby'
# setup authorization
ClerkHttpClient.configure do |config|
  # Configure Bearer authorization (sk_<environment>_<secret value>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ClerkHttpClient::OrganizationMembershipsApi.new
organization_id = 'organization_id_example' # String | The ID of the organization the membership belongs to
user_id = 'user_id_example' # String | The ID of the user that this membership belongs to
update_organization_membership_request = ClerkHttpClient::UpdateOrganizationMembershipRequest.new({role: 'role_example'}) # UpdateOrganizationMembershipRequest | 

begin
  # Update an organization membership
  result = api_instance.update_organization_membership(organization_id, user_id, update_organization_membership_request)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling OrganizationMembershipsApi->update_organization_membership: #{e}"
end
```

#### Using the update_organization_membership_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganizationMembership>, Integer, Hash)> update_organization_membership_with_http_info(organization_id, user_id, update_organization_membership_request)

```ruby
begin
  # Update an organization membership
  data, status_code, headers = api_instance.update_organization_membership_with_http_info(organization_id, user_id, update_organization_membership_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganizationMembership>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling OrganizationMembershipsApi->update_organization_membership_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization_id** | **String** | The ID of the organization the membership belongs to |  |
| **user_id** | **String** | The ID of the user that this membership belongs to |  |
| **update_organization_membership_request** | [**UpdateOrganizationMembershipRequest**](UpdateOrganizationMembershipRequest.md) |  |  |

### Return type

[**OrganizationMembership**](OrganizationMembership.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_organization_membership_metadata

> <OrganizationMembership> update_organization_membership_metadata(organization_id, user_id, update_organization_membership_metadata_request)

Merge and update organization membership metadata

Update an organization membership's metadata attributes by merging existing values with the provided parameters. Metadata values will be updated via a deep merge. Deep means that any nested JSON objects will be merged as well. You can remove metadata keys at any level by setting their value to `null`.

### Examples

```ruby
require 'time'
require 'clerk-http-client-ruby'
# setup authorization
ClerkHttpClient.configure do |config|
  # Configure Bearer authorization (sk_<environment>_<secret value>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ClerkHttpClient::OrganizationMembershipsApi.new
organization_id = 'organization_id_example' # String | The ID of the organization the membership belongs to
user_id = 'user_id_example' # String | The ID of the user that this membership belongs to
update_organization_membership_metadata_request = ClerkHttpClient::UpdateOrganizationMembershipMetadataRequest.new # UpdateOrganizationMembershipMetadataRequest | 

begin
  # Merge and update organization membership metadata
  result = api_instance.update_organization_membership_metadata(organization_id, user_id, update_organization_membership_metadata_request)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling OrganizationMembershipsApi->update_organization_membership_metadata: #{e}"
end
```

#### Using the update_organization_membership_metadata_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganizationMembership>, Integer, Hash)> update_organization_membership_metadata_with_http_info(organization_id, user_id, update_organization_membership_metadata_request)

```ruby
begin
  # Merge and update organization membership metadata
  data, status_code, headers = api_instance.update_organization_membership_metadata_with_http_info(organization_id, user_id, update_organization_membership_metadata_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganizationMembership>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling OrganizationMembershipsApi->update_organization_membership_metadata_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization_id** | **String** | The ID of the organization the membership belongs to |  |
| **user_id** | **String** | The ID of the user that this membership belongs to |  |
| **update_organization_membership_metadata_request** | [**UpdateOrganizationMembershipMetadataRequest**](UpdateOrganizationMembershipMetadataRequest.md) |  |  |

### Return type

[**OrganizationMembership**](OrganizationMembership.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

