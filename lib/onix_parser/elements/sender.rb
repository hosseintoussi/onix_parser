module OnixParser
  module Elements
    class Sender < Base
      attribute :sender_name, String
      attribute :contact_name, String
      attribute :email_address, String
    end
  end
end
