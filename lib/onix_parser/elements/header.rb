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
      attribute :message_number, String
      attribute :message_repeat, String
      attribute :sent_date_time, String
      attribute :message_note, String
      attribute :language_of_text, String
      attribute :default_price_type, String
      attribute :default_currency_code, String
    end
  end
end
