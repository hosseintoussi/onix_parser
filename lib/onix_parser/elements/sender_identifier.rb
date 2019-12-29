module OnixParser
  module Elements
    class SenderIdentifier < Base
      attribute :sender_id_type, String
      attribute :id_type_name, String
      attribute :id_value, String
    end
  end
end
