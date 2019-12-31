require_relative "attributes/class_methods"
require_relative "attributes/instance_methods"
require_relative "attributes/types"

module OnixParser
  module Attributes
    include InstanceMethods

    def self.included(base)
      base.extend(ClassMethods)
    end
  end
end
