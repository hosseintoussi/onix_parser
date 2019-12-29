module OnixParser
  module Elements
    class SupplyDate < Base
      attribute :supply_date_role, String
      attribute :date_format, String
      attribute :date, String
    end
  end
end
