module OnixParser
  module Attributes
    module Types
      class String
        def coerce(value, _options = {})
          case value
          when Collection then value.join
          else
            value.respond_to?(:to_s) ? value.to_s : nil
          end
        end
      end
    end
  end
end
