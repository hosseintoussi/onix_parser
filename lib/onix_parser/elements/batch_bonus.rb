module OnixParser
  module Elements
    class BatchBonus < Base
      attribute :batch_quantity, Types::String
      attribute :free_quantity, Types::String
    end
  end
end
