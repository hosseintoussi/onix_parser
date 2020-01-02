require_relative "code"

module OnixParser
  module Elements
    class TitleElement < Base
      attribute :sequence_number, Types::String
      attribute :title_element_level, Code, list: "149"
      attribute :year_of_annual, Types::String
      attribute :title_text, Types::String
      attribute :title_prefix, Types::String
      attribute :no_prefix, Types::String
      attribute :title_without_prefix, Types::String
      attribute :subtitle, Types::String
      attribute :part_number, Types::String
    end
  end
end
