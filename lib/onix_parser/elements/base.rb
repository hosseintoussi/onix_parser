module OnixParser
  module Elements
    class Base < Dry::Struct
      module Types
        include Dry.Types()
      end

      MAPPINGS = { a001: "RecordReference", b221: "ProductIDType", b244: "IDValue" }

      def self.attribute(name, type = nil, &block)
        super
      end
    end
  end
end

