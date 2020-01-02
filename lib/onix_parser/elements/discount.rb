require_relative "code"

module OnixParser
  module Elements
    class Discount < Base
      attribute :discount_type, Code, list: "170"
      attribute :quantity, Types::String
      attribute :to_quantity, Types::String
      attribute :discount_percent, Types::String
      attribute :discount_amount, Types::String
    end
  end
end
