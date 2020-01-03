module OnixParser
  module Attributes
    module ClassMethods
      def defined_attributes
        @defined_attributes ||= {}
      end

      def setter_methods_lookup
        @setter_methods_lookup ||= {}
      end

      def getter_methods_lookup
        @getter_methods_lookup ||= {}
      end

      def attribute(name, type, options = {})
        options[:default] ||= [] if type == Types::Collection
        defined_attributes[name] = options.delete(:default)

        getter_methods_lookup[name] = "@#{name}"
        setter_methods_lookup[name] = "#{name}="

        attr_setter(name)
        attr_getter(name, type, options)
      end

      def attr_getter(name, type, options)
        define_method(name) do
          if instance_variable_defined?(getter_methods_lookup[name])
            instance_variable_get(getter_methods_lookup[name])
          else
            coerced = Types.coerce(type, @attributes[name], options)
            instance_variable_set(getter_methods_lookup[name], coerced)
          end
        end
      end

      def attr_setter(name)
        define_method(setter_methods_lookup[name]) do |value|
          @attributes[name] = value
        end
      end
    end
  end
end
