module OnixParser
  module Elements
    class PublishingDate < Base
      attribute :publishing_date_role, Types::String
      attribute :date_format, Types::String
      attribute :date, Types::String
    end
  end
end
