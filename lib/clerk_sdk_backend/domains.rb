# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module ClerkSDKBackend
  extend T::Sig
  class Domains
    extend T::Sig
    # Domains represent each instance's URLs and DNS setup.

    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { returns(::ClerkSDKBackend::Operations::ListDomainsResponse) }
    def all
      # all - List all instance domains
      # Use this endpoint to get a list of all domains for an instance.
      # The response will contain the primary domain for the instance and any satellite domains. Each domain in the response contains information about the URLs where Clerk operates and the required CNAME targets.
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/domains"
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::ClerkSDKBackend::Operations::ListDomainsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::ClerkSDKBackend::Shared::Domains)
          res.domains = out
        end
      elsif [400, 401, 422, 500].include?(r.status)
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::ClerkSDKBackend::Shared::ClerkErrors)
          res.clerk_errors = out
        end
      end
      res
    end


    sig { params(request: ::ClerkSDKBackend::Operations::AddDomainRequestBody).returns(::ClerkSDKBackend::Operations::AddDomainResponse) }
    def create(request)
      # create - Add a domain
      # Add a new domain for your instance.
      # Useful in the case of multi-domain instances, allows adding satellite domains to an instance.
      # The new domain must have a `name`. The domain name can contain the port for development instances, like `localhost:3000`.
      # At the moment, instances can have only one primary domain, so the `is_satellite` parameter must be set to `true`.
      # If you're planning to configure the new satellite domain to run behind a proxy, pass the `proxy_url` parameter accordingly.
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/domains"
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.post(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
        if form
          req.body = Utils.encode_form(form)
        elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
          req.body = URI.encode_www_form(data)
        else
          req.body = data
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::ClerkSDKBackend::Operations::AddDomainResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::ClerkSDKBackend::Shared::Domain)
          res.domain = out
        end
      elsif [400, 402, 422].include?(r.status)
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::ClerkSDKBackend::Shared::ClerkErrors)
          res.clerk_errors = out
        end
      end
      res
    end


    sig { params(domain_id: ::String).returns(::ClerkSDKBackend::Operations::DeleteDomainResponse) }
    def delete(domain_id)
      # delete - Delete a satellite domain
      # Deletes a satellite domain for the instance.
      # It is currently not possible to delete the instance's primary domain.
      request = ::ClerkSDKBackend::Operations::DeleteDomainRequest.new(
        
        domain_id: domain_id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::ClerkSDKBackend::Operations::DeleteDomainRequest,
        base_url,
        '/domains/{domain_id}',
        request
      )
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.delete(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::ClerkSDKBackend::Operations::DeleteDomainResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::ClerkSDKBackend::Shared::DeletedObject)
          res.deleted_object = out
        end
      elsif [403, 404].include?(r.status)
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::ClerkSDKBackend::Shared::ClerkErrors)
          res.clerk_errors = out
        end
      end
      res
    end


    sig { params(domain_id: ::String, request_body: ::ClerkSDKBackend::Operations::UpdateDomainRequestBody).returns(::ClerkSDKBackend::Operations::UpdateDomainResponse) }
    def update(domain_id, request_body)
      # update - Update a domain
      # The `proxy_url` can be updated only for production instances.
      # Update one of the instance's domains. Both primary and satellite domains can be updated.
      # If you choose to use Clerk via proxy, use this endpoint to specify the `proxy_url`.
      # Whenever you decide you'd rather switch to DNS setup for Clerk, simply set `proxy_url`
      # to `null` for the domain. When you update a production instance's primary domain name,
      # you have to make sure that you've completed all the necessary setup steps for DNS and
      # emails to work. Expect downtime otherwise. Updating a primary domain's name will also
      # update the instance's home origin, affecting the default application paths.
      request = ::ClerkSDKBackend::Operations::UpdateDomainRequest.new(
        
        domain_id: domain_id,
        request_body: request_body
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::ClerkSDKBackend::Operations::UpdateDomainRequest,
        base_url,
        '/domains/{domain_id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request_body, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.patch(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
        if form
          req.body = Utils.encode_form(form)
        elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
          req.body = URI.encode_www_form(data)
        else
          req.body = data
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::ClerkSDKBackend::Operations::UpdateDomainResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::ClerkSDKBackend::Shared::Domain)
          res.domain = out
        end
      elsif [400, 404, 422].include?(r.status)
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::ClerkSDKBackend::Shared::ClerkErrors)
          res.clerk_errors = out
        end
      end
      res
    end
  end
end