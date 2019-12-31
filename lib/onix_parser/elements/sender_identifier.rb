module OnixParser
  module Elements
    class SenderIdentifier < Base
      attribute :sender_id_type, Types::String
      attribute :id_type_name, Types::String
      attribute :id_value, Types::String
    end
  end
end
