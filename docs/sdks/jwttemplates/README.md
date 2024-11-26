# JwtTemplates
(*jwt_templates*)

## Overview

### Available Operations

* [all](#all) - List all templates
* [create](#create) - Create a JWT template
* [find](#find) - Retrieve a template
* [update](#update) - Update a JWT template
* [delete](#delete) - Delete a Template

## all

List all templates

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.jwt_templates.all()

if ! res.jwt_template_list.nil?
  # handle response
end

```

### Response

**[T.nilable(::ClerkSDKBackend::Operations::ListJWTTemplatesResponse)](../../models/operations/listjwttemplatesresponse.md)**



## create

Create a new JWT template

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)


req = ::ClerkSDKBackend::Operations::CreateJWTTemplateRequestBody.new()
    
res = s.jwt_templates.create(req)

if ! res.jwt_template.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                              | Type                                                                                                                   | Required                                                                                                               | Description                                                                                                            |
| ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                              | [::ClerkSDKBackend::Operations::CreateJWTTemplateRequestBody](../../models/operations/createjwttemplaterequestbody.md) | :heavy_check_mark:                                                                                                     | The request object to use for the request.                                                                             |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::CreateJWTTemplateResponse)](../../models/operations/createjwttemplateresponse.md)**



## find

Retrieve the details of a given JWT template

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.jwt_templates.find(template_id="<id>")

if ! res.jwt_template.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `template_id`      | *::String*         | :heavy_check_mark: | JWT Template ID    |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::GetJWTTemplateResponse)](../../models/operations/getjwttemplateresponse.md)**



## update

Updates an existing JWT template

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.jwt_templates.update(template_id="<id>", request_body=::ClerkSDKBackend::Operations::UpdateJWTTemplateRequestBody.new())

if ! res.jwt_template.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                              | Type                                                                                                                   | Required                                                                                                               | Description                                                                                                            |
| ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- |
| `template_id`                                                                                                          | *::String*                                                                                                             | :heavy_check_mark:                                                                                                     | The ID of the JWT template to update                                                                                   |
| `request_body`                                                                                                         | [::ClerkSDKBackend::Operations::UpdateJWTTemplateRequestBody](../../models/operations/updatejwttemplaterequestbody.md) | :heavy_check_mark:                                                                                                     | N/A                                                                                                                    |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::UpdateJWTTemplateResponse)](../../models/operations/updatejwttemplateresponse.md)**



## delete

Delete a Template

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.jwt_templates.delete(template_id="<id>")

if ! res.deleted_object.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `template_id`      | *::String*         | :heavy_check_mark: | JWT Template ID    |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::DeleteJWTTemplateResponse)](../../models/operations/deletejwttemplateresponse.md)**

