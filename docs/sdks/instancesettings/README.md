# InstanceSettings
(*instance_settings*)

## Overview

### Available Operations

* [update](#update) - Update instance settings
* [update_restrictions](#update_restrictions) - Update instance restrictions
* [update_organization](#update_organization) - Update instance organization settings

## update

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


req = ::ClerkSDKBackend::Operations::UpdateInstanceRequestBody.new()
    
res = s.instance_settings.update(req)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                        | Type                                                                                                             | Required                                                                                                         | Description                                                                                                      |
| ---------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                        | [::ClerkSDKBackend::Operations::UpdateInstanceRequestBody](../../models/operations/updateinstancerequestbody.md) | :heavy_check_mark:                                                                                               | The request object to use for the request.                                                                       |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::UpdateInstanceResponse)](../../models/operations/updateinstanceresponse.md)**



## update_restrictions

Updates the restriction settings of an instance

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)


req = ::ClerkSDKBackend::Operations::UpdateInstanceRestrictionsRequestBody.new()
    
res = s.instance_settings.update_restrictions(req)

if ! res.instance_restrictions.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                | Type                                                                                                                                     | Required                                                                                                                                 | Description                                                                                                                              |
| ---------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                                | [::ClerkSDKBackend::Operations::UpdateInstanceRestrictionsRequestBody](../../models/operations/updateinstancerestrictionsrequestbody.md) | :heavy_check_mark:                                                                                                                       | The request object to use for the request.                                                                                               |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::UpdateInstanceRestrictionsResponse)](../../models/operations/updateinstancerestrictionsresponse.md)**



## update_organization

Updates the organization settings of the instance

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)


req = ::ClerkSDKBackend::Operations::UpdateInstanceOrganizationSettingsRequestBody.new()
    
res = s.instance_settings.update_organization(req)

if ! res.organization_settings.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                | Type                                                                                                                                                     | Required                                                                                                                                                 | Description                                                                                                                                              |
| -------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                                                | [::ClerkSDKBackend::Operations::UpdateInstanceOrganizationSettingsRequestBody](../../models/operations/updateinstanceorganizationsettingsrequestbody.md) | :heavy_check_mark:                                                                                                                                       | The request object to use for the request.                                                                                                               |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::UpdateInstanceOrganizationSettingsResponse)](../../models/operations/updateinstanceorganizationsettingsresponse.md)**

