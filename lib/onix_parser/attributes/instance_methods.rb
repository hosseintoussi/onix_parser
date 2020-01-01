module OnixParser
  module Attributes
    module InstanceMethods
      attr_reader :attributes

      def initialize(attrs = {})
        @attributes = {}
        define_attributes(attrs)
      end

      def attributes=(attrs)
        define_attributes(attrs)
      end

      def coerce(value, _options = {})
        self.attributes = value
        self
      end

      private

      def define_attributes(attrs = {})
        attrs.each_pair do |key, value|
          key = key.to_sym
          if default_values.key?(key)
            @attributes[key] = value
            public_send(setter_methods[key], value)
          end
        end
      end

      def default_values
        @default_values ||= self.class.default_values
      end

      def setter_methods
        @setter_methods ||= self.class.setter_methods
      end
    end
  end
end
