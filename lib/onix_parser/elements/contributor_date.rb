module OnixParser
  module Elements
    class ContributorDate < Base
      attribute :contributor_date_role, Types::String
      attribute :date_format, Types::String
      attribute :date, Types::String
    end
  end
end
