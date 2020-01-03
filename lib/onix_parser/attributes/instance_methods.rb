module OnixParser
  module Attributes
    module InstanceMethods
      attr_reader :attributes

      def initialize(attrs = {})
        @attributes = {}
        set_default_values
        define_attributes(attrs)
      end

      def attributes=(attrs)
        define_attributes(attrs)
      end

      def coerce(value, _options = {})
        self.attributes = value
        self
      end

      def inspect
        "#<#{self.class}#{attributes.map{ |k, v| " #{k}=#{v.inspect}" }.join}>"
      end

      private

      def define_attributes(attrs = {})
        attrs.each_pair do |key, value|
          key = key.to_sym
          if defined_attributes.key?(key)
            public_send(setter_methods_lookup[key], value)
          end
        end
      end

      def set_default_values
        defined_attributes.each_pair do |key, value|
          next unless @attributes[key].nil? && !value.nil?

          public_send(setter_methods_lookup[key], value)
        end
      end

      def defined_attributes
        @defined_attributes ||= self.class.defined_attributes
      end

      def setter_methods_lookup
        @setter_methods_lookup ||= self.class.setter_methods_lookup
      end

      def getter_methods_lookup
       @getter_methods_lookup ||= self.class.getter_methods_lookup
      end
    end
  end
end
