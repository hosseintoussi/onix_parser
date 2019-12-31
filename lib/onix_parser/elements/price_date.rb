module OnixParser
  module Elements
    class PriceDate < Base
      attribute :price_date_role, Types::String
      attribute :date_format, Types::String
      attribute :date, Types::String
    end
  end
end
