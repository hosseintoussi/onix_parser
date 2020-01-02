require_relative "code"

module OnixParser
  module Elements
    class PriceDate < Base
      attribute :price_date_role, Code, list: "173"
      attribute :date_format, Code, list: "55"
      attribute :date, Types::String
    end
  end
end
