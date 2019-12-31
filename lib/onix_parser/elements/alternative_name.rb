require_relative "name_identifier"

module OnixParser
  module Elements
    class AlternativeName < Base
      attribute :name_type, Types::String
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
      attribute :gender, Types::String
      attribute :corporate_name, Types::String
      attribute :corporate_name_inverted, Types::String
    end
  end
end
