require_relative "sender"
require_relative "addressee"
require_relative "code"

module OnixParser
  module Elements
    class Header < Base
      attribute :sender, Sender
      attribute :addressee, Addressee
      attribute :message_number, Types::String
      attribute :message_repeat, Types::String
      attribute :sent_date_time, Types::String
      attribute :message_note, Types::Collection, of: Types::String
      attribute :language_of_text, Types::String
      attribute :default_price_type, Types::String
      attribute :default_currency_code, Code, list: "96"
    end
  end
end
