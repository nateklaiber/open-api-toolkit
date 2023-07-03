RSpec.describe(OpenApi::Toolkit::Models::HttpOperation) do
  let(:model_attributes) do
    {
      :http_method_id => 'get',
      :operation_id   => 'getResource',
      :summary        => 'Summary for resource',
      :description    => 'Description for resource',
      :is_deprecated  => false,
      :tags           => ['resource', 'gob']
    }
  end

  subject { described_class.new(model_attributes) }

  context "with valid values" do
    it "returns the http method id" do
      expect(subject.http_method_id).to eq('get')
    end

    it "returns the http method" do
      expect(subject.http_method).to be_a(OpenApi::Toolkit::Models::HttpMethod)
    end

    it "returns the operation id" do
      expect(subject.operation_id).to eq('getResource')
    end

    it "returns the summary" do
      expect(subject.summary).to eq('Summary for resource')
    end

    it "returns the description" do
      expect(subject.description).to eq('Description for resource')
    end

    it "returns false for deprecated" do
      expect(subject.deprecated?).to be(false)
    end

    it "returns the external documentation attributes" do
      expected = {}

      expect(subject.external_documentation_attributes).to eq(expected)
    end

    it "returns the parameters attributes" do
      expected = []

      expect(subject.parameters_attributes).to eq(expected)
    end

    it "returns the servers attributes" do
      expected = []

      expect(subject.servers_attributes).to eq(expected)
    end

    it "returns the response attributes" do
      expected = []

      expect(subject.responses_attributes).to eq(expected)
    end

    it "returns the request body attributes" do
      expected = {}

      expect(subject.request_body_attributes).to eq(expected)
    end

    it "returns the tags values" do
      expected = ['resource', 'gob']

      expect(subject.tags_values).to eq(expected)
    end
  end
end
