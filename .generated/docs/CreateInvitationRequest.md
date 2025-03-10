# ClerkHttpClient::CreateInvitationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email_address** | **String** | The email address the invitation will be sent to |  |
| **public_metadata** | **Hash&lt;String, Object&gt;** | Metadata that will be attached to the newly created invitation. The value of this property should be a well-formed JSON object. Once the user accepts the invitation and signs up, these metadata will end up in the user&#39;s public metadata. | [optional] |
| **redirect_url** | **String** | Optional URL which specifies where to redirect the user once they click the invitation link. This is only required if you have implemented a [custom flow](https://clerk.com/docs/authentication/invitations#custom-flow) and you&#39;re not using Clerk Hosted Pages or Clerk Components. | [optional] |
| **notify** | **Boolean** | Optional flag which denotes whether an email invitation should be sent to the given email address. Defaults to &#x60;true&#x60;. | [optional][default to true] |
| **ignore_existing** | **Boolean** | Whether an invitation should be created if there is already an existing invitation for this email address, or it&#39;s claimed by another user. | [optional][default to false] |
| **expires_in_days** | **Integer** | The number of days the invitation will be valid for. By default, the invitation expires after 30 days. | [optional] |
| **template_slug** | **String** | The slug of the email template to use for the invitation email. | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::CreateInvitationRequest.new(
  email_address: null,
  public_metadata: null,
  redirect_url: null,
  notify: null,
  ignore_existing: null,
  expires_in_days: null,
  template_slug: null
)
```

