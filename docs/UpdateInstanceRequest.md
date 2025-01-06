# ClerkHttpClient::UpdateInstanceRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **test_mode** | **Boolean** | Toggles test mode for this instance, allowing the use of test email addresses and phone numbers. Defaults to true for development instances. | [optional] |
| **hibp** | **Boolean** | Whether the instance should be using the HIBP service to check passwords for breaches | [optional] |
| **enhanced_email_deliverability** | **Boolean** | The \&quot;enhanced_email_deliverability\&quot; feature will send emails from \&quot;verifications@clerk.dev\&quot; instead of your domain. This can be helpful if you do not have a high domain reputation. | [optional] |
| **support_email** | **String** |  | [optional] |
| **clerk_js_version** | **String** |  | [optional] |
| **development_origin** | **String** |  | [optional] |
| **allowed_origins** | **Array&lt;String&gt;** | For browser-like stacks such as browser extensions, Electron, or Capacitor.js the instance allowed origins need to be updated with the request origin value. For Chrome extensions popup, background, or service worker pages the origin is chrome-extension://extension_uiid. For Electron apps the default origin is http://localhost:3000. For Capacitor, the origin is capacitor://localhost. | [optional] |
| **cookieless_dev** | **Boolean** | Whether the instance should operate in cookieless development mode (i.e. without third-party cookies). Deprecated: Please use &#x60;url_based_session_syncing&#x60; instead. | [optional] |
| **url_based_session_syncing** | **Boolean** | Whether the instance should use URL-based session syncing in development mode (i.e. without third-party cookies). | [optional] |

## Example

```ruby
require 'clerk-http-client-ruby'

instance = ClerkHttpClient::UpdateInstanceRequest.new(
  test_mode: null,
  hibp: null,
  enhanced_email_deliverability: null,
  support_email: null,
  clerk_js_version: null,
  development_origin: null,
  allowed_origins: null,
  cookieless_dev: null,
  url_based_session_syncing: null
)
```

