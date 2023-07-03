RSpec.describe(OpenApi::Toolkit::Models::License) do
  let(:model_attributes) do
    {
      :name  => 'Apache 2.0',
      :url   => 'https://www.apache.org/licenses/LICENSE-2.0.html'
    }
  end

  subject { described_class.new(model_attributes) }

  context "with valid values" do
    it "returns the name" do
      expect(subject.name).to eq('Apache 2.0')
    end

    it "returns the url value" do
      expected = 'https://www.apache.org/licenses/LICENSE-2.0.html'

      expect(subject.url_value).to eq(expected)
    end

    it "returns the url URI object" do
      expect(subject.url).to be_kind_of(URI)
    end
  end
end
