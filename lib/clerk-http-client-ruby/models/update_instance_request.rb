=begin
#Clerk Backend API

#The Clerk REST Backend API, meant to be accessed by backend servers.  ### Versions  When the API changes in a way that isn't compatible with older versions, a new version is released. Each version is identified by its release date, e.g. `2021-02-05`. For more information, please see [Clerk API Versions](https://clerk.com/docs/backend-requests/versioning/overview).   Please see https://clerk.com/docs for more information.

The version of the OpenAPI document: v1
Contact: support@clerk.com
Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

require 'date'
require 'time'

module ClerkHttpClient
  class UpdateInstanceRequest
    # Toggles test mode for this instance, allowing the use of test email addresses and phone numbers. Defaults to true for development instances.
    attr_accessor :test_mode

    # Whether the instance should be using the HIBP service to check passwords for breaches
    attr_accessor :hibp

    # The \"enhanced_email_deliverability\" feature will send emails from \"verifications@clerk.dev\" instead of your domain. This can be helpful if you do not have a high domain reputation.
    attr_accessor :enhanced_email_deliverability

    attr_accessor :support_email

    attr_accessor :clerk_js_version

    attr_accessor :development_origin

    # For browser-like stacks such as browser extensions, Electron, or Capacitor.js the instance allowed origins need to be updated with the request origin value. For Chrome extensions popup, background, or service worker pages the origin is chrome-extension://extension_uiid. For Electron apps the default origin is http://localhost:3000. For Capacitor, the origin is capacitor://localhost.
    attr_accessor :allowed_origins

    # Whether the instance should operate in cookieless development mode (i.e. without third-party cookies). Deprecated: Please use `url_based_session_syncing` instead.
    attr_accessor :cookieless_dev

    # Whether the instance should use URL-based session syncing in development mode (i.e. without third-party cookies).
    attr_accessor :url_based_session_syncing

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'test_mode' => :'test_mode',
        :'hibp' => :'hibp',
        :'enhanced_email_deliverability' => :'enhanced_email_deliverability',
        :'support_email' => :'support_email',
        :'clerk_js_version' => :'clerk_js_version',
        :'development_origin' => :'development_origin',
        :'allowed_origins' => :'allowed_origins',
        :'cookieless_dev' => :'cookieless_dev',
        :'url_based_session_syncing' => :'url_based_session_syncing'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'test_mode' => :'Boolean',
        :'hibp' => :'Boolean',
        :'enhanced_email_deliverability' => :'Boolean',
        :'support_email' => :'String',
        :'clerk_js_version' => :'String',
        :'development_origin' => :'String',
        :'allowed_origins' => :'Array<String>',
        :'cookieless_dev' => :'Boolean',
        :'url_based_session_syncing' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'test_mode',
        :'hibp',
        :'enhanced_email_deliverability',
        :'support_email',
        :'clerk_js_version',
        :'development_origin',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `ClerkHttpClient::UpdateInstanceRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ClerkHttpClient::UpdateInstanceRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'test_mode')
        self.test_mode = attributes[:'test_mode']
      end

      if attributes.key?(:'hibp')
        self.hibp = attributes[:'hibp']
      end

      if attributes.key?(:'enhanced_email_deliverability')
        self.enhanced_email_deliverability = attributes[:'enhanced_email_deliverability']
      end

      if attributes.key?(:'support_email')
        self.support_email = attributes[:'support_email']
      end

      if attributes.key?(:'clerk_js_version')
        self.clerk_js_version = attributes[:'clerk_js_version']
      end

      if attributes.key?(:'development_origin')
        self.development_origin = attributes[:'development_origin']
      end

      if attributes.key?(:'allowed_origins')
        if (value = attributes[:'allowed_origins']).is_a?(Array)
          self.allowed_origins = value
        end
      end

      if attributes.key?(:'cookieless_dev')
        self.cookieless_dev = attributes[:'cookieless_dev']
      end

      if attributes.key?(:'url_based_session_syncing')
        self.url_based_session_syncing = attributes[:'url_based_session_syncing']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          test_mode == o.test_mode &&
          hibp == o.hibp &&
          enhanced_email_deliverability == o.enhanced_email_deliverability &&
          support_email == o.support_email &&
          clerk_js_version == o.clerk_js_version &&
          development_origin == o.development_origin &&
          allowed_origins == o.allowed_origins &&
          cookieless_dev == o.cookieless_dev &&
          url_based_session_syncing == o.url_based_session_syncing
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [test_mode, hibp, enhanced_email_deliverability, support_email, clerk_js_version, development_origin, allowed_origins, cookieless_dev, url_based_session_syncing].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = ClerkHttpClient.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
