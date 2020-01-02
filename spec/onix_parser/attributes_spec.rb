RSpec.describe OnixParser::Attributes do
  class User
    include OnixParser::Attributes

    attribute :name, OnixParser::Attributes::Types::String
    attribute :numbers,
      OnixParser::Attributes::Types::Collection,
      of: OnixParser::Attributes::Types::String
  end

  class App
    include OnixParser::Attributes

    attribute :name, OnixParser::Attributes::Types::String
    attribute :user, User
  end

  class WithDefault
    include OnixParser::Attributes

    attribute :name, OnixParser::Attributes::Types::String, default: "default"
  end

  describe "initializing an object" do
    it "adds setters and getters of the attributes" do
      user = User.new
      user.name = :test
      user.numbers = [1, 2, 3]

      expect(user.name).to eq("test")
      expect(user.numbers).to eq(["1", "2", "3"])
    end
  end

  describe "initializing with a hash" do
    it "adds setters and getters of the attributes" do
      user = User.new(name: "test", numbers: [1, 2, 3])

      expect(user.name).to eq("test")
      expect(user.numbers).to eq(["1", "2", "3"])
    end

    it "ignores the undefined attributes" do
      user = User.new(name: "test", undefined: "undefined")

      expect(user.attributes).to eq({ name: "test", numbers: [] })
    end
  end

  describe "#attributes" do
    it "returns a hash of attribues" do
      user = User.new(name: "test", numbers: [1, 2, 3])

      expect(user.attributes).to eq({ name: "test", numbers: ["1", "2", "3"] })
    end
  end

  describe "#attributes=" do
    it "mass assings attributes from a hash" do
      hash = { name: "test", numbers: [1, 2, 3] }
      user = User.new(hash)

      expect(user.attributes).to eq({ name: "test", numbers: ["1", "2", "3"] })
    end

    it "ignores the undefined attributes" do
      hash = { name: "test", undefined: "undefined" }
      user = User.new(hash)

      expect(user.attributes).to eq({ name: "test", numbers: [] })
    end
  end

  describe "default values for attributes" do
    it "initializes the attribute with the default value" do
      default = WithDefault.new

      expect(default.name).to eq("default")
    end
  end

  describe "nested attributes" do
    it "correctly uses the defined class for the type and sets attributes" do
      app = App.new(name: "test", user: { name: "tester" })

      expect(app.name).to eq("test")
      expect(app.user.name).to eq("tester")
    end
  end

  describe "#inspect" do
    it "returns just the attributes" do
      user = WithDefault.new

      expect(user.inspect).to eq('#<WithDefault name="default">')
    end
  end
end
