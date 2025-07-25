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
  class Template
    attr_accessor :id

    # String representing the object's type. Objects of the same type share the same value. 
    attr_accessor :object

    # The id of the instance to which this template belongs
    attr_accessor :instance_id

    # whether this is a system (default) or user overridden) template
    attr_accessor :resource_type

    # whether this is an email or SMS template
    attr_accessor :template_type

    # user-friendly name of the template
    attr_accessor :name

    # machine-friendly name of the template
    attr_accessor :slug

    # position with the listing of templates
    attr_accessor :position

    # whether this template can be reverted to the corresponding system default
    attr_accessor :can_revert

    # whether this template can be deleted
    attr_accessor :can_delete

    # whether the body of this template can be edited
    attr_accessor :can_edit_body

    # whether this template can be enabled or disabled, true only for notification SMS templates
    attr_accessor :can_toggle

    # email subject
    attr_accessor :subject

    # the editor markup used to generate the body of the template
    attr_accessor :markup

    # the template body before variable interpolation
    attr_accessor :body

    # list of variables that are available for use in the template body
    attr_accessor :available_variables

    # list of variables that must be contained in the template body
    attr_accessor :required_variables

    attr_accessor :from_email_name

    attr_accessor :reply_to_email_name

    attr_accessor :delivered_by_clerk

    attr_accessor :enabled

    # Unix timestamp of last update. 
    attr_accessor :updated_at

    # Unix timestamp of creation. 
    attr_accessor :created_at

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
        :'instance_id' => :'instance_id',
        :'resource_type' => :'resource_type',
        :'template_type' => :'template_type',
        :'name' => :'name',
        :'slug' => :'slug',
        :'position' => :'position',
        :'can_revert' => :'can_revert',
        :'can_delete' => :'can_delete',
        :'can_edit_body' => :'can_edit_body',
        :'can_toggle' => :'can_toggle',
        :'subject' => :'subject',
        :'markup' => :'markup',
        :'body' => :'body',
        :'available_variables' => :'available_variables',
        :'required_variables' => :'required_variables',
        :'from_email_name' => :'from_email_name',
        :'reply_to_email_name' => :'reply_to_email_name',
        :'delivered_by_clerk' => :'delivered_by_clerk',
        :'enabled' => :'enabled',
        :'updated_at' => :'updated_at',
        :'created_at' => :'created_at'
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
        :'instance_id' => :'String',
        :'resource_type' => :'String',
        :'template_type' => :'String',
        :'name' => :'String',
        :'slug' => :'String',
        :'position' => :'Integer',
        :'can_revert' => :'Boolean',
        :'can_delete' => :'Boolean',
        :'can_edit_body' => :'Boolean',
        :'can_toggle' => :'Boolean',
        :'subject' => :'String',
        :'markup' => :'String',
        :'body' => :'String',
        :'available_variables' => :'Array<String>',
        :'required_variables' => :'Array<String>',
        :'from_email_name' => :'String',
        :'reply_to_email_name' => :'String',
        :'delivered_by_clerk' => :'Boolean',
        :'enabled' => :'Boolean',
        :'updated_at' => :'Integer',
        :'created_at' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'instance_id',
        :'subject',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `ClerkHttpClient::Template` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ClerkHttpClient::Template`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'object')
        self.object = attributes[:'object']
      end

      if attributes.key?(:'instance_id')
        self.instance_id = attributes[:'instance_id']
      end

      if attributes.key?(:'resource_type')
        self.resource_type = attributes[:'resource_type']
      end

      if attributes.key?(:'template_type')
        self.template_type = attributes[:'template_type']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'slug')
        self.slug = attributes[:'slug']
      end

      if attributes.key?(:'position')
        self.position = attributes[:'position']
      end

      if attributes.key?(:'can_revert')
        self.can_revert = attributes[:'can_revert']
      end

      if attributes.key?(:'can_delete')
        self.can_delete = attributes[:'can_delete']
      end

      if attributes.key?(:'can_edit_body')
        self.can_edit_body = attributes[:'can_edit_body']
      end

      if attributes.key?(:'can_toggle')
        self.can_toggle = attributes[:'can_toggle']
      end

      if attributes.key?(:'subject')
        self.subject = attributes[:'subject']
      end

      if attributes.key?(:'markup')
        self.markup = attributes[:'markup']
      end

      if attributes.key?(:'body')
        self.body = attributes[:'body']
      end

      if attributes.key?(:'available_variables')
        if (value = attributes[:'available_variables']).is_a?(Array)
          self.available_variables = value
        end
      end

      if attributes.key?(:'required_variables')
        if (value = attributes[:'required_variables']).is_a?(Array)
          self.required_variables = value
        end
      end

      if attributes.key?(:'from_email_name')
        self.from_email_name = attributes[:'from_email_name']
      end

      if attributes.key?(:'reply_to_email_name')
        self.reply_to_email_name = attributes[:'reply_to_email_name']
      end

      if attributes.key?(:'delivered_by_clerk')
        self.delivered_by_clerk = attributes[:'delivered_by_clerk']
      end

      if attributes.key?(:'enabled')
        self.enabled = attributes[:'enabled']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
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
      object_validator = EnumAttributeValidator.new('String', ["template"])
      return false unless object_validator.valid?(@object)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object)
      validator = EnumAttributeValidator.new('String', ["template"])
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
          id == o.id &&
          object == o.object &&
          instance_id == o.instance_id &&
          resource_type == o.resource_type &&
          template_type == o.template_type &&
          name == o.name &&
          slug == o.slug &&
          position == o.position &&
          can_revert == o.can_revert &&
          can_delete == o.can_delete &&
          can_edit_body == o.can_edit_body &&
          can_toggle == o.can_toggle &&
          subject == o.subject &&
          markup == o.markup &&
          body == o.body &&
          available_variables == o.available_variables &&
          required_variables == o.required_variables &&
          from_email_name == o.from_email_name &&
          reply_to_email_name == o.reply_to_email_name &&
          delivered_by_clerk == o.delivered_by_clerk &&
          enabled == o.enabled &&
          updated_at == o.updated_at &&
          created_at == o.created_at
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, object, instance_id, resource_type, template_type, name, slug, position, can_revert, can_delete, can_edit_body, can_toggle, subject, markup, body, available_variables, required_variables, from_email_name, reply_to_email_name, delivered_by_clerk, enabled, updated_at, created_at].hash
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
