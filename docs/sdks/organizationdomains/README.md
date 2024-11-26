# OrganizationDomains
(*organization_domains*)

## Overview

### Available Operations

* [create](#create) - Create a new organization domain.
* [all](#all) - Get a list of all domains of an organization.
* [update](#update) - Update an organization domain.
* [delete](#delete) - Remove a domain from an organization.

## create

Creates a new organization domain. By default the domain is verified, but can be optionally set to unverified.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.organization_domains.create(organization_id="<id>", request_body=::ClerkSDKBackend::Operations::CreateOrganizationDomainRequestBody.new())

if ! res.organization_domain.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                            | Type                                                                                                                                 | Required                                                                                                                             | Description                                                                                                                          |
| ------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------ |
| `organization_id`                                                                                                                    | *::String*                                                                                                                           | :heavy_check_mark:                                                                                                                   | The ID of the organization where the new domain will be created.                                                                     |
| `request_body`                                                                                                                       | [::ClerkSDKBackend::Operations::CreateOrganizationDomainRequestBody](../../models/operations/createorganizationdomainrequestbody.md) | :heavy_check_mark:                                                                                                                   | N/A                                                                                                                                  |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::CreateOrganizationDomainResponse)](../../models/operations/createorganizationdomainresponse.md)**



## all

Get a list of all domains of an organization.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)


req = ::ClerkSDKBackend::Operations::ListOrganizationDomainsRequest.new(
  organization_id: "<id>",
)
    
res = s.organization_domains.all(req)

if ! res.organization_domains.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                  | Type                                                                                                                       | Required                                                                                                                   | Description                                                                                                                |
| -------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                  | [::ClerkSDKBackend::Operations::ListOrganizationDomainsRequest](../../models/operations/listorganizationdomainsrequest.md) | :heavy_check_mark:                                                                                                         | The request object to use for the request.                                                                                 |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::ListOrganizationDomainsResponse)](../../models/operations/listorganizationdomainsresponse.md)**



## update

Updates the properties of an existing organization domain.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.organization_domains.update(organization_id="<id>", domain_id="<id>", request_body=::ClerkSDKBackend::Operations::UpdateOrganizationDomainRequestBody.new())

if ! res.organization_domain.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                            | Type                                                                                                                                 | Required                                                                                                                             | Description                                                                                                                          |
| ------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------ |
| `organization_id`                                                                                                                    | *::String*                                                                                                                           | :heavy_check_mark:                                                                                                                   | The ID of the organization the domain belongs to                                                                                     |
| `domain_id`                                                                                                                          | *::String*                                                                                                                           | :heavy_check_mark:                                                                                                                   | The ID of the domain                                                                                                                 |
| `request_body`                                                                                                                       | [::ClerkSDKBackend::Operations::UpdateOrganizationDomainRequestBody](../../models/operations/updateorganizationdomainrequestbody.md) | :heavy_check_mark:                                                                                                                   | N/A                                                                                                                                  |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::UpdateOrganizationDomainResponse)](../../models/operations/updateorganizationdomainresponse.md)**



## delete

Removes the given domain from the organization.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.organization_domains.delete(organization_id="<id>", domain_id="<id>")

if ! res.deleted_object.nil?
  # handle response
end

```

### Parameters

| Parameter                                        | Type                                             | Required                                         | Description                                      |
| ------------------------------------------------ | ------------------------------------------------ | ------------------------------------------------ | ------------------------------------------------ |
| `organization_id`                                | *::String*                                       | :heavy_check_mark:                               | The ID of the organization the domain belongs to |
| `domain_id`                                      | *::String*                                       | :heavy_check_mark:                               | The ID of the domain                             |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::DeleteOrganizationDomainResponse)](../../models/operations/deleteorganizationdomainresponse.md)**

