module OnixParser
  module Elements
    class SupplierIdentifier < Base
      attribute :supplier_id_type, String
      attribute :id_type_name, String
      attribute :id_value, String
    end
  end
end
