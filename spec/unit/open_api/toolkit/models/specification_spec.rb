RSpec.describe(OpenApi::Toolkit::Models::Specification) do
  let(:model_attributes) do
    {
      :openapi => '3.1.0'
    }
  end

  subject { described_class.new(model_attributes) }

  context "with valid values" do
    it "returns the OpenAPI version" do
      expect(subject.openapi).to eq('3.1.0')
    end
  end
end
