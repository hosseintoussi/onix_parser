require_relative "name_identifier"
require_relative "alternative_name"
require_relative "contributor_date"
require_relative "code"

module OnixParser
  module Elements
    class Contributor < Base
      attribute :sequence_number, Types::String
      attribute :contributor_role, Types::Collection, of: Code, list: "17"
      attribute :from_language, Types::Collection, of: Code, list: "74"
      attribute :to_language, Types::Collection, of: Code, list: "74"
      attribute :name_type, Code, list: "18"
      attribute :name_identifier, NameIdentifier
      attribute :person_name, Types::String
      attribute :person_name_inverted, Types::String
      attribute :titles_before_names, Types::String
      attribute :names_before_key, Types::String
      attribute :prefix_to_key, Types::String
      attribute :key_names, Types::String
      attribute :names_after_key, Types::String
      attribute :suffix_to_key, Types::String
      attribute :letters_after_names, Types::String
      attribute :titles_after_names, Types::String
      attribute :gender, Code, list: "229"
      attribute :corporate_name, Types::String
      attribute :corporate_name_inverted, Types::String
      attribute :unnamed_persons, Code, list: "19"
      attribute :alternative_name, Types::Collection, of: AlternativeName
      attribute :contributor_date, Types::Collection, of: ContributorDate
      attribute :contributor_description, Types::Collection, of: Types::String
      attribute :biographical_note, Types::Collection, of: Types::String
    end
  end
end
