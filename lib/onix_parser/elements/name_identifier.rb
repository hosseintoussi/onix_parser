module OnixParser
  module Elements
    class NameIdentifier < Base
      attribute :name_id_type, String
      attribute :id_type_name, String
      attribute :id_value, String
    end
  end
end
