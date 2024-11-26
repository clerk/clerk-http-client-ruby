# Domains
(*domains*)

## Overview

Domains represent each instance's URLs and DNS setup.

### Available Operations

* [all](#all) - List all instance domains
* [create](#create) - Add a domain
* [delete](#delete) - Delete a satellite domain
* [update](#update) - Update a domain

## all

Use this endpoint to get a list of all domains for an instance.
The response will contain the primary domain for the instance and any satellite domains. Each domain in the response contains information about the URLs where Clerk operates and the required CNAME targets.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.domains.all()

if ! res.domains.nil?
  # handle response
end

```

### Response

**[T.nilable(::ClerkSDKBackend::Operations::ListDomainsResponse)](../../models/operations/listdomainsresponse.md)**



## create

Add a new domain for your instance.
Useful in the case of multi-domain instances, allows adding satellite domains to an instance.
The new domain must have a `name`. The domain name can contain the port for development instances, like `localhost:3000`.
At the moment, instances can have only one primary domain, so the `is_satellite` parameter must be set to `true`.
If you're planning to configure the new satellite domain to run behind a proxy, pass the `proxy_url` parameter accordingly.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)


req = ::ClerkSDKBackend::Operations::AddDomainRequestBody.new(
  name: "<value>",
  is_satellite: ::ClerkSDKBackend::Operations::IsSatellite::TRUE,
)
    
res = s.domains.create(req)

if ! res.domain.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                              | Type                                                                                                   | Required                                                                                               | Description                                                                                            |
| ------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------ |
| `request`                                                                                              | [::ClerkSDKBackend::Operations::AddDomainRequestBody](../../models/operations/adddomainrequestbody.md) | :heavy_check_mark:                                                                                     | The request object to use for the request.                                                             |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::AddDomainResponse)](../../models/operations/adddomainresponse.md)**



## delete

Deletes a satellite domain for the instance.
It is currently not possible to delete the instance's primary domain.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.domains.delete(domain_id="<id>")

if ! res.deleted_object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                              | Type                                                                   | Required                                                               | Description                                                            |
| ---------------------------------------------------------------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------- |
| `domain_id`                                                            | *::String*                                                             | :heavy_check_mark:                                                     | The ID of the domain that will be deleted. Must be a satellite domain. |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::DeleteDomainResponse)](../../models/operations/deletedomainresponse.md)**



## update

The `proxy_url` can be updated only for production instances.
Update one of the instance's domains. Both primary and satellite domains can be updated.
If you choose to use Clerk via proxy, use this endpoint to specify the `proxy_url`.
Whenever you decide you'd rather switch to DNS setup for Clerk, simply set `proxy_url`
to `null` for the domain. When you update a production instance's primary domain name,
you have to make sure that you've completed all the necessary setup steps for DNS and
emails to work. Expect downtime otherwise. Updating a primary domain's name will also
update the instance's home origin, affecting the default application paths.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.domains.update(domain_id="<id>", request_body=::ClerkSDKBackend::Operations::UpdateDomainRequestBody.new())

if ! res.domain.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                    | Type                                                                                                         | Required                                                                                                     | Description                                                                                                  |
| ------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------ |
| `domain_id`                                                                                                  | *::String*                                                                                                   | :heavy_check_mark:                                                                                           | The ID of the domain that will be updated.                                                                   |
| `request_body`                                                                                               | [::ClerkSDKBackend::Operations::UpdateDomainRequestBody](../../models/operations/updatedomainrequestbody.md) | :heavy_check_mark:                                                                                           | N/A                                                                                                          |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::UpdateDomainResponse)](../../models/operations/updatedomainresponse.md)**

