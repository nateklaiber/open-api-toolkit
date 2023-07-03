RSpec.describe(OpenApi::Toolkit::Models::Specification) do
  let(:model_attributes) do
    {
      :openapi => '3.1.0',
    }
  end

  subject { described_class.new(model_attributes) }

  context "with valid values" do
    it "returns the OpenAPI version" do
      expect(subject.openapi).to eq('3.1.0')
    end

    it "returns the info attributes" do
      expected = {}

      expect(subject.info_attributes).to eq(expected)
    end

    it "returns an instance of the information model" do
      expect(subject.information).to be_a(OpenApi::Toolkit::Models::Information)
    end

    it "returns the servers attributes" do
      expected = []

      expect(subject.servers_attributes).to eq(expected)
    end

    it "returns the paths attributes" do
      expected = []

      expect(subject.paths_attributes).to eq(expected)
    end

    it "returns the tags attributes" do
      expected = []

      expect(subject.tags_attributes).to eq(expected)
    end
  end
end
