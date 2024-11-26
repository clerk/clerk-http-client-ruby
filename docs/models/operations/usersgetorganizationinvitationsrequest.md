# UsersGetOrganizationInvitationsRequest


## Fields

| Field                                                                                                                                     | Type                                                                                                                                      | Required                                                                                                                                  | Description                                                                                                                               |
| ----------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- |
| `user_id`                                                                                                                                 | *::String*                                                                                                                                | :heavy_check_mark:                                                                                                                        | The ID of the user whose organization invitations we want to retrieve                                                                     |
| `limit`                                                                                                                                   | *T.nilable(::Float)*                                                                                                                      | :heavy_minus_sign:                                                                                                                        | Applies a limit to the number of results returned.<br/>Can be used for paginating the results together with `offset`.                     |
| `offset`                                                                                                                                  | *T.nilable(::Float)*                                                                                                                      | :heavy_minus_sign:                                                                                                                        | Skip the first `offset` results when paginating.<br/>Needs to be an integer greater or equal to zero.<br/>To be used in conjunction with `limit`. |
| `status`                                                                                                                                  | [T.nilable(::ClerkSDKBackend::Operations::QueryParamStatus)](../../models/operations/queryparamstatus.md)                                 | :heavy_minus_sign:                                                                                                                        | Filter organization invitations based on their status                                                                                     |