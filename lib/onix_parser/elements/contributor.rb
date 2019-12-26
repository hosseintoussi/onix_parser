module OnixParser
  module Elements
    class Contributor < Base
      attribute :sequence_number, String
      attribute :contributor_role, Types::Collection, of: String
      attribute :from_language, Types::Collection, of: String
      attribute :to_language, Types::Collection, of: String
      attribute :name_type, String
      attribute :name_identifier, NameIdentifier
      attribute :person_name, String
      attribute :person_name_inverted, String
      attribute :titles_before_names, String
      attribute :names_before_key, String
      attribute :prefix_to_key, String
      attribute :key_names, String
      attribute :names_after_key, String
      attribute :suffix_to_key, String
      attribute :letters_after_names, String
      attribute :titles_after_names, String
      attribute :gender, String
      attribute :corporate_name, String
      attribute :corporate_name_inverted, String
      attribute :unnamed_persons, String
      attribute :alternative_name, Types::Collection, of: AlternativeName
      attribute :contributor_date, Types::Collection, of: ContributorDate
      attribute :contributor_description, Types::Collection, of: String
      attribute :biographical_note, Types::Collection, of: String
    end
  end
end
