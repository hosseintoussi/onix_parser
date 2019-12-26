module OnixParser
  module Elements
    class ContributorDate < Base
      attribute :contributor_date_role, String
      attribute :date_format, String
      attribute :date, String
    end
  end
end
