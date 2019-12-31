module OnixParser
  module Elements
    class Sender < Base
      attribute :sender_name, Types::String
      attribute :contact_name, Types::String
      attribute :email_address, Types::String
    end
  end
end
