module OnixParser
  module Elements
    class PriceConstraintLimit < Base
      attribute :quantity, String
      attribute :price_constraint_unit, String
    end
  end
end
