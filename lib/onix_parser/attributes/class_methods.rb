module OnixParser
  module Attributes
    module ClassMethods
      def defined_attributes
        @defined_attributes ||= {}
      end

      def setter_methods
        @setter_methods ||= {}
      end

      def instance_methods
        @instance_methods ||= {}
      end

      def attribute(name, type, options = {})
        options[:default] ||= [] if type == Types::Collection

        defined_attributes[name] = options.delete(:default)
        instance_methods[name] = "@#{name}"

        attr_setter(name, type, options)
        attr_getter(name)
      end

      def attr_getter(name)
        attr_reader(name)
      end

      def attr_setter(name, type, options)
        setter_methods[name] = "#{name}="
        define_method(setter_methods[name]) do |value|
          coerced_value = Types.coerce(type, value, options.dup)
          instance_variable_set(instance_methods[name], coerced_value)
          @attributes[name] = coerced_value
        end
      end
    end
  end
end
