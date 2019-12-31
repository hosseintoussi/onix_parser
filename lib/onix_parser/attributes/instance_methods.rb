module OnixParser
  module Attributes
    module InstanceMethods
      def initialize(attrs = {})
        @attributes = {}
        attrs.each_pair do |key, value|
          key = key.to_sym
          @attributes[key] = value if default_values.key?(key)
        end
        define_attributes
      end

      TO_H_PROC = ->(value) { value.respond_to?(:to_hash) ? value.to_hash : value }

      def attributes
        hash = {}
        @attributes.map do |key, value|
          hash[key] =
            value.is_a?(Array) ? value.map(&TO_H_PROC) : TO_H_PROC.call(value)
        end
        hash
      end

      def attributes=(attributes)
        attributes.each_pair do |key, value|
          @attributes[key.to_sym] = value
        end
        define_attributes
      end

      def coerce(value, _options = {})
        self.attributes = value
        self
      end

      def inspect
        "#<#{self.class}#{attributes.map{ |k, v| " #{k}=#{v.inspect}" }.join}>"
      end

      def define_attributes
        @attributes.each do |key, value|
          send("#{key}=", value)
        end
      end

      def default_values
        @default_values ||= self.class.default_values
      end
    end
  end
end
