# SamlConnections
(*saml_connections*)

## Overview

### Available Operations

* [all](#all) - Get a list of SAML Connections for an instance
* [create](#create) - Create a SAML Connection
* [find](#find) - Retrieve a SAML Connection by ID
* [update](#update) - Update a SAML Connection
* [delete](#delete) - Delete a SAML Connection

## all

Returns the list of SAML Connections for an instance.
Results can be paginated using the optional `limit` and `offset` query parameters.
The SAML Connections are ordered by descending creation date and the most recent will be returned first.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.saml_connections.all(limit=2433.94, offset=7280.53)

if ! res.saml_connections.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                 | Type                                                                                                                                      | Required                                                                                                                                  | Description                                                                                                                               |
| ----------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- |
| `limit`                                                                                                                                   | *T.nilable(::Float)*                                                                                                                      | :heavy_minus_sign:                                                                                                                        | Applies a limit to the number of results returned.<br/>Can be used for paginating the results together with `offset`.                     |
| `offset`                                                                                                                                  | *T.nilable(::Float)*                                                                                                                      | :heavy_minus_sign:                                                                                                                        | Skip the first `offset` results when paginating.<br/>Needs to be an integer greater or equal to zero.<br/>To be used in conjunction with `limit`. |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::ListSAMLConnectionsResponse)](../../models/operations/listsamlconnectionsresponse.md)**



## create

Create a new SAML Connection.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)


req = ::ClerkSDKBackend::Operations::CreateSAMLConnectionRequestBody.new(
  name: "<value>",
  domain: "low-packaging.info",
  provider: ::ClerkSDKBackend::Operations::Provider::SAML_CUSTOM,
)
    
res = s.saml_connections.create(req)

if ! res.schemas_saml_connection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                    | Type                                                                                                                         | Required                                                                                                                     | Description                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                    | [::ClerkSDKBackend::Operations::CreateSAMLConnectionRequestBody](../../models/operations/createsamlconnectionrequestbody.md) | :heavy_check_mark:                                                                                                           | The request object to use for the request.                                                                                   |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::CreateSAMLConnectionResponse)](../../models/operations/createsamlconnectionresponse.md)**



## find

Fetches the SAML Connection whose ID matches the provided `saml_connection_id` in the path.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.saml_connections.find(saml_connection_id="<id>")

if ! res.schemas_saml_connection.nil?
  # handle response
end

```

### Parameters

| Parameter                     | Type                          | Required                      | Description                   |
| ----------------------------- | ----------------------------- | ----------------------------- | ----------------------------- |
| `saml_connection_id`          | *::String*                    | :heavy_check_mark:            | The ID of the SAML Connection |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::GetSAMLConnectionResponse)](../../models/operations/getsamlconnectionresponse.md)**



## update

Updates the SAML Connection whose ID matches the provided `id` in the path.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.saml_connections.update(saml_connection_id="<id>", request_body=::ClerkSDKBackend::Operations::UpdateSAMLConnectionRequestBody.new())

if ! res.schemas_saml_connection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                    | Type                                                                                                                         | Required                                                                                                                     | Description                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------- |
| `saml_connection_id`                                                                                                         | *::String*                                                                                                                   | :heavy_check_mark:                                                                                                           | The ID of the SAML Connection to update                                                                                      |
| `request_body`                                                                                                               | [::ClerkSDKBackend::Operations::UpdateSAMLConnectionRequestBody](../../models/operations/updatesamlconnectionrequestbody.md) | :heavy_check_mark:                                                                                                           | N/A                                                                                                                          |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::UpdateSAMLConnectionResponse)](../../models/operations/updatesamlconnectionresponse.md)**



## delete

Deletes the SAML Connection whose ID matches the provided `id` in the path.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.saml_connections.delete(saml_connection_id="<id>")

if ! res.deleted_object.nil?
  # handle response
end

```

### Parameters

| Parameter                               | Type                                    | Required                                | Description                             |
| --------------------------------------- | --------------------------------------- | --------------------------------------- | --------------------------------------- |
| `saml_connection_id`                    | *::String*                              | :heavy_check_mark:                      | The ID of the SAML Connection to delete |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::DeleteSAMLConnectionResponse)](../../models/operations/deletesamlconnectionresponse.md)**

