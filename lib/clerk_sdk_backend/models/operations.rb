# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

module ClerkSDKBackend
  module Operations
    autoload :GetPublicInterstitialRequest, 'clerk_sdk_backend/models/operations/getpublicinterstitial_request.rb'
    autoload :GetPublicInterstitialResponse, 'clerk_sdk_backend/models/operations/getpublicinterstitial_response.rb'
    autoload :GetJWKSResponse, 'clerk_sdk_backend/models/operations/getjwks_response.rb'
    autoload :VerifyClientRequestBody, 'clerk_sdk_backend/models/operations/verifyclient_requestbody.rb'
    autoload :VerifyClientResponse, 'clerk_sdk_backend/models/operations/verifyclient_response.rb'
    autoload :GetClientRequest, 'clerk_sdk_backend/models/operations/getclient_request.rb'
    autoload :GetClientResponse, 'clerk_sdk_backend/models/operations/getclient_response.rb'
    autoload :CreateEmailAddressRequestBody, 'clerk_sdk_backend/models/operations/createemailaddress_requestbody.rb'
    autoload :CreateEmailAddressResponse, 'clerk_sdk_backend/models/operations/createemailaddress_response.rb'
    autoload :GetEmailAddressRequest, 'clerk_sdk_backend/models/operations/getemailaddress_request.rb'
    autoload :GetEmailAddressResponse, 'clerk_sdk_backend/models/operations/getemailaddress_response.rb'
    autoload :DeleteEmailAddressRequest, 'clerk_sdk_backend/models/operations/deleteemailaddress_request.rb'
    autoload :DeleteEmailAddressResponse, 'clerk_sdk_backend/models/operations/deleteemailaddress_response.rb'
    autoload :UpdateEmailAddressRequestBody, 'clerk_sdk_backend/models/operations/updateemailaddress_requestbody.rb'
    autoload :UpdateEmailAddressRequest, 'clerk_sdk_backend/models/operations/updateemailaddress_request.rb'
    autoload :UpdateEmailAddressResponse, 'clerk_sdk_backend/models/operations/updateemailaddress_response.rb'
    autoload :CreatePhoneNumberRequestBody, 'clerk_sdk_backend/models/operations/createphonenumber_requestbody.rb'
    autoload :CreatePhoneNumberResponse, 'clerk_sdk_backend/models/operations/createphonenumber_response.rb'
    autoload :GetPhoneNumberRequest, 'clerk_sdk_backend/models/operations/getphonenumber_request.rb'
    autoload :GetPhoneNumberResponse, 'clerk_sdk_backend/models/operations/getphonenumber_response.rb'
    autoload :DeletePhoneNumberRequest, 'clerk_sdk_backend/models/operations/deletephonenumber_request.rb'
    autoload :DeletePhoneNumberResponse, 'clerk_sdk_backend/models/operations/deletephonenumber_response.rb'
    autoload :UpdatePhoneNumberRequestBody, 'clerk_sdk_backend/models/operations/updatephonenumber_requestbody.rb'
    autoload :UpdatePhoneNumberRequest, 'clerk_sdk_backend/models/operations/updatephonenumber_request.rb'
    autoload :UpdatePhoneNumberResponse, 'clerk_sdk_backend/models/operations/updatephonenumber_response.rb'
    autoload :Status, 'clerk_sdk_backend/models/operations/status.rb'
    autoload :GetSessionListRequest, 'clerk_sdk_backend/models/operations/getsessionlist_request.rb'
    autoload :GetSessionListResponse, 'clerk_sdk_backend/models/operations/getsessionlist_response.rb'
    autoload :GetSessionRequest, 'clerk_sdk_backend/models/operations/getsession_request.rb'
    autoload :GetSessionResponse, 'clerk_sdk_backend/models/operations/getsession_response.rb'
    autoload :RevokeSessionRequest, 'clerk_sdk_backend/models/operations/revokesession_request.rb'
    autoload :RevokeSessionResponse, 'clerk_sdk_backend/models/operations/revokesession_response.rb'
    autoload :CreateSessionTokenFromTemplateRequest, 'clerk_sdk_backend/models/operations/createsessiontokenfromtemplate_request.rb'
    autoload :Object, 'clerk_sdk_backend/models/operations/object.rb'
    autoload :CreateSessionTokenFromTemplateResponseBody, 'clerk_sdk_backend/models/operations/createsessiontokenfromtemplate_responsebody.rb'
    autoload :CreateSessionTokenFromTemplateResponse, 'clerk_sdk_backend/models/operations/createsessiontokenfromtemplate_response.rb'
    autoload :GetUserListRequest, 'clerk_sdk_backend/models/operations/getuserlist_request.rb'
    autoload :GetUserListResponse, 'clerk_sdk_backend/models/operations/getuserlist_response.rb'
    autoload :PublicMetadata, 'clerk_sdk_backend/models/operations/public_metadata.rb'
    autoload :PrivateMetadata, 'clerk_sdk_backend/models/operations/private_metadata.rb'
    autoload :UnsafeMetadata, 'clerk_sdk_backend/models/operations/unsafe_metadata.rb'
    autoload :CreateUserRequestBody, 'clerk_sdk_backend/models/operations/createuser_requestbody.rb'
    autoload :CreateUserResponse, 'clerk_sdk_backend/models/operations/createuser_response.rb'
    autoload :GetUsersCountRequest, 'clerk_sdk_backend/models/operations/getuserscount_request.rb'
    autoload :GetUsersCountResponse, 'clerk_sdk_backend/models/operations/getuserscount_response.rb'
    autoload :GetUserRequest, 'clerk_sdk_backend/models/operations/getuser_request.rb'
    autoload :GetUserResponse, 'clerk_sdk_backend/models/operations/getuser_response.rb'
    autoload :UpdateUserPublicMetadata, 'clerk_sdk_backend/models/operations/updateuser_public_metadata.rb'
    autoload :UpdateUserPrivateMetadata, 'clerk_sdk_backend/models/operations/updateuser_private_metadata.rb'
    autoload :UpdateUserUnsafeMetadata, 'clerk_sdk_backend/models/operations/updateuser_unsafe_metadata.rb'
    autoload :UpdateUserRequestBody, 'clerk_sdk_backend/models/operations/updateuser_requestbody.rb'
    autoload :UpdateUserRequest, 'clerk_sdk_backend/models/operations/updateuser_request.rb'
    autoload :UpdateUserResponse, 'clerk_sdk_backend/models/operations/updateuser_response.rb'
    autoload :DeleteUserRequest, 'clerk_sdk_backend/models/operations/deleteuser_request.rb'
    autoload :DeleteUserResponse, 'clerk_sdk_backend/models/operations/deleteuser_response.rb'
    autoload :BanUserRequest, 'clerk_sdk_backend/models/operations/banuser_request.rb'
    autoload :BanUserResponse, 'clerk_sdk_backend/models/operations/banuser_response.rb'
    autoload :UnbanUserRequest, 'clerk_sdk_backend/models/operations/unbanuser_request.rb'
    autoload :UnbanUserResponse, 'clerk_sdk_backend/models/operations/unbanuser_response.rb'
    autoload :LockUserRequest, 'clerk_sdk_backend/models/operations/lockuser_request.rb'
    autoload :LockUserResponse, 'clerk_sdk_backend/models/operations/lockuser_response.rb'
    autoload :UnlockUserRequest, 'clerk_sdk_backend/models/operations/unlockuser_request.rb'
    autoload :UnlockUserResponse, 'clerk_sdk_backend/models/operations/unlockuser_response.rb'
    autoload :File, 'clerk_sdk_backend/models/operations/file.rb'
    autoload :SetUserProfileImageRequestBody, 'clerk_sdk_backend/models/operations/setuserprofileimage_requestbody.rb'
    autoload :SetUserProfileImageRequest, 'clerk_sdk_backend/models/operations/setuserprofileimage_request.rb'
    autoload :SetUserProfileImageResponse, 'clerk_sdk_backend/models/operations/setuserprofileimage_response.rb'
    autoload :DeleteUserProfileImageRequest, 'clerk_sdk_backend/models/operations/deleteuserprofileimage_request.rb'
    autoload :DeleteUserProfileImageResponse, 'clerk_sdk_backend/models/operations/deleteuserprofileimage_response.rb'
    autoload :UpdateUserMetadataRequestBody, 'clerk_sdk_backend/models/operations/updateusermetadata_requestbody.rb'
    autoload :UpdateUserMetadataRequest, 'clerk_sdk_backend/models/operations/updateusermetadata_request.rb'
    autoload :UpdateUserMetadataResponse, 'clerk_sdk_backend/models/operations/updateusermetadata_response.rb'
    autoload :GetOAuthAccessTokenRequest, 'clerk_sdk_backend/models/operations/getoauthaccesstoken_request.rb'
    autoload :GetOAuthAccessTokenPublicMetadata, 'clerk_sdk_backend/models/operations/getoauthaccesstoken_public_metadata.rb'
    autoload :ResponseBody, 'clerk_sdk_backend/models/operations/responsebody.rb'
    autoload :GetOAuthAccessTokenResponse, 'clerk_sdk_backend/models/operations/getoauthaccesstoken_response.rb'
    autoload :UsersGetOrganizationMembershipsRequest, 'clerk_sdk_backend/models/operations/usersgetorganizationmemberships_request.rb'
    autoload :UsersGetOrganizationMembershipsResponse, 'clerk_sdk_backend/models/operations/usersgetorganizationmemberships_response.rb'
    autoload :QueryParamStatus, 'clerk_sdk_backend/models/operations/queryparam_status.rb'
    autoload :UsersGetOrganizationInvitationsRequest, 'clerk_sdk_backend/models/operations/usersgetorganizationinvitations_request.rb'
    autoload :UsersGetOrganizationInvitationsResponse, 'clerk_sdk_backend/models/operations/usersgetorganizationinvitations_response.rb'
    autoload :VerifyPasswordRequestBody, 'clerk_sdk_backend/models/operations/verifypassword_requestbody.rb'
    autoload :VerifyPasswordRequest, 'clerk_sdk_backend/models/operations/verifypassword_request.rb'
    autoload :VerifyPasswordResponseBody, 'clerk_sdk_backend/models/operations/verifypassword_responsebody.rb'
    autoload :VerifyPasswordResponse, 'clerk_sdk_backend/models/operations/verifypassword_response.rb'
    autoload :VerifyTOTPRequestBody, 'clerk_sdk_backend/models/operations/verifytotp_requestbody.rb'
    autoload :VerifyTOTPRequest, 'clerk_sdk_backend/models/operations/verifytotp_request.rb'
    autoload :CodeType, 'clerk_sdk_backend/models/operations/code_type.rb'
    autoload :VerifyTOTPResponseBody, 'clerk_sdk_backend/models/operations/verifytotp_responsebody.rb'
    autoload :VerifyTOTPResponse, 'clerk_sdk_backend/models/operations/verifytotp_response.rb'
    autoload :DisableMFARequest, 'clerk_sdk_backend/models/operations/disablemfa_request.rb'
    autoload :DisableMFAResponseBody, 'clerk_sdk_backend/models/operations/disablemfa_responsebody.rb'
    autoload :DisableMFAResponse, 'clerk_sdk_backend/models/operations/disablemfa_response.rb'
    autoload :DeleteBackupCodeRequest, 'clerk_sdk_backend/models/operations/deletebackupcode_request.rb'
    autoload :DeleteBackupCodeResponseBody, 'clerk_sdk_backend/models/operations/deletebackupcode_responsebody.rb'
    autoload :DeleteBackupCodeResponse, 'clerk_sdk_backend/models/operations/deletebackupcode_response.rb'
    autoload :UserPasskeyDeleteRequest, 'clerk_sdk_backend/models/operations/userpasskeydelete_request.rb'
    autoload :UserPasskeyDeleteResponse, 'clerk_sdk_backend/models/operations/userpasskeydelete_response.rb'
    autoload :UserWeb3WalletDeleteRequest, 'clerk_sdk_backend/models/operations/userweb3walletdelete_request.rb'
    autoload :UserWeb3WalletDeleteResponse, 'clerk_sdk_backend/models/operations/userweb3walletdelete_response.rb'
    autoload :CreateUserTOTPRequest, 'clerk_sdk_backend/models/operations/createusertotp_request.rb'
    autoload :CreateUserTOTPResponse, 'clerk_sdk_backend/models/operations/createusertotp_response.rb'
    autoload :DeleteTOTPRequest, 'clerk_sdk_backend/models/operations/deletetotp_request.rb'
    autoload :DeleteTOTPResponseBody, 'clerk_sdk_backend/models/operations/deletetotp_responsebody.rb'
    autoload :DeleteTOTPResponse, 'clerk_sdk_backend/models/operations/deletetotp_response.rb'
    autoload :DeleteExternalAccountRequest, 'clerk_sdk_backend/models/operations/deleteexternalaccount_request.rb'
    autoload :DeleteExternalAccountResponse, 'clerk_sdk_backend/models/operations/deleteexternalaccount_response.rb'
    autoload :CreateInvitationPublicMetadata, 'clerk_sdk_backend/models/operations/createinvitation_public_metadata.rb'
    autoload :CreateInvitationRequestBody, 'clerk_sdk_backend/models/operations/createinvitation_requestbody.rb'
    autoload :CreateInvitationResponse, 'clerk_sdk_backend/models/operations/createinvitation_response.rb'
    autoload :ListInvitationsQueryParamStatus, 'clerk_sdk_backend/models/operations/listinvitations_queryparam_status.rb'
    autoload :ListInvitationsRequest, 'clerk_sdk_backend/models/operations/listinvitations_request.rb'
    autoload :ListInvitationsResponse, 'clerk_sdk_backend/models/operations/listinvitations_response.rb'
    autoload :RevokeInvitationRequest, 'clerk_sdk_backend/models/operations/revokeinvitation_request.rb'
    autoload :RevokeInvitationResponse, 'clerk_sdk_backend/models/operations/revokeinvitation_response.rb'
    autoload :ListInstanceOrganizationInvitationsQueryParamStatus, 'clerk_sdk_backend/models/operations/listinstanceorganizationinvitations_queryparam_status.rb'
    autoload :ListInstanceOrganizationInvitationsRequest, 'clerk_sdk_backend/models/operations/listinstanceorganizationinvitations_request.rb'
    autoload :ListInstanceOrganizationInvitationsResponse, 'clerk_sdk_backend/models/operations/listinstanceorganizationinvitations_response.rb'
    autoload :CreateOrganizationInvitationPublicMetadata, 'clerk_sdk_backend/models/operations/createorganizationinvitation_public_metadata.rb'
    autoload :CreateOrganizationInvitationPrivateMetadata, 'clerk_sdk_backend/models/operations/createorganizationinvitation_private_metadata.rb'
    autoload :CreateOrganizationInvitationRequestBody, 'clerk_sdk_backend/models/operations/createorganizationinvitation_requestbody.rb'
    autoload :CreateOrganizationInvitationRequest, 'clerk_sdk_backend/models/operations/createorganizationinvitation_request.rb'
    autoload :CreateOrganizationInvitationResponse, 'clerk_sdk_backend/models/operations/createorganizationinvitation_response.rb'
    autoload :ListOrganizationInvitationsQueryParamStatus, 'clerk_sdk_backend/models/operations/listorganizationinvitations_queryparam_status.rb'
    autoload :ListOrganizationInvitationsRequest, 'clerk_sdk_backend/models/operations/listorganizationinvitations_request.rb'
    autoload :ListOrganizationInvitationsResponse, 'clerk_sdk_backend/models/operations/listorganizationinvitations_response.rb'
    autoload :CreateOrganizationInvitationBulkPublicMetadata, 'clerk_sdk_backend/models/operations/createorganizationinvitationbulk_public_metadata.rb'
    autoload :CreateOrganizationInvitationBulkPrivateMetadata, 'clerk_sdk_backend/models/operations/createorganizationinvitationbulk_private_metadata.rb'
    autoload :RequestBody, 'clerk_sdk_backend/models/operations/requestbody.rb'
    autoload :CreateOrganizationInvitationBulkRequest, 'clerk_sdk_backend/models/operations/createorganizationinvitationbulk_request.rb'
    autoload :CreateOrganizationInvitationBulkResponse, 'clerk_sdk_backend/models/operations/createorganizationinvitationbulk_response.rb'
    autoload :GetOrganizationInvitationRequest, 'clerk_sdk_backend/models/operations/getorganizationinvitation_request.rb'
    autoload :GetOrganizationInvitationResponse, 'clerk_sdk_backend/models/operations/getorganizationinvitation_response.rb'
    autoload :RevokeOrganizationInvitationRequestBody, 'clerk_sdk_backend/models/operations/revokeorganizationinvitation_requestbody.rb'
    autoload :RevokeOrganizationInvitationRequest, 'clerk_sdk_backend/models/operations/revokeorganizationinvitation_request.rb'
    autoload :RevokeOrganizationInvitationResponse, 'clerk_sdk_backend/models/operations/revokeorganizationinvitation_response.rb'
    autoload :ListAllowlistIdentifiersResponse, 'clerk_sdk_backend/models/operations/listallowlistidentifiers_response.rb'
    autoload :CreateAllowlistIdentifierRequestBody, 'clerk_sdk_backend/models/operations/createallowlistidentifier_requestbody.rb'
    autoload :CreateAllowlistIdentifierResponse, 'clerk_sdk_backend/models/operations/createallowlistidentifier_response.rb'
    autoload :DeleteAllowlistIdentifierRequest, 'clerk_sdk_backend/models/operations/deleteallowlistidentifier_request.rb'
    autoload :DeleteAllowlistIdentifierResponse, 'clerk_sdk_backend/models/operations/deleteallowlistidentifier_response.rb'
    autoload :ListBlocklistIdentifiersResponse, 'clerk_sdk_backend/models/operations/listblocklistidentifiers_response.rb'
    autoload :CreateBlocklistIdentifierRequestBody, 'clerk_sdk_backend/models/operations/createblocklistidentifier_requestbody.rb'
    autoload :CreateBlocklistIdentifierResponse, 'clerk_sdk_backend/models/operations/createblocklistidentifier_response.rb'
    autoload :DeleteBlocklistIdentifierRequest, 'clerk_sdk_backend/models/operations/deleteblocklistidentifier_request.rb'
    autoload :DeleteBlocklistIdentifierResponse, 'clerk_sdk_backend/models/operations/deleteblocklistidentifier_response.rb'
    autoload :UpdateInstanceAuthConfigRequestBody, 'clerk_sdk_backend/models/operations/updateinstanceauthconfig_requestbody.rb'
    autoload :UpdateInstanceAuthConfigResponse, 'clerk_sdk_backend/models/operations/updateinstanceauthconfig_response.rb'
    autoload :ChangeProductionInstanceDomainRequestBody, 'clerk_sdk_backend/models/operations/changeproductioninstancedomain_requestbody.rb'
    autoload :ChangeProductionInstanceDomainResponse, 'clerk_sdk_backend/models/operations/changeproductioninstancedomain_response.rb'
    autoload :Actor, 'clerk_sdk_backend/models/operations/actor.rb'
    autoload :CreateActorTokenRequestBody, 'clerk_sdk_backend/models/operations/createactortoken_requestbody.rb'
    autoload :CreateActorTokenResponse, 'clerk_sdk_backend/models/operations/createactortoken_response.rb'
    autoload :RevokeActorTokenRequest, 'clerk_sdk_backend/models/operations/revokeactortoken_request.rb'
    autoload :RevokeActorTokenResponse, 'clerk_sdk_backend/models/operations/revokeactortoken_response.rb'
    autoload :ListDomainsResponse, 'clerk_sdk_backend/models/operations/listdomains_response.rb'
    autoload :IsSatellite, 'clerk_sdk_backend/models/operations/is_satellite.rb'
    autoload :AddDomainRequestBody, 'clerk_sdk_backend/models/operations/adddomain_requestbody.rb'
    autoload :AddDomainResponse, 'clerk_sdk_backend/models/operations/adddomain_response.rb'
    autoload :DeleteDomainRequest, 'clerk_sdk_backend/models/operations/deletedomain_request.rb'
    autoload :DeleteDomainResponse, 'clerk_sdk_backend/models/operations/deletedomain_response.rb'
    autoload :UpdateDomainRequestBody, 'clerk_sdk_backend/models/operations/updatedomain_requestbody.rb'
    autoload :UpdateDomainRequest, 'clerk_sdk_backend/models/operations/updatedomain_request.rb'
    autoload :UpdateDomainResponse, 'clerk_sdk_backend/models/operations/updatedomain_response.rb'
    autoload :UpdateInstanceRequestBody, 'clerk_sdk_backend/models/operations/updateinstance_requestbody.rb'
    autoload :UpdateInstanceResponse, 'clerk_sdk_backend/models/operations/updateinstance_response.rb'
    autoload :UpdateInstanceRestrictionsRequestBody, 'clerk_sdk_backend/models/operations/updateinstancerestrictions_requestbody.rb'
    autoload :UpdateInstanceRestrictionsResponse, 'clerk_sdk_backend/models/operations/updateinstancerestrictions_response.rb'
    autoload :UpdateInstanceOrganizationSettingsRequestBody, 'clerk_sdk_backend/models/operations/updateinstanceorganizationsettings_requestbody.rb'
    autoload :UpdateInstanceOrganizationSettingsResponse, 'clerk_sdk_backend/models/operations/updateinstanceorganizationsettings_response.rb'
    autoload :CreateSvixAppResponse, 'clerk_sdk_backend/models/operations/createsvixapp_response.rb'
    autoload :DeleteSvixAppResponse, 'clerk_sdk_backend/models/operations/deletesvixapp_response.rb'
    autoload :GenerateSvixAuthURLResponse, 'clerk_sdk_backend/models/operations/generatesvixauthurl_response.rb'
    autoload :ListJWTTemplatesResponse, 'clerk_sdk_backend/models/operations/listjwttemplates_response.rb'
    autoload :Claims, 'clerk_sdk_backend/models/operations/claims.rb'
    autoload :CreateJWTTemplateRequestBody, 'clerk_sdk_backend/models/operations/createjwttemplate_requestbody.rb'
    autoload :CreateJWTTemplateResponse, 'clerk_sdk_backend/models/operations/createjwttemplate_response.rb'
    autoload :GetJWTTemplateRequest, 'clerk_sdk_backend/models/operations/getjwttemplate_request.rb'
    autoload :GetJWTTemplateResponse, 'clerk_sdk_backend/models/operations/getjwttemplate_response.rb'
    autoload :UpdateJWTTemplateClaims, 'clerk_sdk_backend/models/operations/updatejwttemplate_claims.rb'
    autoload :UpdateJWTTemplateRequestBody, 'clerk_sdk_backend/models/operations/updatejwttemplate_requestbody.rb'
    autoload :UpdateJWTTemplateRequest, 'clerk_sdk_backend/models/operations/updatejwttemplate_request.rb'
    autoload :UpdateJWTTemplateResponse, 'clerk_sdk_backend/models/operations/updatejwttemplate_response.rb'
    autoload :DeleteJWTTemplateRequest, 'clerk_sdk_backend/models/operations/deletejwttemplate_request.rb'
    autoload :DeleteJWTTemplateResponse, 'clerk_sdk_backend/models/operations/deletejwttemplate_response.rb'
    autoload :ListOrganizationsRequest, 'clerk_sdk_backend/models/operations/listorganizations_request.rb'
    autoload :ListOrganizationsResponse, 'clerk_sdk_backend/models/operations/listorganizations_response.rb'
    autoload :CreateOrganizationPrivateMetadata, 'clerk_sdk_backend/models/operations/createorganization_private_metadata.rb'
    autoload :CreateOrganizationPublicMetadata, 'clerk_sdk_backend/models/operations/createorganization_public_metadata.rb'
    autoload :CreateOrganizationRequestBody, 'clerk_sdk_backend/models/operations/createorganization_requestbody.rb'
    autoload :CreateOrganizationResponse, 'clerk_sdk_backend/models/operations/createorganization_response.rb'
    autoload :GetOrganizationRequest, 'clerk_sdk_backend/models/operations/getorganization_request.rb'
    autoload :GetOrganizationResponse, 'clerk_sdk_backend/models/operations/getorganization_response.rb'
    autoload :UpdateOrganizationPublicMetadata, 'clerk_sdk_backend/models/operations/updateorganization_public_metadata.rb'
    autoload :UpdateOrganizationPrivateMetadata, 'clerk_sdk_backend/models/operations/updateorganization_private_metadata.rb'
    autoload :UpdateOrganizationRequestBody, 'clerk_sdk_backend/models/operations/updateorganization_requestbody.rb'
    autoload :UpdateOrganizationRequest, 'clerk_sdk_backend/models/operations/updateorganization_request.rb'
    autoload :UpdateOrganizationResponse, 'clerk_sdk_backend/models/operations/updateorganization_response.rb'
    autoload :DeleteOrganizationRequest, 'clerk_sdk_backend/models/operations/deleteorganization_request.rb'
    autoload :DeleteOrganizationResponse, 'clerk_sdk_backend/models/operations/deleteorganization_response.rb'
    autoload :MergeOrganizationMetadataPublicMetadata, 'clerk_sdk_backend/models/operations/mergeorganizationmetadata_public_metadata.rb'
    autoload :MergeOrganizationMetadataPrivateMetadata, 'clerk_sdk_backend/models/operations/mergeorganizationmetadata_private_metadata.rb'
    autoload :MergeOrganizationMetadataRequestBody, 'clerk_sdk_backend/models/operations/mergeorganizationmetadata_requestbody.rb'
    autoload :MergeOrganizationMetadataRequest, 'clerk_sdk_backend/models/operations/mergeorganizationmetadata_request.rb'
    autoload :MergeOrganizationMetadataResponse, 'clerk_sdk_backend/models/operations/mergeorganizationmetadata_response.rb'
    autoload :UploadOrganizationLogoFile, 'clerk_sdk_backend/models/operations/uploadorganizationlogo_file.rb'
    autoload :UploadOrganizationLogoRequestBody, 'clerk_sdk_backend/models/operations/uploadorganizationlogo_requestbody.rb'
    autoload :UploadOrganizationLogoRequest, 'clerk_sdk_backend/models/operations/uploadorganizationlogo_request.rb'
    autoload :UploadOrganizationLogoResponse, 'clerk_sdk_backend/models/operations/uploadorganizationlogo_response.rb'
    autoload :DeleteOrganizationLogoRequest, 'clerk_sdk_backend/models/operations/deleteorganizationlogo_request.rb'
    autoload :DeleteOrganizationLogoResponse, 'clerk_sdk_backend/models/operations/deleteorganizationlogo_response.rb'
    autoload :CreateOrganizationMembershipRequestBody, 'clerk_sdk_backend/models/operations/createorganizationmembership_requestbody.rb'
    autoload :CreateOrganizationMembershipRequest, 'clerk_sdk_backend/models/operations/createorganizationmembership_request.rb'
    autoload :CreateOrganizationMembershipResponse, 'clerk_sdk_backend/models/operations/createorganizationmembership_response.rb'
    autoload :ListOrganizationMembershipsRequest, 'clerk_sdk_backend/models/operations/listorganizationmemberships_request.rb'
    autoload :ListOrganizationMembershipsResponse, 'clerk_sdk_backend/models/operations/listorganizationmemberships_response.rb'
    autoload :UpdateOrganizationMembershipRequestBody, 'clerk_sdk_backend/models/operations/updateorganizationmembership_requestbody.rb'
    autoload :UpdateOrganizationMembershipRequest, 'clerk_sdk_backend/models/operations/updateorganizationmembership_request.rb'
    autoload :UpdateOrganizationMembershipResponse, 'clerk_sdk_backend/models/operations/updateorganizationmembership_response.rb'
    autoload :DeleteOrganizationMembershipRequest, 'clerk_sdk_backend/models/operations/deleteorganizationmembership_request.rb'
    autoload :DeleteOrganizationMembershipResponse, 'clerk_sdk_backend/models/operations/deleteorganizationmembership_response.rb'
    autoload :UpdateOrganizationMembershipMetadataPublicMetadata, 'clerk_sdk_backend/models/operations/updateorganizationmembershipmetadata_public_metadata.rb'
    autoload :UpdateOrganizationMembershipMetadataPrivateMetadata, 'clerk_sdk_backend/models/operations/updateorganizationmembershipmetadata_private_metadata.rb'
    autoload :UpdateOrganizationMembershipMetadataRequestBody, 'clerk_sdk_backend/models/operations/updateorganizationmembershipmetadata_requestbody.rb'
    autoload :UpdateOrganizationMembershipMetadataRequest, 'clerk_sdk_backend/models/operations/updateorganizationmembershipmetadata_request.rb'
    autoload :UpdateOrganizationMembershipMetadataResponse, 'clerk_sdk_backend/models/operations/updateorganizationmembershipmetadata_response.rb'
    autoload :InstanceGetOrganizationMembershipsRequest, 'clerk_sdk_backend/models/operations/instancegetorganizationmemberships_request.rb'
    autoload :InstanceGetOrganizationMembershipsResponse, 'clerk_sdk_backend/models/operations/instancegetorganizationmemberships_response.rb'
    autoload :CreateOrganizationDomainRequestBody, 'clerk_sdk_backend/models/operations/createorganizationdomain_requestbody.rb'
    autoload :CreateOrganizationDomainRequest, 'clerk_sdk_backend/models/operations/createorganizationdomain_request.rb'
    autoload :CreateOrganizationDomainResponse, 'clerk_sdk_backend/models/operations/createorganizationdomain_response.rb'
    autoload :ListOrganizationDomainsRequest, 'clerk_sdk_backend/models/operations/listorganizationdomains_request.rb'
    autoload :ListOrganizationDomainsResponse, 'clerk_sdk_backend/models/operations/listorganizationdomains_response.rb'
    autoload :UpdateOrganizationDomainRequestBody, 'clerk_sdk_backend/models/operations/updateorganizationdomain_requestbody.rb'
    autoload :UpdateOrganizationDomainRequest, 'clerk_sdk_backend/models/operations/updateorganizationdomain_request.rb'
    autoload :UpdateOrganizationDomainResponse, 'clerk_sdk_backend/models/operations/updateorganizationdomain_response.rb'
    autoload :DeleteOrganizationDomainRequest, 'clerk_sdk_backend/models/operations/deleteorganizationdomain_request.rb'
    autoload :DeleteOrganizationDomainResponse, 'clerk_sdk_backend/models/operations/deleteorganizationdomain_response.rb'
    autoload :VerifyDomainProxyRequestBody, 'clerk_sdk_backend/models/operations/verifydomainproxy_requestbody.rb'
    autoload :VerifyDomainProxyResponse, 'clerk_sdk_backend/models/operations/verifydomainproxy_response.rb'
    autoload :ListRedirectURLsResponse, 'clerk_sdk_backend/models/operations/listredirecturls_response.rb'
    autoload :CreateRedirectURLRequestBody, 'clerk_sdk_backend/models/operations/createredirecturl_requestbody.rb'
    autoload :CreateRedirectURLResponse, 'clerk_sdk_backend/models/operations/createredirecturl_response.rb'
    autoload :GetRedirectURLRequest, 'clerk_sdk_backend/models/operations/getredirecturl_request.rb'
    autoload :GetRedirectURLResponse, 'clerk_sdk_backend/models/operations/getredirecturl_response.rb'
    autoload :DeleteRedirectURLRequest, 'clerk_sdk_backend/models/operations/deleteredirecturl_request.rb'
    autoload :DeleteRedirectURLResponse, 'clerk_sdk_backend/models/operations/deleteredirecturl_response.rb'
    autoload :CreateSignInTokenRequestBody, 'clerk_sdk_backend/models/operations/createsignintoken_requestbody.rb'
    autoload :CreateSignInTokenResponse, 'clerk_sdk_backend/models/operations/createsignintoken_response.rb'
    autoload :RevokeSignInTokenRequest, 'clerk_sdk_backend/models/operations/revokesignintoken_request.rb'
    autoload :RevokeSignInTokenResponse, 'clerk_sdk_backend/models/operations/revokesignintoken_response.rb'
    autoload :UpdateSignUpRequestBody, 'clerk_sdk_backend/models/operations/updatesignup_requestbody.rb'
    autoload :UpdateSignUpRequest, 'clerk_sdk_backend/models/operations/updatesignup_request.rb'
    autoload :UpdateSignUpResponse, 'clerk_sdk_backend/models/operations/updatesignup_response.rb'
    autoload :ListOAuthApplicationsRequest, 'clerk_sdk_backend/models/operations/listoauthapplications_request.rb'
    autoload :ListOAuthApplicationsResponse, 'clerk_sdk_backend/models/operations/listoauthapplications_response.rb'
    autoload :CreateOAuthApplicationRequestBody, 'clerk_sdk_backend/models/operations/createoauthapplication_requestbody.rb'
    autoload :CreateOAuthApplicationResponse, 'clerk_sdk_backend/models/operations/createoauthapplication_response.rb'
    autoload :GetOAuthApplicationRequest, 'clerk_sdk_backend/models/operations/getoauthapplication_request.rb'
    autoload :GetOAuthApplicationResponse, 'clerk_sdk_backend/models/operations/getoauthapplication_response.rb'
    autoload :UpdateOAuthApplicationRequestBody, 'clerk_sdk_backend/models/operations/updateoauthapplication_requestbody.rb'
    autoload :UpdateOAuthApplicationRequest, 'clerk_sdk_backend/models/operations/updateoauthapplication_request.rb'
    autoload :UpdateOAuthApplicationResponse, 'clerk_sdk_backend/models/operations/updateoauthapplication_response.rb'
    autoload :DeleteOAuthApplicationRequest, 'clerk_sdk_backend/models/operations/deleteoauthapplication_request.rb'
    autoload :DeleteOAuthApplicationResponse, 'clerk_sdk_backend/models/operations/deleteoauthapplication_response.rb'
    autoload :RotateOAuthApplicationSecretRequest, 'clerk_sdk_backend/models/operations/rotateoauthapplicationsecret_request.rb'
    autoload :RotateOAuthApplicationSecretResponse, 'clerk_sdk_backend/models/operations/rotateoauthapplicationsecret_response.rb'
    autoload :ListSAMLConnectionsRequest, 'clerk_sdk_backend/models/operations/listsamlconnections_request.rb'
    autoload :ListSAMLConnectionsResponse, 'clerk_sdk_backend/models/operations/listsamlconnections_response.rb'
    autoload :Provider, 'clerk_sdk_backend/models/operations/provider.rb'
    autoload :AttributeMapping, 'clerk_sdk_backend/models/operations/attribute_mapping.rb'
    autoload :CreateSAMLConnectionRequestBody, 'clerk_sdk_backend/models/operations/createsamlconnection_requestbody.rb'
    autoload :CreateSAMLConnectionResponse, 'clerk_sdk_backend/models/operations/createsamlconnection_response.rb'
    autoload :GetSAMLConnectionRequest, 'clerk_sdk_backend/models/operations/getsamlconnection_request.rb'
    autoload :GetSAMLConnectionResponse, 'clerk_sdk_backend/models/operations/getsamlconnection_response.rb'
    autoload :UpdateSAMLConnectionAttributeMapping, 'clerk_sdk_backend/models/operations/updatesamlconnection_attribute_mapping.rb'
    autoload :UpdateSAMLConnectionRequestBody, 'clerk_sdk_backend/models/operations/updatesamlconnection_requestbody.rb'
    autoload :UpdateSAMLConnectionRequest, 'clerk_sdk_backend/models/operations/updatesamlconnection_request.rb'
    autoload :UpdateSAMLConnectionResponse, 'clerk_sdk_backend/models/operations/updatesamlconnection_response.rb'
    autoload :DeleteSAMLConnectionRequest, 'clerk_sdk_backend/models/operations/deletesamlconnection_request.rb'
    autoload :DeleteSAMLConnectionResponse, 'clerk_sdk_backend/models/operations/deletesamlconnection_response.rb'
    autoload :CreateTestingTokenResponse, 'clerk_sdk_backend/models/operations/createtestingtoken_response.rb'
  end
end
