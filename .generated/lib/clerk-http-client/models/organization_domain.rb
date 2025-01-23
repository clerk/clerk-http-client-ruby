=begin
#Clerk Backend API

#The Clerk REST Backend API, meant to be accessed by backend servers.  ### Versions  When the API changes in a way that isn't compatible with older versions, a new version is released. Each version is identified by its release date, e.g. `2021-02-05`. For more information, please see [Clerk API Versions](https://clerk.com/docs/backend-requests/versioning/overview).   Please see https://clerk.com/docs for more information.

The version of the OpenAPI document: v1
Contact: support@clerk.com
Generated by: https://openapi-generator.tech
Generator version: unset

=end

require 'date'
require 'time'

module ClerkHttpClient
  # An organization domain
  class OrganizationDomain
    # Unique identifier for the organization domain
    attr_accessor :id

    # String representing the object's type. Objects of the same type share the same value. Always `organization_domain` 
    attr_accessor :object

    # Unique identifier for the organization
    attr_accessor :organization_id

    # Name of the organization domain
    attr_accessor :name

    # Mode of enrollment for the domain
    attr_accessor :enrollment_mode

    # Affiliation email address for the domain, if available.
    attr_accessor :affiliation_email_address

    attr_accessor :verification

    # Total number of pending invitations associated with this domain
    attr_accessor :total_pending_invitations

    # Total number of pending suggestions associated with this domain
    attr_accessor :total_pending_suggestions

    # Unix timestamp when the domain was created
    attr_accessor :created_at

    # Unix timestamp of the last update to the domain
    attr_accessor :updated_at

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
        :'id' => :'id',
        :'object' => :'object',
        :'organization_id' => :'organization_id',
        :'name' => :'name',
        :'enrollment_mode' => :'enrollment_mode',
        :'affiliation_email_address' => :'affiliation_email_address',
        :'verification' => :'verification',
        :'total_pending_invitations' => :'total_pending_invitations',
        :'total_pending_suggestions' => :'total_pending_suggestions',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'object' => :'String',
        :'organization_id' => :'String',
        :'name' => :'String',
        :'enrollment_mode' => :'String',
        :'affiliation_email_address' => :'String',
        :'verification' => :'OrganizationDomainVerification',
        :'total_pending_invitations' => :'Integer',
        :'total_pending_suggestions' => :'Integer',
        :'created_at' => :'Integer',
        :'updated_at' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'affiliation_email_address',
        :'verification',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `ClerkHttpClient::OrganizationDomain` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ClerkHttpClient::OrganizationDomain`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'object')
        self.object = attributes[:'object']
      end

      if attributes.key?(:'organization_id')
        self.organization_id = attributes[:'organization_id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'enrollment_mode')
        self.enrollment_mode = attributes[:'enrollment_mode']
      end

      if attributes.key?(:'affiliation_email_address')
        self.affiliation_email_address = attributes[:'affiliation_email_address']
      end

      if attributes.key?(:'verification')
        self.verification = attributes[:'verification']
      end

      if attributes.key?(:'total_pending_invitations')
        self.total_pending_invitations = attributes[:'total_pending_invitations']
      end

      if attributes.key?(:'total_pending_suggestions')
        self.total_pending_suggestions = attributes[:'total_pending_suggestions']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
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
      object_validator = EnumAttributeValidator.new('String', ["organization_domain"])
      return false unless object_validator.valid?(@object)
      enrollment_mode_validator = EnumAttributeValidator.new('String', ["manual_invitation", "automatic_invitation", "automatic_suggestion"])
      return false unless enrollment_mode_validator.valid?(@enrollment_mode)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object)
      validator = EnumAttributeValidator.new('String', ["organization_domain"])
      unless validator.valid?(object)
        fail ArgumentError, "invalid value for \"object\", must be one of #{validator.allowable_values}."
      end
      @object = object
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] enrollment_mode Object to be assigned
    def enrollment_mode=(enrollment_mode)
      validator = EnumAttributeValidator.new('String', ["manual_invitation", "automatic_invitation", "automatic_suggestion"])
      unless validator.valid?(enrollment_mode)
        fail ArgumentError, "invalid value for \"enrollment_mode\", must be one of #{validator.allowable_values}."
      end
      @enrollment_mode = enrollment_mode
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          object == o.object &&
          organization_id == o.organization_id &&
          name == o.name &&
          enrollment_mode == o.enrollment_mode &&
          affiliation_email_address == o.affiliation_email_address &&
          verification == o.verification &&
          total_pending_invitations == o.total_pending_invitations &&
          total_pending_suggestions == o.total_pending_suggestions &&
          created_at == o.created_at &&
          updated_at == o.updated_at
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, object, organization_id, name, enrollment_mode, affiliation_email_address, verification, total_pending_invitations, total_pending_suggestions, created_at, updated_at].hash
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
