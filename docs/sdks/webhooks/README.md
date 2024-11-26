# Webhooks
(*webhooks*)

## Overview

You can configure webhooks to be notified about various events that happen on your instance.
<https://clerk.com/docs/integration/webhooks>

### Available Operations

* [create_svix_app](#create_svix_app) - Create a Svix app
* [delete_svix_app](#delete_svix_app) - Delete a Svix app
* [generate_svix_auth_url](#generate_svix_auth_url) - Create a Svix Dashboard URL

## create_svix_app

Create a Svix app and associate it with the current instance

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.webhooks.create_svix_app()

if ! res.svix_url.nil?
  # handle response
end

```

### Response

**[T.nilable(::ClerkSDKBackend::Operations::CreateSvixAppResponse)](../../models/operations/createsvixappresponse.md)**



## delete_svix_app

Delete a Svix app and disassociate it from the current instance

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.webhooks.delete_svix_app()

if res.status_code == 200
  # handle response
end

```

### Response

**[T.nilable(::ClerkSDKBackend::Operations::DeleteSvixAppResponse)](../../models/operations/deletesvixappresponse.md)**



## generate_svix_auth_url

Generate a new url for accessing the Svix's management dashboard for that particular instance

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.webhooks.generate_svix_auth_url()

if ! res.svix_url.nil?
  # handle response
end

```

### Response

**[T.nilable(::ClerkSDKBackend::Operations::GenerateSvixAuthURLResponse)](../../models/operations/generatesvixauthurlresponse.md)**

