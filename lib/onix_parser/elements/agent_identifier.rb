module OnixParser
  module Elements
    class AgentIdentifier < Base
      attribute :agent_id_type, Types::String
      attribute :id_type_name, Types::String
      attribute :id_value, Types::String
    end
  end
end
