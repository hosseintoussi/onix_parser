module OnixParser
  module Elements
    class Measure < Base
      attribute :measure_type, String
      attribute :measurement, String
      attribute :measure_unit_code, String
    end
  end
end
