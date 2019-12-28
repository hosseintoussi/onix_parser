require_relative "types/collection"

module OnixParser
  module Elements
    class Base
      include ShallowAttributes

      def initialize(attributes = {})
        super(attributes)
      end
    end
  end
end

