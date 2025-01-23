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
  class CreateOrganizationInvitationRequest
    # The email address of the new member that is going to be invited to the organization
    attr_accessor :email_address

    # The ID of the user that invites the new member to the organization. Must be an administrator in the organization.
    attr_accessor :inviter_user_id

    # The role of the new member in the organization
    attr_accessor :role

    # Metadata saved on the organization invitation, read-only from the Frontend API and fully accessible (read/write) from the Backend API. When the organization invitation is accepted, the metadata will be transferred to the newly created organization membership.
    attr_accessor :public_metadata

    # Metadata saved on the organization invitation, fully accessible (read/write) from the Backend API but not visible from the Frontend API. When the organization invitation is accepted, the metadata will be transferred to the newly created organization membership.
    attr_accessor :private_metadata

    # Optional URL that the invitee will be redirected to once they accept the invitation by clicking the join link in the invitation email.
    attr_accessor :redirect_url

    # The number of days the invitation will be valid for. By default, the invitation has a 30 days expire.
    attr_accessor :expires_in_days

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'email_address' => :'email_address',
        :'inviter_user_id' => :'inviter_user_id',
        :'role' => :'role',
        :'public_metadata' => :'public_metadata',
        :'private_metadata' => :'private_metadata',
        :'redirect_url' => :'redirect_url',
        :'expires_in_days' => :'expires_in_days'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'email_address' => :'String',
        :'inviter_user_id' => :'String',
        :'role' => :'String',
        :'public_metadata' => :'Hash<String, Object>',
        :'private_metadata' => :'Hash<String, Object>',
        :'redirect_url' => :'String',
        :'expires_in_days' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'inviter_user_id',
        :'expires_in_days'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `ClerkHttpClient::CreateOrganizationInvitationRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ClerkHttpClient::CreateOrganizationInvitationRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'email_address')
        self.email_address = attributes[:'email_address']
      else
        self.email_address = nil
      end

      if attributes.key?(:'inviter_user_id')
        self.inviter_user_id = attributes[:'inviter_user_id']
      end

      if attributes.key?(:'role')
        self.role = attributes[:'role']
      else
        self.role = nil
      end

      if attributes.key?(:'public_metadata')
        if (value = attributes[:'public_metadata']).is_a?(Hash)
          self.public_metadata = value
        end
      end

      if attributes.key?(:'private_metadata')
        if (value = attributes[:'private_metadata']).is_a?(Hash)
          self.private_metadata = value
        end
      end

      if attributes.key?(:'redirect_url')
        self.redirect_url = attributes[:'redirect_url']
      end

      if attributes.key?(:'expires_in_days')
        self.expires_in_days = attributes[:'expires_in_days']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @email_address.nil?
        invalid_properties.push('invalid value for "email_address", email_address cannot be nil.')
      end

      if @role.nil?
        invalid_properties.push('invalid value for "role", role cannot be nil.')
      end

      if !@expires_in_days.nil? && @expires_in_days > 365
        invalid_properties.push('invalid value for "expires_in_days", must be smaller than or equal to 365.')
      end

      if !@expires_in_days.nil? && @expires_in_days < 1
        invalid_properties.push('invalid value for "expires_in_days", must be greater than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @email_address.nil?
      return false if @role.nil?
      return false if !@expires_in_days.nil? && @expires_in_days > 365
      return false if !@expires_in_days.nil? && @expires_in_days < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] expires_in_days Value to be assigned
    def expires_in_days=(expires_in_days)
      if !expires_in_days.nil? && expires_in_days > 365
        fail ArgumentError, 'invalid value for "expires_in_days", must be smaller than or equal to 365.'
      end

      if !expires_in_days.nil? && expires_in_days < 1
        fail ArgumentError, 'invalid value for "expires_in_days", must be greater than or equal to 1.'
      end

      @expires_in_days = expires_in_days
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          email_address == o.email_address &&
          inviter_user_id == o.inviter_user_id &&
          role == o.role &&
          public_metadata == o.public_metadata &&
          private_metadata == o.private_metadata &&
          redirect_url == o.redirect_url &&
          expires_in_days == o.expires_in_days
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [email_address, inviter_user_id, role, public_metadata, private_metadata, redirect_url, expires_in_days].hash
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
