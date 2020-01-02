require_relative "identifier"

module OnixParser
  module Elements
    class AgentIdentifier < Identifier
      attributes_for "agent", list: "92"
    end
  end
end
