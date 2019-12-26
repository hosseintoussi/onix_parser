module OnixParser
  module Elements
    class AddresseeIdentifier < Base
      attribute :addressee_id_type, String
      attribute :id_type_name, String
      attribute :id_value, String
    end
  end
end

