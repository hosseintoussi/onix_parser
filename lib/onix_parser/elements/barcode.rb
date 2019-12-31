module OnixParser
  module Elements
    class Barcode < Base
      attribute :barcode_type,  Types::String
      attribute :position_on_product,  Types::String
      attribute :extent_unit,  Types::String
    end
  end
end
