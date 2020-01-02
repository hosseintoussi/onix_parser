require_relative "code"

module OnixParser
  module Elements
    class SupplierOwnCoding < Base
      attribute :supplier_code_type, Code, list: "165"
      attribute :supplier_code_type_name, Types::String
    end
  end
end
