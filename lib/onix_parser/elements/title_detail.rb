require_relative "title_element"
require_relative "code"

module OnixParser
  module Elements
    class TitleDetail < Base
      attribute :title_type, Code, list: "15"
      attribute :title_element, Types::Collection, of: TitleElement
      attribute :title_statement, Types::String
    end
  end
end
