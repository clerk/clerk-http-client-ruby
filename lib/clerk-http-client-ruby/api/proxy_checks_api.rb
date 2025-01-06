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
  class ProxyChecksApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Verify the proxy configuration for your domain
    # This endpoint can be used to validate that a proxy-enabled domain is operational. It tries to verify that the proxy URL provided in the parameters maps to a functional proxy that can reach the Clerk Frontend API.  You can use this endpoint before you set a proxy URL for a domain. This way you can ensure that switching to proxy-based configuration will not lead to downtime for your instance.  The `proxy_url` parameter allows for testing proxy configurations for domains that don't have a proxy URL yet, or operate on a different proxy URL than the one provided. It can also be used to re-validate a domain that is already configured to work with a proxy.
    # @param verify_domain_proxy_request [VerifyDomainProxyRequest] 
    # @param [Hash] opts the optional parameters
    # @return [ProxyCheck]

    def verify(verify_domain_proxy_request, opts = {})
      data, _status_code, _headers = verify_with_http_info(verify_domain_proxy_request, opts)
      data
    end

    # Verify the proxy configuration for your domain
    # This endpoint can be used to validate that a proxy-enabled domain is operational. It tries to verify that the proxy URL provided in the parameters maps to a functional proxy that can reach the Clerk Frontend API.  You can use this endpoint before you set a proxy URL for a domain. This way you can ensure that switching to proxy-based configuration will not lead to downtime for your instance.  The &#x60;proxy_url&#x60; parameter allows for testing proxy configurations for domains that don&#39;t have a proxy URL yet, or operate on a different proxy URL than the one provided. It can also be used to re-validate a domain that is already configured to work with a proxy.
    # @param verify_domain_proxy_request [VerifyDomainProxyRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProxyCheck, Integer, Hash)>] ProxyCheck data, response status code and response headers
    # POST 
    def verify_with_http_info(verify_domain_proxy_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProxyChecksApi.verify_domain_proxy ...'
      end
      # verify the required parameter 'verify_domain_proxy_request' is set
      if @api_client.config.client_side_validation && verify_domain_proxy_request.nil?
        fail ArgumentError, "Missing the required parameter 'verify_domain_proxy_request' when calling ProxyChecksApi.verify_domain_proxy"
      end
      # resource path
      local_var_path = '/proxy_checks'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(verify_domain_proxy_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ProxyCheck'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"ProxyChecksApi.verify_domain_proxy",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProxyChecksApi#verify_domain_proxy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
