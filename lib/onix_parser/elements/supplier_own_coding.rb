module OnixParser
  module Elements
    class SupplierOwnCoding < Base
      attribute :supplier_code_type, Types::String
      attribute :supplier_code_type_name, Types::String
    end
  end
end
