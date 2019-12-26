module OnixParser
  module Elements
    class Subject < Base
      attribute :main_subject, String
      attribute :subject_scheme_identifier, String
      attribute :subject_scheme_version, String
      attribute :subject_code, String
      attribute :subject_heading_text, Types::Collection, of: String
    end
  end
end
