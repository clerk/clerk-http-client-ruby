# BlocklistIdentifier


## Fields

| Field                                                                                                                               | Type                                                                                                                                | Required                                                                                                                            | Description                                                                                                                         |
| ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- |
| `object`                                                                                                                            | [T.nilable(::ClerkSDKBackend::Shared::BlocklistIdentifierObject)](../../models/shared/blocklistidentifierobject.md)                 | :heavy_minus_sign:                                                                                                                  | String representing the object's type. Objects of the same type share the same value.<br/>                                          |
| `id`                                                                                                                                | *T.nilable(::String)*                                                                                                               | :heavy_minus_sign:                                                                                                                  | N/A                                                                                                                                 |
| `identifier`                                                                                                                        | *T.nilable(::String)*                                                                                                               | :heavy_minus_sign:                                                                                                                  | An email address, email domain, phone number or web3 wallet.<br/>                                                                   |
| `identifier_type`                                                                                                                   | [T.nilable(::ClerkSDKBackend::Shared::BlocklistIdentifierIdentifierType)](../../models/shared/blocklistidentifieridentifiertype.md) | :heavy_minus_sign:                                                                                                                  | N/A                                                                                                                                 |
| `instance_id`                                                                                                                       | *T.nilable(::String)*                                                                                                               | :heavy_minus_sign:                                                                                                                  | N/A                                                                                                                                 |
| `created_at`                                                                                                                        | *T.nilable(::Integer)*                                                                                                              | :heavy_minus_sign:                                                                                                                  | Unix timestamp of creation<br/>                                                                                                     |
| `updated_at`                                                                                                                        | *T.nilable(::Integer)*                                                                                                              | :heavy_minus_sign:                                                                                                                  | Unix timestamp of last update.<br/>                                                                                                 |