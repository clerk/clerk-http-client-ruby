# ClerkHttpClient::WaitlistEntryInvitation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  |  |
| **id** | **String** |  |  |
| **email_address** | **String** |  |  |
| **public_metadata** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **revoked** | **Boolean** |  | [optional] |
| **status** | **String** |  |  |
| **url** | **String** |  | [optional] |
| **expires_at** | **Integer** | Unix timestamp of expiration.  | [optional] |
| **created_at** | **Integer** | Unix timestamp of creation.  |  |
| **updated_at** | **Integer** | Unix timestamp of last update.  |  |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::WaitlistEntryInvitation.new(
  object: null,
  id: null,
  email_address: null,
  public_metadata: null,
  revoked: false,
  status: pending,
  url: null,
  expires_at: null,
  created_at: null,
  updated_at: null
)
```

