module OnixParser
  module Elements
    class TitleElement < Base
      attribute :sequence_number, String
      attribute :title_element_level, String
      attribute :year_of_annual, String
      attribute :title_text, String
      attribute :title_prefix, String
      attribute :no_prefix, String
      attribute :title_without_prefix, String
      attribute :subtitle, String
    end
  end
end
