# BetaFeatures
(*beta_features*)

## Overview

### Available Operations

* [update_instance_auth_config](#update_instance_auth_config) - Update instance settings
* [change_production_domain](#change_production_domain) - Update production instance domain

## update_instance_auth_config

Updates the settings of an instance

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)


req = ::ClerkSDKBackend::Operations::UpdateInstanceAuthConfigRequestBody.new()
    
res = s.beta_features.update_instance_auth_config(req)

if ! res.instance_settings.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                            | Type                                                                                                                                 | Required                                                                                                                             | Description                                                                                                                          |
| ------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                            | [::ClerkSDKBackend::Operations::UpdateInstanceAuthConfigRequestBody](../../models/operations/updateinstanceauthconfigrequestbody.md) | :heavy_check_mark:                                                                                                                   | The request object to use for the request.                                                                                           |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::UpdateInstanceAuthConfigResponse)](../../models/operations/updateinstanceauthconfigresponse.md)**



## change_production_domain

Change the domain of a production instance.

Changing the domain requires updating the [DNS records](https://clerk.com/docs/deployments/overview#dns-records) accordingly, deploying new [SSL certificates](https://clerk.com/docs/deployments/overview#deploy), updating your Social Connection's redirect URLs and setting the new keys in your code.

WARNING: Changing your domain will invalidate all current user sessions (i.e. users will be logged out). Also, while your application is being deployed, a small downtime is expected to occur.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)


req = ::ClerkSDKBackend::Operations::ChangeProductionInstanceDomainRequestBody.new()
    
res = s.beta_features.change_production_domain(req)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                                        | [::ClerkSDKBackend::Operations::ChangeProductionInstanceDomainRequestBody](../../models/operations/changeproductioninstancedomainrequestbody.md) | :heavy_check_mark:                                                                                                                               | The request object to use for the request.                                                                                                       |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::ChangeProductionInstanceDomainResponse)](../../models/operations/changeproductioninstancedomainresponse.md)**

