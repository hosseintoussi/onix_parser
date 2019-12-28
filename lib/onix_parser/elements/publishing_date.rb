module OnixParser
  module Elements
    class PublishingDate < Base
      attribute :publishing_date_role, String
      attribute :date_format, String
      attribute :date, String
    end
  end
end
