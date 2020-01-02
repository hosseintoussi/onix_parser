require_relative "code"

module OnixParser
  module Elements
    class Barcode < Base
      attribute :barcode_type, Code, list: "141"
      attribute :position_on_product, Code, list: "142"
    end
  end
end
