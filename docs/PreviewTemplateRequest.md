# ClerkHttpClient::PreviewTemplateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subject** | **String** | The email subject. Applicable only to email templates. | [optional] |
| **body** | **String** | The template body before variable interpolation | [optional] |
| **from_email_name** | **String** | The local part of the From email address that will be used for emails. For example, in the address &#39;hello@example.com&#39;, the local part is &#39;hello&#39;. Applicable only to email templates. | [optional] |
| **reply_to_email_name** | **String** | The local part of the Reply To email address that will be used for emails. For example, in the address &#39;hello@example.com&#39;, the local part is &#39;hello&#39;. Applicable only to email templates. | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::PreviewTemplateRequest.new(
  subject: null,
  body: null,
  from_email_name: null,
  reply_to_email_name: null
)
```

