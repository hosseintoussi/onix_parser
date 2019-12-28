module OnixParser
  module Elements
    class SalesOutletIdentifier < Base
      attribute :sales_outlet_id_type, String
      attribute :id_type_name, String
      attribute :id_value, String
    end
  end
end
