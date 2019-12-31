require_relative "title_element"

module OnixParser
  module Elements
    class TitleDetail < Base
      attribute :title_type, Types::String
      attribute :title_element, Types::Collection, of: TitleElement
      attribute :title_statement, Types::String
    end
  end
end
