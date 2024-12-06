# ClerkBackend::UpsertTemplateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The user-friendly name of the template | [optional] |
| **subject** | **String** | The email subject. Applicable only to email templates. | [optional] |
| **markup** | **String** | The editor markup used to generate the body of the template | [optional] |
| **body** | **String** | The template body before variable interpolation | [optional] |
| **delivered_by_clerk** | **Boolean** | Whether Clerk should deliver emails or SMS messages based on the current template | [optional] |
| **from_email_name** | **String** | The local part of the From email address that will be used for emails. For example, in the address &#39;hello@example.com&#39;, the local part is &#39;hello&#39;. Applicable only to email templates. | [optional] |
| **reply_to_email_name** | **String** | The local part of the Reply To email address that will be used for emails. For example, in the address &#39;hello@example.com&#39;, the local part is &#39;hello&#39;. Applicable only to email templates. | [optional] |

## Example

```ruby
require 'clerk-backend'

instance = ClerkBackend::UpsertTemplateRequest.new(
  name: null,
  subject: null,
  markup: null,
  body: null,
  delivered_by_clerk: null,
  from_email_name: null,
  reply_to_email_name: null
)
```

