# Clerk::SDK.organization_memberships

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
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

organization_id = 'organization_id_example' # String | The ID of the organization where the new membership will be created
create_organization_membership_request = ClerkHttpClient::CreateOrganizationMembershipRequest.new({user_id: 'user_id_example', role: 'role_example'}) # CreateOrganizationMembershipRequest | 

begin
  # Create a new organization membership
  result = Clerk::SDK.organization_memberships.create_organization_membership(organization_id, create_organization_membership_request)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organization_memberships->create_organization_membership: #{e}"
end
```

#### Using the `create_organization_membership_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganizationMembership>, Integer, Hash)> create_organization_membership_with_http_info(organization_id, create_organization_membership_request)

```ruby
begin
  # Create a new organization membership
  data, status_code, headers = Clerk::SDK.organization_memberships.create_organization_membership_with_http_info(organization_id, create_organization_membership_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganizationMembership>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organization_memberships->create_organization_membership_with_http_info: #{e}"
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
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

organization_id = 'organization_id_example' # String | The ID of the organization the membership belongs to
user_id = 'user_id_example' # String | The ID of the user that this membership belongs to

begin
  # Remove a member from an organization
  result = Clerk::SDK.organization_memberships.delete_organization_membership(organization_id, user_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organization_memberships->delete_organization_membership: #{e}"
end
```

#### Using the `delete_organization_membership_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganizationMembership>, Integer, Hash)> delete_organization_membership_with_http_info(organization_id, user_id)

```ruby
begin
  # Remove a member from an organization
  data, status_code, headers = Clerk::SDK.organization_memberships.delete_organization_membership_with_http_info(organization_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganizationMembership>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organization_memberships->delete_organization_membership_with_http_info: #{e}"
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
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

opts = {
  order_by: 'order_by_example', # String | Sorts organizations memberships by phone_number, email_address, created_at, first_name, last_name or username. By prepending one of those values with + or -, we can choose to sort in ascending (ASC) or descending (DESC) order.
  limit: 56, # Integer | Applies a limit to the number of results returned. Can be used for paginating the results together with `offset`.
  offset: 56 # Integer | Skip the first `offset` results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with `limit`.
}

begin
  # Get a list of all organization memberships within an instance.
  result = Clerk::SDK.organization_memberships.instance_get_organization_memberships(opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organization_memberships->instance_get_organization_memberships: #{e}"
end
```

#### Using the `instance_get_organization_memberships_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganizationMemberships>, Integer, Hash)> instance_get_organization_memberships_with_http_info(opts)

```ruby
begin
  # Get a list of all organization memberships within an instance.
  data, status_code, headers = Clerk::SDK.organization_memberships.instance_get_organization_memberships_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganizationMemberships>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organization_memberships->instance_get_organization_memberships_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_by** | **String** | Sorts organizations memberships by phone_number, email_address, created_at, first_name, last_name or username. By prepending one of those values with + or -, we can choose to sort in ascending (ASC) or descending (DESC) order. | [optional] |
| **limit** | **Integer** | Applies a limit to the number of results returned. Can be used for paginating the results together with &#x60;offset&#x60;. | [optional][default to 10] |
| **offset** | **Integer** | Skip the first &#x60;offset&#x60; results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with &#x60;limit&#x60;. | [optional][default to 0] |

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
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

organization_id = 'organization_id_example' # String | The organization ID.
opts = {
  order_by: 'order_by_example', # String | Sorts organizations memberships by phone_number, email_address, created_at, first_name, last_name or username. By prepending one of those values with + or -, we can choose to sort in ascending (ASC) or descending (DESC) order.\"
  user_id: ['inner_example'], # Array<String> | Returns users with the user ids specified. For each user id, the `+` and `-` can be prepended to the id, which denote whether the respective user id should be included or excluded from the result set. Accepts up to 100 user ids. Any user ids not found are ignored.
  email_address: ['inner_example'], # Array<String> | Returns users with the specified email addresses. Accepts up to 100 email addresses. Any email addresses not found are ignored.
  phone_number: ['inner_example'], # Array<String> | Returns users with the specified phone numbers. Accepts up to 100 phone numbers. Any phone numbers not found are ignored.
  username: ['inner_example'], # Array<String> | Returns users with the specified usernames. Accepts up to 100 usernames. Any usernames not found are ignored.
  web3_wallet: ['inner_example'], # Array<String> | Returns users with the specified web3 wallet addresses. Accepts up to 100 web3 wallet addresses. Any web3 wallet addressed not found are ignored.
  role: ['inner_example'], # Array<String> | Returns users with the specified roles. Accepts up to 100 roles. Any roles not found are ignored.
  query: 'query_example', # String | Returns users that match the given query. For possible matches, we check the email addresses, phone numbers, usernames, web3 wallets, user ids, first and last names. The query value doesn't need to match the exact value you are looking for, it is capable of partial matches as well.
  email_address_query: 'email_address_query_example', # String | Returns users with emails that match the given query, via case-insensitive partial match. For example, `email_address_query=ello` will match a user with the email `HELLO@example.com`.
  phone_number_query: 'phone_number_query_example', # String | Returns users with phone numbers that match the given query, via case-insensitive partial match. For example, `phone_number_query=555` will match a user with the phone number `+1555xxxxxxx`.
  username_query: 'username_query_example', # String | Returns users with usernames that match the given query, via case-insensitive partial match. For example, `username_query=CoolUser` will match a user with the username `SomeCoolUser`.
  name_query: 'name_query_example', # String | Returns users with names that match the given query, via case-insensitive partial match.
  last_active_at_before: 1700690400000, # Integer | Returns users whose last session activity was before the given date (with millisecond precision). Example: use 1700690400000 to retrieve users whose last session activity was before 2023-11-23.
  last_active_at_after: 1700690400000, # Integer | Returns users whose last session activity was after the given date (with millisecond precision). Example: use 1700690400000 to retrieve users whose last session activity was after 2023-11-23.
  created_at_before: 1730160000000, # Integer | Returns users who have been created before the given date (with millisecond precision). Example: use 1730160000000 to retrieve users who have been created before 2024-10-29.
  created_at_after: 1730160000000, # Integer | Returns users who have been created after the given date (with millisecond precision). Example: use 1730160000000 to retrieve users who have been created after 2024-10-29.
  limit: 56, # Integer | Applies a limit to the number of results returned. Can be used for paginating the results together with `offset`.
  offset: 56 # Integer | Skip the first `offset` results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with `limit`.
}

begin
  # Get a list of all members of an organization
  result = Clerk::SDK.organization_memberships.list_organization_memberships(organization_id, opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organization_memberships->list_organization_memberships: #{e}"
end
```

#### Using the `list_organization_memberships_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganizationMemberships>, Integer, Hash)> list_organization_memberships_with_http_info(organization_id, opts)

```ruby
begin
  # Get a list of all members of an organization
  data, status_code, headers = Clerk::SDK.organization_memberships.list_organization_memberships_with_http_info(organization_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganizationMemberships>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organization_memberships->list_organization_memberships_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization_id** | **String** | The organization ID. |  |
| **order_by** | **String** | Sorts organizations memberships by phone_number, email_address, created_at, first_name, last_name or username. By prepending one of those values with + or -, we can choose to sort in ascending (ASC) or descending (DESC) order.\&quot; | [optional] |
| **user_id** | [**Array&lt;String&gt;**](String.md) | Returns users with the user ids specified. For each user id, the &#x60;+&#x60; and &#x60;-&#x60; can be prepended to the id, which denote whether the respective user id should be included or excluded from the result set. Accepts up to 100 user ids. Any user ids not found are ignored. | [optional] |
| **email_address** | [**Array&lt;String&gt;**](String.md) | Returns users with the specified email addresses. Accepts up to 100 email addresses. Any email addresses not found are ignored. | [optional] |
| **phone_number** | [**Array&lt;String&gt;**](String.md) | Returns users with the specified phone numbers. Accepts up to 100 phone numbers. Any phone numbers not found are ignored. | [optional] |
| **username** | [**Array&lt;String&gt;**](String.md) | Returns users with the specified usernames. Accepts up to 100 usernames. Any usernames not found are ignored. | [optional] |
| **web3_wallet** | [**Array&lt;String&gt;**](String.md) | Returns users with the specified web3 wallet addresses. Accepts up to 100 web3 wallet addresses. Any web3 wallet addressed not found are ignored. | [optional] |
| **role** | [**Array&lt;String&gt;**](String.md) | Returns users with the specified roles. Accepts up to 100 roles. Any roles not found are ignored. | [optional] |
| **query** | **String** | Returns users that match the given query. For possible matches, we check the email addresses, phone numbers, usernames, web3 wallets, user ids, first and last names. The query value doesn&#39;t need to match the exact value you are looking for, it is capable of partial matches as well. | [optional] |
| **email_address_query** | **String** | Returns users with emails that match the given query, via case-insensitive partial match. For example, &#x60;email_address_query&#x3D;ello&#x60; will match a user with the email &#x60;HELLO@example.com&#x60;. | [optional] |
| **phone_number_query** | **String** | Returns users with phone numbers that match the given query, via case-insensitive partial match. For example, &#x60;phone_number_query&#x3D;555&#x60; will match a user with the phone number &#x60;+1555xxxxxxx&#x60;. | [optional] |
| **username_query** | **String** | Returns users with usernames that match the given query, via case-insensitive partial match. For example, &#x60;username_query&#x3D;CoolUser&#x60; will match a user with the username &#x60;SomeCoolUser&#x60;. | [optional] |
| **name_query** | **String** | Returns users with names that match the given query, via case-insensitive partial match. | [optional] |
| **last_active_at_before** | **Integer** | Returns users whose last session activity was before the given date (with millisecond precision). Example: use 1700690400000 to retrieve users whose last session activity was before 2023-11-23. | [optional] |
| **last_active_at_after** | **Integer** | Returns users whose last session activity was after the given date (with millisecond precision). Example: use 1700690400000 to retrieve users whose last session activity was after 2023-11-23. | [optional] |
| **created_at_before** | **Integer** | Returns users who have been created before the given date (with millisecond precision). Example: use 1730160000000 to retrieve users who have been created before 2024-10-29. | [optional] |
| **created_at_after** | **Integer** | Returns users who have been created after the given date (with millisecond precision). Example: use 1730160000000 to retrieve users who have been created after 2024-10-29. | [optional] |
| **limit** | **Integer** | Applies a limit to the number of results returned. Can be used for paginating the results together with &#x60;offset&#x60;. | [optional][default to 10] |
| **offset** | **Integer** | Skip the first &#x60;offset&#x60; results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with &#x60;limit&#x60;. | [optional][default to 0] |

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
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

organization_id = 'organization_id_example' # String | The ID of the organization the membership belongs to
user_id = 'user_id_example' # String | The ID of the user that this membership belongs to
update_organization_membership_request = ClerkHttpClient::UpdateOrganizationMembershipRequest.new({role: 'role_example'}) # UpdateOrganizationMembershipRequest | 

begin
  # Update an organization membership
  result = Clerk::SDK.organization_memberships.update_organization_membership(organization_id, user_id, update_organization_membership_request)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organization_memberships->update_organization_membership: #{e}"
end
```

#### Using the `update_organization_membership_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganizationMembership>, Integer, Hash)> update_organization_membership_with_http_info(organization_id, user_id, update_organization_membership_request)

```ruby
begin
  # Update an organization membership
  data, status_code, headers = Clerk::SDK.organization_memberships.update_organization_membership_with_http_info(organization_id, user_id, update_organization_membership_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganizationMembership>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organization_memberships->update_organization_membership_with_http_info: #{e}"
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

> <OrganizationMembership> update_organization_membership_metadata(organization_id, user_id, opts)

Merge and update organization membership metadata

Update an organization membership's metadata attributes by merging existing values with the provided parameters. Metadata values will be updated via a deep merge. Deep means that any nested JSON objects will be merged as well. You can remove metadata keys at any level by setting their value to `null`.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

organization_id = 'organization_id_example' # String | The ID of the organization the membership belongs to
user_id = 'user_id_example' # String | The ID of the user that this membership belongs to
opts = {
  update_organization_membership_metadata_request: ClerkHttpClient::UpdateOrganizationMembershipMetadataRequest.new # UpdateOrganizationMembershipMetadataRequest | 
}

begin
  # Merge and update organization membership metadata
  result = Clerk::SDK.organization_memberships.update_organization_membership_metadata(organization_id, user_id, opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organization_memberships->update_organization_membership_metadata: #{e}"
end
```

#### Using the `update_organization_membership_metadata_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganizationMembership>, Integer, Hash)> update_organization_membership_metadata_with_http_info(organization_id, user_id, opts)

```ruby
begin
  # Merge and update organization membership metadata
  data, status_code, headers = Clerk::SDK.organization_memberships.update_organization_membership_metadata_with_http_info(organization_id, user_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganizationMembership>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.organization_memberships->update_organization_membership_metadata_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization_id** | **String** | The ID of the organization the membership belongs to |  |
| **user_id** | **String** | The ID of the user that this membership belongs to |  |
| **update_organization_membership_metadata_request** | [**UpdateOrganizationMembershipMetadataRequest**](UpdateOrganizationMembershipMetadataRequest.md) |  | [optional] |

### Return type

[**OrganizationMembership**](OrganizationMembership.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

