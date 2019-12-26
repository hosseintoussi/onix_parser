module OnixParser
  module Elements
    module Types
      class Collection
        include ShallowAttributes

        def coerce(values, options = {})
          begin
          collection = values.is_a?(::Array) ? values : [values]

          collection.map! do |value|
            ShallowAttributes::Type.coerce(item_klass(options[:of]), value)
          end
          rescue => e
            puts "======================"
            puts(" values: ", values)
            puts(" options: ", options)

            puts e
          end
        end

        private

        def item_klass(klass)
          return klass unless klass.is_a? ::String
          Object.const_get(klass)
        end
      end
    end
  end
end
