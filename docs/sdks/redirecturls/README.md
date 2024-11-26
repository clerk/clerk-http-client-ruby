# RedirectUrls
(*redirect_urls*)

## Overview

### Available Operations

* [all](#all) - List all redirect URLs
* [create](#create) - Create a redirect URL
* [find](#find) - Retrieve a redirect URL
* [delete](#delete) - Delete a redirect URL

## all

Lists all whitelisted redirect_urls for the instance

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.redirect_urls.all()

if ! res.redirect_url_list.nil?
  # handle response
end

```

### Response

**[T.nilable(::ClerkSDKBackend::Operations::ListRedirectURLsResponse)](../../models/operations/listredirecturlsresponse.md)**



## create

Create a redirect URL

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)


req = ::ClerkSDKBackend::Operations::CreateRedirectURLRequestBody.new()
    
res = s.redirect_urls.create(req)

if ! res.redirect_url.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                              | Type                                                                                                                   | Required                                                                                                               | Description                                                                                                            |
| ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                              | [::ClerkSDKBackend::Operations::CreateRedirectURLRequestBody](../../models/operations/createredirecturlrequestbody.md) | :heavy_check_mark:                                                                                                     | The request object to use for the request.                                                                             |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::CreateRedirectURLResponse)](../../models/operations/createredirecturlresponse.md)**



## find

Retrieve the details of the redirect URL with the given ID

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.redirect_urls.find(id="<id>")

if ! res.redirect_url.nil?
  # handle response
end

```

### Parameters

| Parameter                  | Type                       | Required                   | Description                |
| -------------------------- | -------------------------- | -------------------------- | -------------------------- |
| `id`                       | *::String*                 | :heavy_check_mark:         | The ID of the redirect URL |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::GetRedirectURLResponse)](../../models/operations/getredirecturlresponse.md)**



## delete

Remove the selected redirect URL from the whitelist of the instance

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.redirect_urls.delete(id="<id>")

if ! res.deleted_object.nil?
  # handle response
end

```

### Parameters

| Parameter                  | Type                       | Required                   | Description                |
| -------------------------- | -------------------------- | -------------------------- | -------------------------- |
| `id`                       | *::String*                 | :heavy_check_mark:         | The ID of the redirect URL |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::DeleteRedirectURLResponse)](../../models/operations/deleteredirecturlresponse.md)**

