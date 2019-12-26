module OnixParser
  module Elements
    class Addressee < Base
      attribute :addressee_name, String
      attribute :contact_name, String
      attribute :email_address, String
    end
  end
end

