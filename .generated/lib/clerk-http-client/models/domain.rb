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
  class Domain
    attr_accessor :object

    attr_accessor :id

    attr_accessor :name

    attr_accessor :is_satellite

    attr_accessor :frontend_api_url

    # Null for satellite domains. 
    attr_accessor :accounts_portal_url

    attr_accessor :proxy_url

    attr_accessor :development_origin

    attr_accessor :cname_targets

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'object' => :'object',
        :'id' => :'id',
        :'name' => :'name',
        :'is_satellite' => :'is_satellite',
        :'frontend_api_url' => :'frontend_api_url',
        :'accounts_portal_url' => :'accounts_portal_url',
        :'proxy_url' => :'proxy_url',
        :'development_origin' => :'development_origin',
        :'cname_targets' => :'cname_targets'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'object' => :'String',
        :'id' => :'String',
        :'name' => :'String',
        :'is_satellite' => :'Boolean',
        :'frontend_api_url' => :'String',
        :'accounts_portal_url' => :'String',
        :'proxy_url' => :'String',
        :'development_origin' => :'String',
        :'cname_targets' => :'Array<CNameTarget>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'accounts_portal_url',
        :'proxy_url',
        :'cname_targets'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `ClerkHttpClient::Domain` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ClerkHttpClient::Domain`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'object')
        self.object = attributes[:'object']
      else
        self.object = nil
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      else
        self.name = nil
      end

      if attributes.key?(:'is_satellite')
        self.is_satellite = attributes[:'is_satellite']
      else
        self.is_satellite = nil
      end

      if attributes.key?(:'frontend_api_url')
        self.frontend_api_url = attributes[:'frontend_api_url']
      else
        self.frontend_api_url = nil
      end

      if attributes.key?(:'accounts_portal_url')
        self.accounts_portal_url = attributes[:'accounts_portal_url']
      end

      if attributes.key?(:'proxy_url')
        self.proxy_url = attributes[:'proxy_url']
      end

      if attributes.key?(:'development_origin')
        self.development_origin = attributes[:'development_origin']
      else
        self.development_origin = nil
      end

      if attributes.key?(:'cname_targets')
        if (value = attributes[:'cname_targets']).is_a?(Array)
          self.cname_targets = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @object.nil?
        invalid_properties.push('invalid value for "object", object cannot be nil.')
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @is_satellite.nil?
        invalid_properties.push('invalid value for "is_satellite", is_satellite cannot be nil.')
      end

      if @frontend_api_url.nil?
        invalid_properties.push('invalid value for "frontend_api_url", frontend_api_url cannot be nil.')
      end

      if @development_origin.nil?
        invalid_properties.push('invalid value for "development_origin", development_origin cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @object.nil?
      object_validator = EnumAttributeValidator.new('String', ["domain"])
      return false unless object_validator.valid?(@object)
      return false if @id.nil?
      return false if @name.nil?
      return false if @is_satellite.nil?
      return false if @frontend_api_url.nil?
      return false if @development_origin.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object)
      validator = EnumAttributeValidator.new('String', ["domain"])
      unless validator.valid?(object)
        fail ArgumentError, "invalid value for \"object\", must be one of #{validator.allowable_values}."
      end
      @object = object
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          object == o.object &&
          id == o.id &&
          name == o.name &&
          is_satellite == o.is_satellite &&
          frontend_api_url == o.frontend_api_url &&
          accounts_portal_url == o.accounts_portal_url &&
          proxy_url == o.proxy_url &&
          development_origin == o.development_origin &&
          cname_targets == o.cname_targets
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [object, id, name, is_satellite, frontend_api_url, accounts_portal_url, proxy_url, development_origin, cname_targets].hash
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
