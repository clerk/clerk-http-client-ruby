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
  class OrganizationDomainApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Update an organization domain.
    # Updates the properties of an existing organization domain.
    # @param organization_id [String] The ID of the organization the domain belongs to
    # @param domain_id [String] The ID of the domain
    # @param update_organization_domain_request [UpdateOrganizationDomainRequest] 
    # @param [Hash] opts the optional parameters
    # @return [OrganizationDomain]

    def update(organization_id, domain_id, update_organization_domain_request, opts = {})
      data, _status_code, _headers = update_with_http_info(organization_id, domain_id, update_organization_domain_request, opts)
      data
    end

    # Update an organization domain.
    # Updates the properties of an existing organization domain.
    # @param organization_id [String] The ID of the organization the domain belongs to
    # @param domain_id [String] The ID of the domain
    # @param update_organization_domain_request [UpdateOrganizationDomainRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(OrganizationDomain, Integer, Hash)>] OrganizationDomain data, response status code and response headers
    # PATCH 
    def update_with_http_info(organization_id, domain_id, update_organization_domain_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationDomainApi.update_organization_domain ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling OrganizationDomainApi.update_organization_domain"
      end
      # verify the required parameter 'domain_id' is set
      if @api_client.config.client_side_validation && domain_id.nil?
        fail ArgumentError, "Missing the required parameter 'domain_id' when calling OrganizationDomainApi.update_organization_domain"
      end
      # verify the required parameter 'update_organization_domain_request' is set
      if @api_client.config.client_side_validation && update_organization_domain_request.nil?
        fail ArgumentError, "Missing the required parameter 'update_organization_domain_request' when calling OrganizationDomainApi.update_organization_domain"
      end
      # resource path
      local_var_path = '/organizations/{organization_id}/domains/{domain_id}'.sub('{' + 'organization_id' + '}', CGI.escape(organization_id.to_s)).sub('{' + 'domain_id' + '}', CGI.escape(domain_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_organization_domain_request)

      # return_type
      return_type = opts[:debug_return_type] || 'OrganizationDomain'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"OrganizationDomainApi.update_organization_domain",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationDomainApi#update_organization_domain\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
