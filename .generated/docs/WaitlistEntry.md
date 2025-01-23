# ClerkHttpClient::WaitlistEntry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  |  |
| **id** | **String** |  |  |
| **email_address** | **String** |  |  |
| **status** | **String** |  |  |
| **is_locked** | **Boolean** | Indicates if the waitlist entry is locked. Locked entries are being processed in a batch action and are unavailable for other actions.  | [optional] |
| **created_at** | **Integer** | Unix timestamp of creation.  |  |
| **updated_at** | **Integer** | Unix timestamp of last update.  |  |
| **invitation** | [**WaitlistEntryInvitation**](WaitlistEntryInvitation.md) |  | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::WaitlistEntry.new(
  object: null,
  id: null,
  email_address: null,
  status: pending,
  is_locked: null,
  created_at: null,
  updated_at: null,
  invitation: null
)
```

