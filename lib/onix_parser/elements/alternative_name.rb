require_relative "name_identifier"

module OnixParser
  module Elements
    class AlternativeName < Base
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
    end
  end
end
