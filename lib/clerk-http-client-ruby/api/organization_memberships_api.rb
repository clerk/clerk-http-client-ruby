=begin
#Clerk Backend API

#The Clerk REST Backend API, meant to be accessed by backend servers.  ### Versions  When the API changes in a way that isn't compatible with older versions, a new version is released. Each version is identified by its release date, e.g. `2021-02-05`. For more information, please see [Clerk API Versions](https://clerk.com/docs/backend-requests/versioning/overview).   Please see https://clerk.com/docs for more information.

The version of the OpenAPI document: v1
Contact: support@clerk.com
Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

require 'cgi'

module ClerkHttpClient
  class OrganizationMembershipsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a new organization membership
    # Adds a user as a member to the given organization. Only users in the same instance as the organization can be added as members.  This organization will be the user's [active organization] (https://clerk.com/docs/organizations/overview#active-organization) the next time they create a session, presuming they don't explicitly set a different organization as active before then.
    # @param organization_id [String] The ID of the organization where the new membership will be created
    # @param create_organization_membership_request [CreateOrganizationMembershipRequest] 
    # @param [Hash] opts the optional parameters
    # @return [OrganizationMembership]

    def create(organization_id, create_organization_membership_request, opts = {})
      data, _status_code, _headers = create_with_http_info(organization_id, create_organization_membership_request, opts)
      data
    end

    # Create a new organization membership
    # Adds a user as a member to the given organization. Only users in the same instance as the organization can be added as members.  This organization will be the user&#39;s [active organization] (https://clerk.com/docs/organizations/overview#active-organization) the next time they create a session, presuming they don&#39;t explicitly set a different organization as active before then.
    # @param organization_id [String] The ID of the organization where the new membership will be created
    # @param create_organization_membership_request [CreateOrganizationMembershipRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(OrganizationMembership, Integer, Hash)>] OrganizationMembership data, response status code and response headers
    # POST 
    def create_with_http_info(organization_id, create_organization_membership_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationMembershipsApi.create_organization_membership ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling OrganizationMembershipsApi.create_organization_membership"
      end
      # verify the required parameter 'create_organization_membership_request' is set
      if @api_client.config.client_side_validation && create_organization_membership_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_organization_membership_request' when calling OrganizationMembershipsApi.create_organization_membership"
      end
      # resource path
      local_var_path = '/organizations/{organization_id}/memberships'.sub('{' + 'organization_id' + '}', CGI.escape(organization_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_organization_membership_request)

      # return_type
      return_type = opts[:debug_return_type] || 'OrganizationMembership'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"OrganizationMembershipsApi.create_organization_membership",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationMembershipsApi#create_organization_membership\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove a member from an organization
    # Removes the given membership from the organization
    # @param organization_id [String] The ID of the organization the membership belongs to
    # @param user_id [String] The ID of the user that this membership belongs to
    # @param [Hash] opts the optional parameters
    # @return [OrganizationMembership]

    def delete(organization_id, user_id, opts = {})
      data, _status_code, _headers = delete_with_http_info(organization_id, user_id, opts)
      data
    end

    # Remove a member from an organization
    # Removes the given membership from the organization
    # @param organization_id [String] The ID of the organization the membership belongs to
    # @param user_id [String] The ID of the user that this membership belongs to
    # @param [Hash] opts the optional parameters
    # @return [Array<(OrganizationMembership, Integer, Hash)>] OrganizationMembership data, response status code and response headers
    # DELETE 
    def delete_with_http_info(organization_id, user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationMembershipsApi.delete_organization_membership ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling OrganizationMembershipsApi.delete_organization_membership"
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling OrganizationMembershipsApi.delete_organization_membership"
      end
      # resource path
      local_var_path = '/organizations/{organization_id}/memberships/{user_id}'.sub('{' + 'organization_id' + '}', CGI.escape(organization_id.to_s)).sub('{' + 'user_id' + '}', CGI.escape(user_id.to_s))

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
      return_type = opts[:debug_return_type] || 'OrganizationMembership'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"OrganizationMembershipsApi.delete_organization_membership",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationMembershipsApi#delete_organization_membership\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of all organization memberships within an instance.
    # Retrieves all organization user memberships for the given instance.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :limit Applies a limit to the number of results returned. Can be used for paginating the results together with &#x60;offset&#x60;. (default to 10)
    # @option opts [Float] :offset Skip the first &#x60;offset&#x60; results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with &#x60;limit&#x60;. (default to 0)
    # @option opts [String] :order_by Sorts organizations memberships by phone_number, email_address, created_at, first_name, last_name or username. By prepending one of those values with + or -, we can choose to sort in ascending (ASC) or descending (DESC) order.
    # @return [OrganizationMemberships]

    def all(opts = {})
      data, _status_code, _headers = all_with_http_info(opts)
      data
    end

    # Get a list of all organization memberships within an instance.
    # Retrieves all organization user memberships for the given instance.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :limit Applies a limit to the number of results returned. Can be used for paginating the results together with &#x60;offset&#x60;. (default to 10)
    # @option opts [Float] :offset Skip the first &#x60;offset&#x60; results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with &#x60;limit&#x60;. (default to 0)
    # @option opts [String] :order_by Sorts organizations memberships by phone_number, email_address, created_at, first_name, last_name or username. By prepending one of those values with + or -, we can choose to sort in ascending (ASC) or descending (DESC) order.
    # @return [Array<(OrganizationMemberships, Integer, Hash)>] OrganizationMemberships data, response status code and response headers
    # GET 
    def all_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationMembershipsApi.instance_get_organization_memberships ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 500
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling OrganizationMembershipsApi.instance_get_organization_memberships, must be smaller than or equal to 500.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling OrganizationMembershipsApi.instance_get_organization_memberships, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling OrganizationMembershipsApi.instance_get_organization_memberships, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/organization_memberships'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
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
      return_type = opts[:debug_return_type] || 'OrganizationMemberships'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"OrganizationMembershipsApi.instance_get_organization_memberships",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationMembershipsApi#instance_get_organization_memberships\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of all members of an organization
    # Retrieves all user memberships for the given organization
    # @param organization_id [String] The organization ID.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :limit Applies a limit to the number of results returned. Can be used for paginating the results together with &#x60;offset&#x60;. (default to 10)
    # @option opts [Float] :offset Skip the first &#x60;offset&#x60; results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with &#x60;limit&#x60;. (default to 0)
    # @option opts [String] :order_by Sorts organizations memberships by phone_number, email_address, created_at, first_name, last_name or username. By prepending one of those values with + or -, we can choose to sort in ascending (ASC) or descending (DESC) order.\&quot;
    # @return [OrganizationMemberships]

    def all_by_organization(organization_id, opts = {})
      data, _status_code, _headers = all_by_organization_with_http_info(organization_id, opts)
      data
    end

    # Get a list of all members of an organization
    # Retrieves all user memberships for the given organization
    # @param organization_id [String] The organization ID.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :limit Applies a limit to the number of results returned. Can be used for paginating the results together with &#x60;offset&#x60;. (default to 10)
    # @option opts [Float] :offset Skip the first &#x60;offset&#x60; results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with &#x60;limit&#x60;. (default to 0)
    # @option opts [String] :order_by Sorts organizations memberships by phone_number, email_address, created_at, first_name, last_name or username. By prepending one of those values with + or -, we can choose to sort in ascending (ASC) or descending (DESC) order.\&quot;
    # @return [Array<(OrganizationMemberships, Integer, Hash)>] OrganizationMemberships data, response status code and response headers
    # GET 
    def all_by_organization_with_http_info(organization_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationMembershipsApi.list_organization_memberships ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling OrganizationMembershipsApi.list_organization_memberships"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 500
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling OrganizationMembershipsApi.list_organization_memberships, must be smaller than or equal to 500.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling OrganizationMembershipsApi.list_organization_memberships, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling OrganizationMembershipsApi.list_organization_memberships, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/organizations/{organization_id}/memberships'.sub('{' + 'organization_id' + '}', CGI.escape(organization_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
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
      return_type = opts[:debug_return_type] || 'OrganizationMemberships'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"OrganizationMembershipsApi.list_organization_memberships",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationMembershipsApi#list_organization_memberships\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an organization membership
    # Updates the properties of an existing organization membership
    # @param organization_id [String] The ID of the organization the membership belongs to
    # @param user_id [String] The ID of the user that this membership belongs to
    # @param update_organization_membership_request [UpdateOrganizationMembershipRequest] 
    # @param [Hash] opts the optional parameters
    # @return [OrganizationMembership]

    def update(organization_id, user_id, update_organization_membership_request, opts = {})
      data, _status_code, _headers = update_with_http_info(organization_id, user_id, update_organization_membership_request, opts)
      data
    end

    # Update an organization membership
    # Updates the properties of an existing organization membership
    # @param organization_id [String] The ID of the organization the membership belongs to
    # @param user_id [String] The ID of the user that this membership belongs to
    # @param update_organization_membership_request [UpdateOrganizationMembershipRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(OrganizationMembership, Integer, Hash)>] OrganizationMembership data, response status code and response headers
    # PATCH 
    def update_with_http_info(organization_id, user_id, update_organization_membership_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationMembershipsApi.update_organization_membership ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling OrganizationMembershipsApi.update_organization_membership"
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling OrganizationMembershipsApi.update_organization_membership"
      end
      # verify the required parameter 'update_organization_membership_request' is set
      if @api_client.config.client_side_validation && update_organization_membership_request.nil?
        fail ArgumentError, "Missing the required parameter 'update_organization_membership_request' when calling OrganizationMembershipsApi.update_organization_membership"
      end
      # resource path
      local_var_path = '/organizations/{organization_id}/memberships/{user_id}'.sub('{' + 'organization_id' + '}', CGI.escape(organization_id.to_s)).sub('{' + 'user_id' + '}', CGI.escape(user_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_organization_membership_request)

      # return_type
      return_type = opts[:debug_return_type] || 'OrganizationMembership'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"OrganizationMembershipsApi.update_organization_membership",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationMembershipsApi#update_organization_membership\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Merge and update organization membership metadata
    # Update an organization membership's metadata attributes by merging existing values with the provided parameters. Metadata values will be updated via a deep merge. Deep means that any nested JSON objects will be merged as well. You can remove metadata keys at any level by setting their value to `null`.
    # @param organization_id [String] The ID of the organization the membership belongs to
    # @param user_id [String] The ID of the user that this membership belongs to
    # @param update_organization_membership_metadata_request [UpdateOrganizationMembershipMetadataRequest] 
    # @param [Hash] opts the optional parameters
    # @return [OrganizationMembership]

    def update_metadata(organization_id, user_id, update_organization_membership_metadata_request, opts = {})
      data, _status_code, _headers = update_metadata_with_http_info(organization_id, user_id, update_organization_membership_metadata_request, opts)
      data
    end

    # Merge and update organization membership metadata
    # Update an organization membership&#39;s metadata attributes by merging existing values with the provided parameters. Metadata values will be updated via a deep merge. Deep means that any nested JSON objects will be merged as well. You can remove metadata keys at any level by setting their value to &#x60;null&#x60;.
    # @param organization_id [String] The ID of the organization the membership belongs to
    # @param user_id [String] The ID of the user that this membership belongs to
    # @param update_organization_membership_metadata_request [UpdateOrganizationMembershipMetadataRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(OrganizationMembership, Integer, Hash)>] OrganizationMembership data, response status code and response headers
    # PATCH 
    def update_metadata_with_http_info(organization_id, user_id, update_organization_membership_metadata_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationMembershipsApi.update_organization_membership_metadata ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling OrganizationMembershipsApi.update_organization_membership_metadata"
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling OrganizationMembershipsApi.update_organization_membership_metadata"
      end
      # verify the required parameter 'update_organization_membership_metadata_request' is set
      if @api_client.config.client_side_validation && update_organization_membership_metadata_request.nil?
        fail ArgumentError, "Missing the required parameter 'update_organization_membership_metadata_request' when calling OrganizationMembershipsApi.update_organization_membership_metadata"
      end
      # resource path
      local_var_path = '/organizations/{organization_id}/memberships/{user_id}/metadata'.sub('{' + 'organization_id' + '}', CGI.escape(organization_id.to_s)).sub('{' + 'user_id' + '}', CGI.escape(user_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_organization_membership_metadata_request)

      # return_type
      return_type = opts[:debug_return_type] || 'OrganizationMembership'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"OrganizationMembershipsApi.update_organization_membership_metadata",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationMembershipsApi#update_organization_membership_metadata\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
