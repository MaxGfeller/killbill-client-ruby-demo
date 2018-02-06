=begin
#Kill Bill

#Kill Bill is an open-source billing and payments platform

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module SwaggerClient

  class SimplePlanJson
    attr_accessor :plan_id

    attr_accessor :product_name

    attr_accessor :product_category

    attr_accessor :currency

    attr_accessor :amount

    attr_accessor :billing_period

    attr_accessor :trial_length

    attr_accessor :trial_time_unit

    attr_accessor :available_base_products

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
        :'plan_id' => :'planId',
        :'product_name' => :'productName',
        :'product_category' => :'productCategory',
        :'currency' => :'currency',
        :'amount' => :'amount',
        :'billing_period' => :'billingPeriod',
        :'trial_length' => :'trialLength',
        :'trial_time_unit' => :'trialTimeUnit',
        :'available_base_products' => :'availableBaseProducts'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'plan_id' => :'String',
        :'product_name' => :'String',
        :'product_category' => :'String',
        :'currency' => :'String',
        :'amount' => :'Float',
        :'billing_period' => :'String',
        :'trial_length' => :'Integer',
        :'trial_time_unit' => :'String',
        :'available_base_products' => :'Array<String>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'planId')
        self.plan_id = attributes[:'planId']
      end

      if attributes.has_key?(:'productName')
        self.product_name = attributes[:'productName']
      end

      if attributes.has_key?(:'productCategory')
        self.product_category = attributes[:'productCategory']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.has_key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.has_key?(:'billingPeriod')
        self.billing_period = attributes[:'billingPeriod']
      end

      if attributes.has_key?(:'trialLength')
        self.trial_length = attributes[:'trialLength']
      end

      if attributes.has_key?(:'trialTimeUnit')
        self.trial_time_unit = attributes[:'trialTimeUnit']
      end

      if attributes.has_key?(:'availableBaseProducts')
        if (value = attributes[:'availableBaseProducts']).is_a?(Array)
          self.available_base_products = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      product_category_validator = EnumAttributeValidator.new('String', ["BASE", "ADD_ON", "STANDALONE"])
      return false unless product_category_validator.valid?(@product_category)
      currency_validator = EnumAttributeValidator.new('String', ["AED", "AFN", "ALL", "AMD", "ANG", "AOA", "ARS", "AUD", "AWG", "AZN", "BAM", "BBD", "BDT", "BGN", "BHD", "BIF", "BMD", "BND", "BOB", "BRL", "BSD", "BTN", "BWP", "BYR", "BZD", "CAD", "CDF", "CHF", "CLP", "CNY", "COP", "CRC", "CUC", "CUP", "CVE", "CZK", "DJF", "DKK", "DOP", "DZD", "EGP", "ERN", "ETB", "EUR", "FJD", "FKP", "GBP", "GEL", "GGP", "GHS", "GIP", "GMD", "GNF", "GTQ", "GYD", "HKD", "HNL", "HRK", "HTG", "HUF", "IDR", "ILS", "IMP", "INR", "IQD", "IRR", "ISK", "JEP", "JMD", "JOD", "JPY", "KES", "KGS", "KHR", "KMF", "KPW", "KRW", "KWD", "KYD", "KZT", "LAK", "LBP", "LKR", "LRD", "LSL", "LTL", "LVL", "LYD", "MAD", "MDL", "MGA", "MKD", "MMK", "MNT", "MOP", "MRO", "MUR", "MVR", "MWK", "MXN", "MYR", "MZN", "NAD", "NGN", "NIO", "NOK", "NPR", "NZD", "OMR", "PAB", "PEN", "PGK", "PHP", "PKR", "PLN", "PYG", "QAR", "RON", "RSD", "RUB", "RWF", "SAR", "SBD", "SCR", "SDG", "SEK", "SGD", "SHP", "SLL", "SOS", "SPL", "SRD", "STD", "SVC", "SYP", "SZL", "THB", "TJS", "TMT", "TND", "TOP", "TRY", "TTD", "TVD", "TWD", "TZS", "UAH", "UGX", "USD", "UYU", "UZS", "VEF", "VND", "VUV", "WST", "XAF", "XCD", "XDR", "XOF", "XPF", "YER", "ZAR", "ZMW", "ZWD", "BTC"])
      return false unless currency_validator.valid?(@currency)
      billing_period_validator = EnumAttributeValidator.new('String', ["DAILY", "WEEKLY", "BIWEEKLY", "THIRTY_DAYS", "MONTHLY", "QUARTERLY", "BIANNUAL", "ANNUAL", "BIENNIAL", "NO_BILLING_PERIOD"])
      return false unless billing_period_validator.valid?(@billing_period)
      trial_time_unit_validator = EnumAttributeValidator.new('String', ["DAYS", "WEEKS", "MONTHS", "YEARS", "UNLIMITED"])
      return false unless trial_time_unit_validator.valid?(@trial_time_unit)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] product_category Object to be assigned
    def product_category=(product_category)
      validator = EnumAttributeValidator.new('String', ["BASE", "ADD_ON", "STANDALONE"])
      unless validator.valid?(product_category)
        fail ArgumentError, "invalid value for 'product_category', must be one of #{validator.allowable_values}."
      end
      @product_category = product_category
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] currency Object to be assigned
    def currency=(currency)
      validator = EnumAttributeValidator.new('String', ["AED", "AFN", "ALL", "AMD", "ANG", "AOA", "ARS", "AUD", "AWG", "AZN", "BAM", "BBD", "BDT", "BGN", "BHD", "BIF", "BMD", "BND", "BOB", "BRL", "BSD", "BTN", "BWP", "BYR", "BZD", "CAD", "CDF", "CHF", "CLP", "CNY", "COP", "CRC", "CUC", "CUP", "CVE", "CZK", "DJF", "DKK", "DOP", "DZD", "EGP", "ERN", "ETB", "EUR", "FJD", "FKP", "GBP", "GEL", "GGP", "GHS", "GIP", "GMD", "GNF", "GTQ", "GYD", "HKD", "HNL", "HRK", "HTG", "HUF", "IDR", "ILS", "IMP", "INR", "IQD", "IRR", "ISK", "JEP", "JMD", "JOD", "JPY", "KES", "KGS", "KHR", "KMF", "KPW", "KRW", "KWD", "KYD", "KZT", "LAK", "LBP", "LKR", "LRD", "LSL", "LTL", "LVL", "LYD", "MAD", "MDL", "MGA", "MKD", "MMK", "MNT", "MOP", "MRO", "MUR", "MVR", "MWK", "MXN", "MYR", "MZN", "NAD", "NGN", "NIO", "NOK", "NPR", "NZD", "OMR", "PAB", "PEN", "PGK", "PHP", "PKR", "PLN", "PYG", "QAR", "RON", "RSD", "RUB", "RWF", "SAR", "SBD", "SCR", "SDG", "SEK", "SGD", "SHP", "SLL", "SOS", "SPL", "SRD", "STD", "SVC", "SYP", "SZL", "THB", "TJS", "TMT", "TND", "TOP", "TRY", "TTD", "TVD", "TWD", "TZS", "UAH", "UGX", "USD", "UYU", "UZS", "VEF", "VND", "VUV", "WST", "XAF", "XCD", "XDR", "XOF", "XPF", "YER", "ZAR", "ZMW", "ZWD", "BTC"])
      unless validator.valid?(currency)
        fail ArgumentError, "invalid value for 'currency', must be one of #{validator.allowable_values}."
      end
      @currency = currency
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] billing_period Object to be assigned
    def billing_period=(billing_period)
      validator = EnumAttributeValidator.new('String', ["DAILY", "WEEKLY", "BIWEEKLY", "THIRTY_DAYS", "MONTHLY", "QUARTERLY", "BIANNUAL", "ANNUAL", "BIENNIAL", "NO_BILLING_PERIOD"])
      unless validator.valid?(billing_period)
        fail ArgumentError, "invalid value for 'billing_period', must be one of #{validator.allowable_values}."
      end
      @billing_period = billing_period
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] trial_time_unit Object to be assigned
    def trial_time_unit=(trial_time_unit)
      validator = EnumAttributeValidator.new('String', ["DAYS", "WEEKS", "MONTHS", "YEARS", "UNLIMITED"])
      unless validator.valid?(trial_time_unit)
        fail ArgumentError, "invalid value for 'trial_time_unit', must be one of #{validator.allowable_values}."
      end
      @trial_time_unit = trial_time_unit
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          plan_id == o.plan_id &&
          product_name == o.product_name &&
          product_category == o.product_category &&
          currency == o.currency &&
          amount == o.amount &&
          billing_period == o.billing_period &&
          trial_length == o.trial_length &&
          trial_time_unit == o.trial_time_unit &&
          available_base_products == o.available_base_products
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [plan_id, product_name, product_category, currency, amount, billing_period, trial_length, trial_time_unit, available_base_products].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
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
        temp_model = SwaggerClient.const_get(type).new
        temp_model.build_from_hash(value)
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
        next if value.nil?
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
        value.compact.map{ |v| _to_hash(v) }
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