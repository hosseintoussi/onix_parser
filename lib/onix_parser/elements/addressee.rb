module OnixParser
  module Elements
    class Addressee < Base
      attribute :addressee_name, Types::String
      attribute :contact_name, Types::String
      attribute :email_address, Types::String
    end
  end
end

