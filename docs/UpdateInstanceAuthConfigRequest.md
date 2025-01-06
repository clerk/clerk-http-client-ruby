# ClerkHttpClient::UpdateInstanceAuthConfigRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **restricted_to_allowlist** | **Boolean** | Whether sign up is restricted to email addresses, phone numbers and usernames that are on the allowlist. | [optional][default to false] |
| **from_email_address** | **String** | The local part of the email address from which authentication-related emails (e.g. OTP code, magic links) will be sent. Only alphanumeric values are allowed. Note that this value should contain only the local part of the address (e.g. &#x60;foo&#x60; for &#x60;foo@example.com&#x60;). | [optional] |
| **progressive_sign_up** | **Boolean** | Enable the Progressive Sign Up algorithm. Refer to the [docs](https://clerk.com/docs/upgrade-guides/progressive-sign-up) for more info. | [optional] |
| **session_token_template** | **String** | The name of the JWT Template used to augment your session tokens. To disable this, pass an empty string. | [optional] |
| **enhanced_email_deliverability** | **Boolean** | The \&quot;enhanced_email_deliverability\&quot; feature will send emails from \&quot;verifications@clerk.dev\&quot; instead of your domain. This can be helpful if you do not have a high domain reputation. | [optional] |
| **test_mode** | **Boolean** | Toggles test mode for this instance, allowing the use of test email addresses and phone numbers. Defaults to true for development instances. | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::UpdateInstanceAuthConfigRequest.new(
  restricted_to_allowlist: null,
  from_email_address: null,
  progressive_sign_up: null,
  session_token_template: null,
  enhanced_email_deliverability: null,
  test_mode: null
)
```

