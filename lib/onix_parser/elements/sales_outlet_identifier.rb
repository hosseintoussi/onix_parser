module OnixParser
  module Elements
    class SalesOutletIdentifier < Base
      attribute :sales_outlet_id_type, Types::String
      attribute :id_type_name, Types::String
      attribute :id_value, Types::String
    end
  end
end
