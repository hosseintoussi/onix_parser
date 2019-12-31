module OnixParser
  module Elements
    class CopyrightOwnerIdentifier < Base
      attribute :copyright_owner_id_type, Types::String
      attribute :id_type_name, Types::String
      attribute :id_value, Types::String
    end
  end
end
