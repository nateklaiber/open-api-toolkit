RSpec.describe(OpenApi::Toolkit::Models::Parameter) do
  let(:model_attributes) do
    {
      :name                  => 'search',
      :parameter_location_id => 'query',
      :parameter_style_id    => 'form',
      :description           => 'search term',
      :is_required           => false,
    }
  end

  subject { described_class.new(model_attributes) }

  context "with valid values" do
    it "returns the name" do
      expect(subject.name).to eq('search')
    end

    it "returns the parameter location id" do
      expect(subject.parameter_location_id).to eq('query')
    end

    it "returns the parameter location object instance" do
      expect(subject.parameter_location).to be_a(OpenApi::Toolkit::Models::ParameterLocation)
    end

    it "returns the paramter style id" do
      expect(subject.parameter_style_id).to eq('form')
    end

    it "returns the parameter style object instance" do
      expect(subject.parameter_style).to be_a(OpenApi::Toolkit::Models::ParameterStyle)
    end

    it "returns the description" do
      expect(subject.description).to eq('search term')
    end

    it "returns false for is required" do
      expect(subject.required?).to be(false)
    end

    it "returns the schema attributes" do
      expected = {}

      expect(subject.schema_attributes).to eq(expected)
    end
  end
end
