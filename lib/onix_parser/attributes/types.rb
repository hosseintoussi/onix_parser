require_relative "types/collection"
require_relative "types/string"

module OnixParser
  module Attributes
    module Types
      DEFAULT_TYPE_OBJECTS = {
        Types::Collection  => Collection.new,
        Types::String      => String.new
      }.freeze

      class << self
        def coerce(type, value, options = {})
          type_instance(type).coerce(value, options)
        end

        private

        def type_instance(klass)
          DEFAULT_TYPE_OBJECTS[klass] || klass.new
        end
      end
    end
  end
end
