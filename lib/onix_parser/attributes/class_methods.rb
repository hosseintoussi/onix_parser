module OnixParser
  module Attributes
    module ClassMethods
      def default_values
        @default_values ||= {}
      end

      def setter_methods
        @setter_methods ||= {}
      end

      def attributes
        default_values.keys
      end

      def attribute(name, type, options = {})
        options[:default] ||= [] if type == Types::Collection

        default_values[name] = options.delete(:default)

        initialize_setter(name, type, options)
        initialize_getter(name)
      end

      def initialize_getter(name)
        attr_reader(name)
      end

      def initialize_setter(name, type, options)
        setter_methods[name] = "#{name}="
        module_eval <<-EOS, __FILE__, __LINE__ + 1
        def #{name}=(value)
          @#{name} = if value.is_a?(#{type}) && !value.is_a?(Array)
            value
          else
            #{"Types.coerce(#{type}, value, #{options})"}
          end
          @attributes[:#{name}] = @#{name}
        end
        EOS
      end
    end
  end
end
