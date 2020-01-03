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
        setter_methods[name] = "#{name}="

        attr_setter(name)
        attr_getter(name, type, options)
      end

      def attr_getter(name, type, options)
        define_method(name) do
          if instance_variable_defined?(instance_methods[name])
            instance_variable_get(instance_methods[name])
          else
            coerced = Types.coerce(type, @attributes[name.to_sym], options)
            instance_variable_set(instance_methods[name], coerced)
          end
        end
      end

      def attr_setter(name)
        define_method(setter_methods[name]) do |value|
          @attributes[name] = value
        end
      end
    end
  end
end
