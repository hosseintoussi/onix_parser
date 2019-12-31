module OnixParser
  module Elements
    class PriceConstraintLimit < Base
      attribute :quantity, Types::String
      attribute :price_constraint_unit, Types::String
    end
  end
end
