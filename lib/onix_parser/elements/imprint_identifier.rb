module OnixParser
  module Elements
    class ImprintIdentifier < Base
      attribute :imprint_id_type, String
      attribute :id_type_name, String
      attribute :id_value, String
    end
  end
end
