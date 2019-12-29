module OnixParser
  module Elements
    class BatchBonus < Base
      attribute :batch_quantity, String
      attribute :free_quantity, String
    end
  end
end
