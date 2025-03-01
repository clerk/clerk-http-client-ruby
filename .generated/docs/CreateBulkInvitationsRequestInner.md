# ClerkHttpClient::CreateBulkInvitationsRequestInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email_address** | **String** | The email address the invitation will be sent to |  |
| **public_metadata** | **Hash&lt;String, Object&gt;** | Metadata that will be attached to the newly created invitation. The value of this property should be a well-formed JSON object. Once the user accepts the invitation and signs up, these metadata will end up in the user&#39;s public metadata. | [optional] |
| **redirect_url** | **String** | The URL where the user is redirected upon visiting the invitation link, where they can accept the invitation. Required if you have implemented a [custom flow for handling application invitations](/docs/custom-flows/invitations). | [optional] |
| **notify** | **Boolean** | Optional flag which denotes whether an email invitation should be sent to the given email address. Defaults to true. | [optional][default to true] |
| **ignore_existing** | **Boolean** | Whether an invitation should be created if there is already an existing invitation for this email address, or it&#39;s claimed by another user. | [optional][default to false] |
| **expires_in_days** | **Integer** | The number of days the invitation will be valid for. By default, the invitation expires after 30 days. | [optional] |
| **template_slug** | **String** | The slug of the email template to use for the invitation email. | [optional][default to &#39;invitation&#39;] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::CreateBulkInvitationsRequestInner.new(
  email_address: null,
  public_metadata: null,
  redirect_url: null,
  notify: null,
  ignore_existing: null,
  expires_in_days: null,
  template_slug: null
)
```

