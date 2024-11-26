# openapi

Developer-friendly & type-safe Ruby SDK specifically catered to leverage *openapi* API.

<div align="left">
    <a href="https://www.speakeasy.com/?utm_source=openapi&utm_campaign=ruby"><img src="https://custom-icon-badges.demolab.com/badge/-Built%20By%20Speakeasy-212015?style=for-the-badge&logoColor=FBE331&logo=speakeasy&labelColor=545454" /></a>
    <a href="https://opensource.org/licenses/MIT">
        <img src="https://img.shields.io/badge/License-MIT-blue.svg" style="width: 100px; height: 28px;" />
    </a>
</div>


<br /><br />
> [!IMPORTANT]
> This SDK is not yet ready for production use. To complete setup please follow the steps outlined in your [workspace](https://app.speakeasy.com/org/clerk/clerk). Delete this section before > publishing to a package manager.

<!-- Start Summary [summary] -->
## Summary

Clerk Backend API: The Clerk REST Backend API, meant to be accessed by backend
servers.

### Versions

When the API changes in a way that isn't compatible with older versions, a new version is released.
Each version is identified by its release date, e.g. `2021-02-05`. For more information, please see [Clerk API Versions](https://clerk.com/docs/backend-requests/versioning/overview).


Please see https://clerk.com/docs for more information.

More information about the API can be found at https://clerk.com/docs
<!-- End Summary [summary] -->

<!-- Start Table of Contents [toc] -->
## Table of Contents

* [SDK Installation](#sdk-installation)
* [SDK Example Usage](#sdk-example-usage)
* [Available Resources and Operations](#available-resources-and-operations)
* [Server Selection](#server-selection)
<!-- End Table of Contents [toc] -->

<!-- Start SDK Installation [installation] -->
## SDK Installation

The SDK can be installed using [RubyGems](https://rubygems.org/):

```bash
gem install specific_install
gem specific_install  
```
<!-- End SDK Installation [installation] -->

<!-- Start SDK Example Usage [usage] -->
## SDK Example Usage

### Example

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new

    
res = s.miscellaneous.get_public_interstitial(frontend_api="<value>", publishable_key="<value>")

if res.status_code == 200
  # handle response
end

```
<!-- End SDK Example Usage [usage] -->

<!-- Start Available Resources and Operations [operations] -->
## Available Resources and Operations

<details open>
<summary>Available methods</summary>

### [actor_tokens](docs/sdks/actortokens/README.md)

* [create](docs/sdks/actortokens/README.md#create) - Create actor token
* [delete](docs/sdks/actortokens/README.md#delete) - Revoke actor token

### [allowlist_identifiers](docs/sdks/allowlistidentifiers/README.md)

* [all](docs/sdks/allowlistidentifiers/README.md#all) - List all identifiers on the allow-list
* [create](docs/sdks/allowlistidentifiers/README.md#create) - Add identifier to the allow-list
* [delete](docs/sdks/allowlistidentifiers/README.md#delete) - Delete identifier from allow-list

### [beta_features](docs/sdks/betafeatures/README.md)

* [update_instance_auth_config](docs/sdks/betafeatures/README.md#update_instance_auth_config) - Update instance settings
* [change_production_domain](docs/sdks/betafeatures/README.md#change_production_domain) - Update production instance domain

### [blocklist_identifiers](docs/sdks/blocklistidentifiers/README.md)

* [all](docs/sdks/blocklistidentifiers/README.md#all) - List all identifiers on the block-list
* [create](docs/sdks/blocklistidentifiers/README.md#create) - Add identifier to the block-list
* [delete](docs/sdks/blocklistidentifiers/README.md#delete) - Delete identifier from block-list

### [clients](docs/sdks/clients/README.md)

* [verify](docs/sdks/clients/README.md#verify) - Verify a client
* [find](docs/sdks/clients/README.md#find) - Get a client

### [domains](docs/sdks/domains/README.md)

* [all](docs/sdks/domains/README.md#all) - List all instance domains
* [create](docs/sdks/domains/README.md#create) - Add a domain
* [delete](docs/sdks/domains/README.md#delete) - Delete a satellite domain
* [update](docs/sdks/domains/README.md#update) - Update a domain

### [email_addresses](docs/sdks/emailaddresses/README.md)

* [create](docs/sdks/emailaddresses/README.md#create) - Create an email address
* [find](docs/sdks/emailaddresses/README.md#find) - Retrieve an email address
* [delete](docs/sdks/emailaddresses/README.md#delete) - Delete an email address
* [update](docs/sdks/emailaddresses/README.md#update) - Update an email address

### [instance_settings](docs/sdks/instancesettings/README.md)

* [update](docs/sdks/instancesettings/README.md#update) - Update instance settings
* [update_restrictions](docs/sdks/instancesettings/README.md#update_restrictions) - Update instance restrictions
* [update_organization](docs/sdks/instancesettings/README.md#update_organization) - Update instance organization settings

### [invitations](docs/sdks/invitations/README.md)

* [create](docs/sdks/invitations/README.md#create) - Create an invitation
* [all](docs/sdks/invitations/README.md#all) - List all invitations
* [delete](docs/sdks/invitations/README.md#delete) - Revokes an invitation

### [jwks](docs/sdks/jwks/README.md)

* [find](docs/sdks/jwks/README.md#find) - Retrieve the JSON Web Key Set of the instance

### [jwt_templates](docs/sdks/jwttemplates/README.md)

* [all](docs/sdks/jwttemplates/README.md#all) - List all templates
* [create](docs/sdks/jwttemplates/README.md#create) - Create a JWT template
* [find](docs/sdks/jwttemplates/README.md#find) - Retrieve a template
* [update](docs/sdks/jwttemplates/README.md#update) - Update a JWT template
* [delete](docs/sdks/jwttemplates/README.md#delete) - Delete a Template

### [miscellaneous](docs/sdks/miscellaneous/README.md)

* [get_public_interstitial](docs/sdks/miscellaneous/README.md#get_public_interstitial) - Returns the markup for the interstitial page

### [oauth_applications](docs/sdks/oauthapplications/README.md)

* [all](docs/sdks/oauthapplications/README.md#all) - Get a list of OAuth applications for an instance
* [create](docs/sdks/oauthapplications/README.md#create) - Create an OAuth application
* [find](docs/sdks/oauthapplications/README.md#find) - Retrieve an OAuth application by ID
* [update](docs/sdks/oauthapplications/README.md#update) - Update an OAuth application
* [delete](docs/sdks/oauthapplications/README.md#delete) - Delete an OAuth application
* [rotate_secret](docs/sdks/oauthapplications/README.md#rotate_secret) - Rotate the client secret of the given OAuth application

### [organization_domains](docs/sdks/organizationdomains/README.md)

* [create](docs/sdks/organizationdomains/README.md#create) - Create a new organization domain.
* [all](docs/sdks/organizationdomains/README.md#all) - Get a list of all domains of an organization.
* [update](docs/sdks/organizationdomains/README.md#update) - Update an organization domain.
* [delete](docs/sdks/organizationdomains/README.md#delete) - Remove a domain from an organization.

### [organization_invitations](docs/sdks/organizationinvitations/README.md)

* [all](docs/sdks/organizationinvitations/README.md#all) - Get a list of organization invitations for the current instance
* [create](docs/sdks/organizationinvitations/README.md#create) - Create and send an organization invitation
* [find_by_organization](docs/sdks/organizationinvitations/README.md#find_by_organization) - Get a list of organization invitations
* [create_bulk](docs/sdks/organizationinvitations/README.md#create_bulk) - Bulk create and send organization invitations
* [find](docs/sdks/organizationinvitations/README.md#find) - Retrieve an organization invitation by ID
* [delete](docs/sdks/organizationinvitations/README.md#delete) - Revoke a pending organization invitation

### [organization_memberships](docs/sdks/organizationmemberships/README.md)

* [create](docs/sdks/organizationmemberships/README.md#create) - Create a new organization membership
* [all](docs/sdks/organizationmemberships/README.md#all) - Get a list of all members of an organization
* [update](docs/sdks/organizationmemberships/README.md#update) - Update an organization membership
* [delete](docs/sdks/organizationmemberships/README.md#delete) - Remove a member from an organization
* [update_metadata](docs/sdks/organizationmemberships/README.md#update_metadata) - Merge and update organization membership metadata
* [find](docs/sdks/organizationmemberships/README.md#find) - Get a list of all organization memberships within an instance.

### [organizations](docs/sdks/organizations/README.md)

* [all](docs/sdks/organizations/README.md#all) - Get a list of organizations for an instance
* [create](docs/sdks/organizations/README.md#create) - Create an organization
* [find](docs/sdks/organizations/README.md#find) - Retrieve an organization by ID or slug
* [update](docs/sdks/organizations/README.md#update) - Update an organization
* [delete](docs/sdks/organizations/README.md#delete) - Delete an organization
* [update_metadata](docs/sdks/organizations/README.md#update_metadata) - Merge and update metadata for an organization
* [upload_logo](docs/sdks/organizations/README.md#upload_logo) - Upload a logo for the organization
* [delete_logo](docs/sdks/organizations/README.md#delete_logo) - Delete the organization's logo.

### [phone_numbers](docs/sdks/phonenumbers/README.md)

* [create](docs/sdks/phonenumbers/README.md#create) - Create a phone number
* [find](docs/sdks/phonenumbers/README.md#find) - Retrieve a phone number
* [delete](docs/sdks/phonenumbers/README.md#delete) - Delete a phone number
* [update](docs/sdks/phonenumbers/README.md#update) - Update a phone number

### [proxy_checks](docs/sdks/proxychecks/README.md)

* [verify](docs/sdks/proxychecks/README.md#verify) - Verify the proxy configuration for your domain

### [redirect_urls](docs/sdks/redirecturls/README.md)

* [all](docs/sdks/redirecturls/README.md#all) - List all redirect URLs
* [create](docs/sdks/redirecturls/README.md#create) - Create a redirect URL
* [find](docs/sdks/redirecturls/README.md#find) - Retrieve a redirect URL
* [delete](docs/sdks/redirecturls/README.md#delete) - Delete a redirect URL

### [saml_connections](docs/sdks/samlconnections/README.md)

* [all](docs/sdks/samlconnections/README.md#all) - Get a list of SAML Connections for an instance
* [create](docs/sdks/samlconnections/README.md#create) - Create a SAML Connection
* [find](docs/sdks/samlconnections/README.md#find) - Retrieve a SAML Connection by ID
* [update](docs/sdks/samlconnections/README.md#update) - Update a SAML Connection
* [delete](docs/sdks/samlconnections/README.md#delete) - Delete a SAML Connection


### [sessions](docs/sdks/sessions/README.md)

* [all](docs/sdks/sessions/README.md#all) - List all sessions
* [find](docs/sdks/sessions/README.md#find) - Retrieve a session
* [delete](docs/sdks/sessions/README.md#delete) - Revoke a session
* [create_token](docs/sdks/sessions/README.md#create_token) - Create a session token from a jwt template

### [sign_in_tokens](docs/sdks/signintokens/README.md)

* [create](docs/sdks/signintokens/README.md#create) - Create sign-in token
* [delete](docs/sdks/signintokens/README.md#delete) - Revoke the given sign-in token

### [sign_ups](docs/sdks/signups/README.md)

* [update](docs/sdks/signups/README.md#update) - Update a sign-up

### [testing_tokens](docs/sdks/testingtokens/README.md)

* [create](docs/sdks/testingtokens/README.md#create) - Retrieve a new testing token

### [users](docs/sdks/users/README.md)

* [all](docs/sdks/users/README.md#all) - List all users
* [create](docs/sdks/users/README.md#create) - Create a new user
* [count](docs/sdks/users/README.md#count) - Count users
* [find](docs/sdks/users/README.md#find) - Retrieve a user
* [update](docs/sdks/users/README.md#update) - Update a user
* [delete](docs/sdks/users/README.md#delete) - Delete a user
* [ban](docs/sdks/users/README.md#ban) - Ban a user
* [unban](docs/sdks/users/README.md#unban) - Unban a user
* [lock](docs/sdks/users/README.md#lock) - Lock a user
* [unlock](docs/sdks/users/README.md#unlock) - Unlock a user
* [set_profile_image](docs/sdks/users/README.md#set_profile_image) - Set user profile image
* [delete_profile_image](docs/sdks/users/README.md#delete_profile_image) - Delete user profile image
* [update_metadata](docs/sdks/users/README.md#update_metadata) - Merge and update a user's metadata
* [oauth_access_token](docs/sdks/users/README.md#oauth_access_token) - Retrieve the OAuth access token of a user
* [organization_memberships](docs/sdks/users/README.md#organization_memberships) - Retrieve all memberships for a user
* [organization_invitations](docs/sdks/users/README.md#organization_invitations) - Retrieve all invitations for a user
* [verify_password](docs/sdks/users/README.md#verify_password) - Verify the password of a user
* [verify_totp](docs/sdks/users/README.md#verify_totp) - Verify a TOTP or backup code for a user
* [disable_mfa](docs/sdks/users/README.md#disable_mfa) - Disable a user's MFA methods
* [delete_backup_code](docs/sdks/users/README.md#delete_backup_code) - Disable all user's Backup codes
* [delete_passkey](docs/sdks/users/README.md#delete_passkey) - Delete a user passkey
* [delete_web3_wallet](docs/sdks/users/README.md#delete_web3_wallet) - Delete a user web3 wallet
* [create_totp](docs/sdks/users/README.md#create_totp) - Create a TOTP for a user
* [delete_totp](docs/sdks/users/README.md#delete_totp) - Delete all the user's TOTPs
* [delete_external_account](docs/sdks/users/README.md#delete_external_account) - Delete External Account

### [webhooks](docs/sdks/webhooks/README.md)

* [create_svix_app](docs/sdks/webhooks/README.md#create_svix_app) - Create a Svix app
* [delete_svix_app](docs/sdks/webhooks/README.md#delete_svix_app) - Delete a Svix app
* [generate_svix_auth_url](docs/sdks/webhooks/README.md#generate_svix_auth_url) - Create a Svix Dashboard URL

</details>
<!-- End Available Resources and Operations [operations] -->

<!-- Start Server Selection [server] -->
## Server Selection

### Override Server URL Per-Client

The default server can also be overridden globally by passing a URL to the `server_url (String)` optional parameter when initializing the SDK client instance. For example:
```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new(
      server_url: "https://api.clerk.com/v1",
    )

    
res = s.miscellaneous.get_public_interstitial(frontend_api="<value>", publishable_key="<value>")

if res.status_code == 200
  # handle response
end

```
<!-- End Server Selection [server] -->

<!-- Placeholder for Future Speakeasy SDK Sections -->

# Development

## Maturity

This SDK is in beta, and there may be breaking changes between versions without a major version update. Therefore, we recommend pinning usage
to a specific package version. This way, you can install the same version each time without breaking changes unless you are intentionally
looking for the latest version.

## Contributions

While we value open-source contributions to this SDK, this library is generated programmatically. Any manual changes added to internal files will be overwritten on the next generation. 
We look forward to hearing your feedback. Feel free to open a PR or an issue with a proof of concept and we'll do our best to include it in a future release. 

### SDK Created by [Speakeasy](https://www.speakeasy.com/?utm_source=openapi&utm_campaign=ruby)
