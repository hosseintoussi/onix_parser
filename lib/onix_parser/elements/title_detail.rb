module OnixParser
  module Elements
    class TitleDetail < Base
      attribute :title_type, String
      attribute :title_element, Types::Collection, of: TitleElement
      attribute :title_statement, String
    end
  end
end
