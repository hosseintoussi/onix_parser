module OnixParser
  module Elements
    class SupplyContactIdentifier < Base
      attribute :supply_contact_id_type, String
      attribute :id_type_name, String
      attribute :id_value, String
    end
  end
end
