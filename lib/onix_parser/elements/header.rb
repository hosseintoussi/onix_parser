require_relative "sender"
require_relative "sender_identifier"
require_relative "addressee"
require_relative "addressee_identifier"

module OnixParser
  module Elements
    class Header < Base
      attribute :sender, Sender
      attribute :sender_identifier, SenderIdentifier
      attribute :addressee, Addressee
      attribute :addressee_identifier, AddresseeIdentifier
      attribute :message_number, Types::String
      attribute :message_repeat, Types::String
      attribute :sent_date_time, Types::String
      attribute :message_note, Types::String
      attribute :language_of_text, Types::String
      attribute :default_price_type, Types::String
      attribute :default_currency_code, Types::String
    end
  end
end
