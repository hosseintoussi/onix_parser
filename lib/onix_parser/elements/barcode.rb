module OnixParser
  module Elements
    class Barcode < Base
      attribute :barcode_type, String
      attribute :position_on_product, String
      attribute :extent_unit, String
    end
  end
end
