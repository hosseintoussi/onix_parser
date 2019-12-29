module OnixParser
  module Elements
    class PriceDate < Base
      attribute :price_date_role, String
      attribute :date_format, String
      attribute :date, String
    end
  end
end
