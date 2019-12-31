module OnixParser
  module Elements
    class SupplyDate < Base
      attribute :supply_date_role, Types::String
      attribute :date_format, Types::String
      attribute :date, Types::String
    end
  end
end
