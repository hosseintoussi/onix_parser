require_relative "code"

module OnixParser
  module Elements
    class ContributorDate < Base
      attribute :contributor_date_role, Code, list: "177"
      attribute :date_format, Code, list: "55"
      attribute :date, Types::String
    end
  end
end
