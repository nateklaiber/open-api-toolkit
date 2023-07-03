RSpec.describe(OpenApi::Toolkit::Models::ParameterStyle) do
  let(:model_attributes) do
    {
      :name                    => 'form',
      :parameter_locations_ids => ['query', 'cookie']
    }
  end

  subject { described_class.new(model_attributes) }

  context "with valid values" do
    it "returns the name" do
      expect(subject.name).to eq('form')
    end

    it "returns the parameter locations ids" do
      expected = ['query', 'cookie']

      expect(subject.parameter_locations_ids).to eq(expected)
    end

    it "returns the parameter locations" do
      expect(subject.parameter_locations).to be_a(OpenApi::Toolkit::Models::ParameterLocations)
    end

    it "retursn 2 parameter locations" do
      expect(subject.parameter_locations.count).to eq(2)
    end
  end
end
