=begin
#Clerk Backend API

#The Clerk REST Backend API, meant to be accessed by backend servers.  ### Versions  When the API changes in a way that isn't compatible with older versions, a new version is released. Each version is identified by its release date, e.g. `2021-02-05`. For more information, please see [Clerk API Versions](https://clerk.com/docs/versioning/available-versions).  Please see https://clerk.com/docs for more information.

The version of the OpenAPI document: 2021-02-05
Contact: support@clerk.com
Generated by: https://openapi-generator.tech
Generator version: unset

=end

require 'date'
require 'time'

module ClerkHttpClient
  class CreateSAMLConnectionRequest
    # The name to use as a label for this SAML Connection
    attr_accessor :name

    # The domain of your organization. Sign in flows using an email with this domain, will use this SAML Connection.
    attr_accessor :domain

    # The domains of your organization. Sign in flows using an email with one of these domains, will use this SAML Connection.
    attr_accessor :domains

    # The IdP provider of the connection.
    attr_accessor :provider

    # The Entity ID as provided by the IdP
    attr_accessor :idp_entity_id

    # The Single-Sign On URL as provided by the IdP
    attr_accessor :idp_sso_url

    # The X.509 certificate as provided by the IdP
    attr_accessor :idp_certificate

    # The URL which serves the IdP metadata. If present, it takes priority over the corresponding individual properties
    attr_accessor :idp_metadata_url

    # The XML content of the IdP metadata file. If present, it takes priority over the corresponding individual properties
    attr_accessor :idp_metadata

    # The ID of the organization to which users of this SAML Connection will be added
    attr_accessor :organization_id

    attr_accessor :attribute_mapping

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'domain' => :'domain',
        :'domains' => :'domains',
        :'provider' => :'provider',
        :'idp_entity_id' => :'idp_entity_id',
        :'idp_sso_url' => :'idp_sso_url',
        :'idp_certificate' => :'idp_certificate',
        :'idp_metadata_url' => :'idp_metadata_url',
        :'idp_metadata' => :'idp_metadata',
        :'organization_id' => :'organization_id',
        :'attribute_mapping' => :'attribute_mapping'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'name' => :'String',
        :'domain' => :'String',
        :'domains' => :'Array<String>',
        :'provider' => :'String',
        :'idp_entity_id' => :'String',
        :'idp_sso_url' => :'String',
        :'idp_certificate' => :'String',
        :'idp_metadata_url' => :'String',
        :'idp_metadata' => :'String',
        :'organization_id' => :'String',
        :'attribute_mapping' => :'CreateSAMLConnectionRequestAttributeMapping'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'idp_entity_id',
        :'idp_sso_url',
        :'idp_certificate',
        :'idp_metadata_url',
        :'idp_metadata',
        :'organization_id',
        :'attribute_mapping'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `ClerkHttpClient::CreateSAMLConnectionRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ClerkHttpClient::CreateSAMLConnectionRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      else
        self.name = nil
      end

      if attributes.key?(:'domain')
        self.domain = attributes[:'domain']
      end

      if attributes.key?(:'domains')
        if (value = attributes[:'domains']).is_a?(Array)
          self.domains = value
        end
      end

      if attributes.key?(:'provider')
        self.provider = attributes[:'provider']
      else
        self.provider = nil
      end

      if attributes.key?(:'idp_entity_id')
        self.idp_entity_id = attributes[:'idp_entity_id']
      end

      if attributes.key?(:'idp_sso_url')
        self.idp_sso_url = attributes[:'idp_sso_url']
      end

      if attributes.key?(:'idp_certificate')
        self.idp_certificate = attributes[:'idp_certificate']
      end

      if attributes.key?(:'idp_metadata_url')
        self.idp_metadata_url = attributes[:'idp_metadata_url']
      end

      if attributes.key?(:'idp_metadata')
        self.idp_metadata = attributes[:'idp_metadata']
      end

      if attributes.key?(:'organization_id')
        self.organization_id = attributes[:'organization_id']
      end

      if attributes.key?(:'attribute_mapping')
        self.attribute_mapping = attributes[:'attribute_mapping']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @provider.nil?
        invalid_properties.push('invalid value for "provider", provider cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @name.nil?
      return false if @provider.nil?
      provider_validator = EnumAttributeValidator.new('String', ["saml_custom", "saml_okta", "saml_google", "saml_microsoft"])
      return false unless provider_validator.valid?(@provider)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] provider Object to be assigned
    def provider=(provider)
      validator = EnumAttributeValidator.new('String', ["saml_custom", "saml_okta", "saml_google", "saml_microsoft"])
      unless validator.valid?(provider)
        fail ArgumentError, "invalid value for \"provider\", must be one of #{validator.allowable_values}."
      end
      @provider = provider
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          domain == o.domain &&
          domains == o.domains &&
          provider == o.provider &&
          idp_entity_id == o.idp_entity_id &&
          idp_sso_url == o.idp_sso_url &&
          idp_certificate == o.idp_certificate &&
          idp_metadata_url == o.idp_metadata_url &&
          idp_metadata == o.idp_metadata &&
          organization_id == o.organization_id &&
          attribute_mapping == o.attribute_mapping
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, domain, domains, provider, idp_entity_id, idp_sso_url, idp_certificate, idp_metadata_url, idp_metadata, organization_id, attribute_mapping].hash
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
