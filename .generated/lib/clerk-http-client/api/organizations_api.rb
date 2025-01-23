=begin
#Clerk Backend API

#The Clerk REST Backend API, meant to be accessed by backend servers.  ### Versions  When the API changes in a way that isn't compatible with older versions, a new version is released. Each version is identified by its release date, e.g. `2021-02-05`. For more information, please see [Clerk API Versions](https://clerk.com/docs/backend-requests/versioning/overview).   Please see https://clerk.com/docs for more information.

The version of the OpenAPI document: v1
Contact: support@clerk.com
Generated by: https://openapi-generator.tech
Generator version: unset

=end

require 'cgi'

module ClerkHttpClient
  class OrganizationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create an organization
    # Creates a new organization with the given name for an instance. You can specify an optional slug for the new organization. If provided, the organization slug can contain only lowercase alphanumeric characters (letters and digits) and the dash \"-\". Organization slugs must be unique for the instance. You can provide additional metadata for the organization and set any custom attribute you want. Organizations support private and public metadata. Private metadata can only be accessed from the Backend API. Public metadata can be accessed from the Backend API, and are read-only from the Frontend API. The `created_by` user will see this as their [active organization] (https://clerk.com/docs/organizations/overview#active-organization) the next time they create a session, presuming they don't explicitly set a different organization as active before then.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateOrganizationRequest] :create_organization_request 
    # @return [Organization]

    def create_organization(opts = {})
      data, _status_code, _headers = create_organization_with_http_info(opts)
      data
    end

    # Create an organization
    # Creates a new organization with the given name for an instance. You can specify an optional slug for the new organization. If provided, the organization slug can contain only lowercase alphanumeric characters (letters and digits) and the dash \&quot;-\&quot;. Organization slugs must be unique for the instance. You can provide additional metadata for the organization and set any custom attribute you want. Organizations support private and public metadata. Private metadata can only be accessed from the Backend API. Public metadata can be accessed from the Backend API, and are read-only from the Frontend API. The &#x60;created_by&#x60; user will see this as their [active organization] (https://clerk.com/docs/organizations/overview#active-organization) the next time they create a session, presuming they don&#39;t explicitly set a different organization as active before then.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateOrganizationRequest] :create_organization_request 
    # @return [Array<(Organization, Integer, Hash)>] Organization data, response status code and response headers
    # POST 
    def create_organization_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationsApi.create_organization ...'
      end
      # resource path
      local_var_path = '/organizations'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_organization_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Organization'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"OrganizationsApi.create_organization",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationsApi#create_organization\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an organization
    # Deletes the given organization. Please note that deleting an organization will also delete all memberships and invitations. This is not reversible.
    # @param organization_id [String] The ID of the organization to delete
    # @param [Hash] opts the optional parameters
    # @return [DeletedObject]

    def delete_organization(organization_id, opts = {})
      data, _status_code, _headers = delete_organization_with_http_info(organization_id, opts)
      data
    end

    # Delete an organization
    # Deletes the given organization. Please note that deleting an organization will also delete all memberships and invitations. This is not reversible.
    # @param organization_id [String] The ID of the organization to delete
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeletedObject, Integer, Hash)>] DeletedObject data, response status code and response headers
    # DELETE 
    def delete_organization_with_http_info(organization_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationsApi.delete_organization ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling OrganizationsApi.delete_organization"
      end
      # resource path
      local_var_path = '/organizations/{organization_id}'.sub('{' + 'organization_id' + '}', CGI.escape(organization_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DeletedObject'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"OrganizationsApi.delete_organization",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationsApi#delete_organization\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete the organization's logo.
    # @param organization_id [String] The ID of the organization for which the logo will be deleted.
    # @param [Hash] opts the optional parameters
    # @return [Organization]

    def delete_organization_logo(organization_id, opts = {})
      data, _status_code, _headers = delete_organization_logo_with_http_info(organization_id, opts)
      data
    end

    # Delete the organization&#39;s logo.
    # @param organization_id [String] The ID of the organization for which the logo will be deleted.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Organization, Integer, Hash)>] Organization data, response status code and response headers
    # DELETE 
    def delete_organization_logo_with_http_info(organization_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationsApi.delete_organization_logo ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling OrganizationsApi.delete_organization_logo"
      end
      # resource path
      local_var_path = '/organizations/{organization_id}/logo'.sub('{' + 'organization_id' + '}', CGI.escape(organization_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Organization'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"OrganizationsApi.delete_organization_logo",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationsApi#delete_organization_logo\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve an organization by ID or slug
    # Fetches the organization whose ID or slug matches the provided `id_or_slug` URL query parameter.
    # @param organization_id [String] The ID or slug of the organization
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_members_count Flag to denote whether or not the organization&#39;s members count should be included in the response.
    # @return [Organization]

    def get_organization(organization_id, opts = {})
      data, _status_code, _headers = get_organization_with_http_info(organization_id, opts)
      data
    end

    # Retrieve an organization by ID or slug
    # Fetches the organization whose ID or slug matches the provided &#x60;id_or_slug&#x60; URL query parameter.
    # @param organization_id [String] The ID or slug of the organization
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_members_count Flag to denote whether or not the organization&#39;s members count should be included in the response.
    # @return [Array<(Organization, Integer, Hash)>] Organization data, response status code and response headers
    # GET 
    def get_organization_with_http_info(organization_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationsApi.get_organization ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling OrganizationsApi.get_organization"
      end
      # resource path
      local_var_path = '/organizations/{organization_id}'.sub('{' + 'organization_id' + '}', CGI.escape(organization_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'include_members_count'] = opts[:'include_members_count'] if !opts[:'include_members_count'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Organization'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"OrganizationsApi.get_organization",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationsApi#get_organization\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of organizations for an instance
    # This request returns the list of organizations for an instance. Results can be paginated using the optional `limit` and `offset` query parameters. The organizations are ordered by descending creation date. Most recent organizations will be returned first.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :limit Applies a limit to the number of results returned. Can be used for paginating the results together with &#x60;offset&#x60;. (default to 10)
    # @option opts [Float] :offset Skip the first &#x60;offset&#x60; results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with &#x60;limit&#x60;. (default to 0)
    # @option opts [Boolean] :include_members_count Flag to denote whether the member counts of each organization should be included in the response or not.
    # @option opts [String] :query Returns organizations with ID, name, or slug that match the given query. Uses exact match for organization ID and partial match for name and slug.
    # @option opts [String] :order_by Allows to return organizations in a particular order. At the moment, you can order the returned organizations either by their &#x60;name&#x60;, &#x60;created_at&#x60; or &#x60;members_count&#x60;. In order to specify the direction, you can use the &#x60;+/-&#x60; symbols prepended in the property to order by. For example, if you want organizations to be returned in descending order according to their &#x60;created_at&#x60; property, you can use &#x60;-created_at&#x60;. If you don&#39;t use &#x60;+&#x60; or &#x60;-&#x60;, then &#x60;+&#x60; is implied. Defaults to &#x60;-created_at&#x60;. (default to '-created_at')
    # @return [Organizations]

    def list_organizations(opts = {})
      data, _status_code, _headers = list_organizations_with_http_info(opts)
      data
    end

    # Get a list of organizations for an instance
    # This request returns the list of organizations for an instance. Results can be paginated using the optional &#x60;limit&#x60; and &#x60;offset&#x60; query parameters. The organizations are ordered by descending creation date. Most recent organizations will be returned first.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :limit Applies a limit to the number of results returned. Can be used for paginating the results together with &#x60;offset&#x60;. (default to 10)
    # @option opts [Float] :offset Skip the first &#x60;offset&#x60; results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with &#x60;limit&#x60;. (default to 0)
    # @option opts [Boolean] :include_members_count Flag to denote whether the member counts of each organization should be included in the response or not.
    # @option opts [String] :query Returns organizations with ID, name, or slug that match the given query. Uses exact match for organization ID and partial match for name and slug.
    # @option opts [String] :order_by Allows to return organizations in a particular order. At the moment, you can order the returned organizations either by their &#x60;name&#x60;, &#x60;created_at&#x60; or &#x60;members_count&#x60;. In order to specify the direction, you can use the &#x60;+/-&#x60; symbols prepended in the property to order by. For example, if you want organizations to be returned in descending order according to their &#x60;created_at&#x60; property, you can use &#x60;-created_at&#x60;. If you don&#39;t use &#x60;+&#x60; or &#x60;-&#x60;, then &#x60;+&#x60; is implied. Defaults to &#x60;-created_at&#x60;. (default to '-created_at')
    # @return [Array<(Organizations, Integer, Hash)>] Organizations data, response status code and response headers
    # GET 
    def list_organizations_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationsApi.list_organizations ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 500
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling OrganizationsApi.list_organizations, must be smaller than or equal to 500.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling OrganizationsApi.list_organizations, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling OrganizationsApi.list_organizations, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/organizations'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'include_members_count'] = opts[:'include_members_count'] if !opts[:'include_members_count'].nil?
      query_params[:'query'] = opts[:'query'] if !opts[:'query'].nil?
      query_params[:'order_by'] = opts[:'order_by'] if !opts[:'order_by'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Organizations'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"OrganizationsApi.list_organizations",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationsApi#list_organizations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Merge and update metadata for an organization
    # Update organization metadata attributes by merging existing values with the provided parameters. Metadata values will be updated via a deep merge. Deep meaning that any nested JSON objects will be merged as well. You can remove metadata keys at any level by setting their value to `null`.
    # @param organization_id [String] The ID of the organization for which metadata will be merged or updated
    # @param merge_organization_metadata_request [MergeOrganizationMetadataRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Organization]

    def merge_organization_metadata(organization_id, merge_organization_metadata_request, opts = {})
      data, _status_code, _headers = merge_organization_metadata_with_http_info(organization_id, merge_organization_metadata_request, opts)
      data
    end

    # Merge and update metadata for an organization
    # Update organization metadata attributes by merging existing values with the provided parameters. Metadata values will be updated via a deep merge. Deep meaning that any nested JSON objects will be merged as well. You can remove metadata keys at any level by setting their value to &#x60;null&#x60;.
    # @param organization_id [String] The ID of the organization for which metadata will be merged or updated
    # @param merge_organization_metadata_request [MergeOrganizationMetadataRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Organization, Integer, Hash)>] Organization data, response status code and response headers
    # PATCH 
    def merge_organization_metadata_with_http_info(organization_id, merge_organization_metadata_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationsApi.merge_organization_metadata ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling OrganizationsApi.merge_organization_metadata"
      end
      # verify the required parameter 'merge_organization_metadata_request' is set
      if @api_client.config.client_side_validation && merge_organization_metadata_request.nil?
        fail ArgumentError, "Missing the required parameter 'merge_organization_metadata_request' when calling OrganizationsApi.merge_organization_metadata"
      end
      # resource path
      local_var_path = '/organizations/{organization_id}/metadata'.sub('{' + 'organization_id' + '}', CGI.escape(organization_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(merge_organization_metadata_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Organization'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"OrganizationsApi.merge_organization_metadata",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationsApi#merge_organization_metadata\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an organization
    # Updates an existing organization
    # @param organization_id [String] The ID of the organization to update
    # @param update_organization_request [UpdateOrganizationRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Organization]

    def update_organization(organization_id, update_organization_request, opts = {})
      data, _status_code, _headers = update_organization_with_http_info(organization_id, update_organization_request, opts)
      data
    end

    # Update an organization
    # Updates an existing organization
    # @param organization_id [String] The ID of the organization to update
    # @param update_organization_request [UpdateOrganizationRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Organization, Integer, Hash)>] Organization data, response status code and response headers
    # PATCH 
    def update_organization_with_http_info(organization_id, update_organization_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationsApi.update_organization ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling OrganizationsApi.update_organization"
      end
      # verify the required parameter 'update_organization_request' is set
      if @api_client.config.client_side_validation && update_organization_request.nil?
        fail ArgumentError, "Missing the required parameter 'update_organization_request' when calling OrganizationsApi.update_organization"
      end
      # resource path
      local_var_path = '/organizations/{organization_id}'.sub('{' + 'organization_id' + '}', CGI.escape(organization_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_organization_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Organization'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"OrganizationsApi.update_organization",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationsApi#update_organization\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Upload a logo for the organization
    # Set or replace an organization's logo, by uploading an image file. This endpoint uses the `multipart/form-data` request content type and accepts a file of image type. The file size cannot exceed 10MB. Only the following file content types are supported: `image/jpeg`, `image/png`, `image/gif`, `image/webp`, `image/x-icon`, `image/vnd.microsoft.icon`.
    # @param organization_id [String] The ID of the organization for which to upload a logo
    # @param file [File] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :uploader_user_id The ID of the user that will be credited with the image upload.
    # @return [OrganizationWithLogo]

    def upload_organization_logo(organization_id, file, opts = {})
      data, _status_code, _headers = upload_organization_logo_with_http_info(organization_id, file, opts)
      data
    end

    # Upload a logo for the organization
    # Set or replace an organization&#39;s logo, by uploading an image file. This endpoint uses the &#x60;multipart/form-data&#x60; request content type and accepts a file of image type. The file size cannot exceed 10MB. Only the following file content types are supported: &#x60;image/jpeg&#x60;, &#x60;image/png&#x60;, &#x60;image/gif&#x60;, &#x60;image/webp&#x60;, &#x60;image/x-icon&#x60;, &#x60;image/vnd.microsoft.icon&#x60;.
    # @param organization_id [String] The ID of the organization for which to upload a logo
    # @param file [File] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :uploader_user_id The ID of the user that will be credited with the image upload.
    # @return [Array<(OrganizationWithLogo, Integer, Hash)>] OrganizationWithLogo data, response status code and response headers
    # PUT 
    def upload_organization_logo_with_http_info(organization_id, file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationsApi.upload_organization_logo ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling OrganizationsApi.upload_organization_logo"
      end
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling OrganizationsApi.upload_organization_logo"
      end
      # resource path
      local_var_path = '/organizations/{organization_id}/logo'.sub('{' + 'organization_id' + '}', CGI.escape(organization_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['multipart/form-data'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['file'] = file
      form_params['uploader_user_id'] = opts[:'uploader_user_id'] if !opts[:'uploader_user_id'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'OrganizationWithLogo'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"OrganizationsApi.upload_organization_logo",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationsApi#upload_organization_logo\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
