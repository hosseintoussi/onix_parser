module OnixParser
  module Elements
    class CopyrightOwnerIdentifier < Base
      attribute :copyright_owner_id_type, String
      attribute :id_type_name, String
      attribute :id_value, String
    end
  end
end
