RSpec.describe(OpenApi::Toolkit::Models::ParameterLocations) do

  subject { described_class.new(model_attributes) }

  context "class methods" do
    it "returns the records object" do
      expect(described_class.records).to be_a(OpenApi::Toolkit::Models::ParameterLocations)
    end

    it "retrieves the 'path' method" do
      expect(described_class.retrieve('path')).to be_a(OpenApi::Toolkit::Models::ParameterLocation)
    end

    it "retrieves the 'query' method" do
      expect(described_class.retrieve('query')).to be_a(OpenApi::Toolkit::Models::ParameterLocation)
    end

    it "retrieves the 'header' method" do
      expect(described_class.retrieve('header')).to be_a(OpenApi::Toolkit::Models::ParameterLocation)
    end

    it "retrieves the 'cookie' method" do
      expect(described_class.retrieve('cookie')).to be_a(OpenApi::Toolkit::Models::ParameterLocation)
    end


    it "returns nil if none found" do
      expect(described_class.retrieve('__not_founds__')).to be_nil
    end
  end
end
