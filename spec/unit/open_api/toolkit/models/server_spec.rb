RSpec.describe(OpenApi::Toolkit::Models::Server) do
  let(:model_attributes) do
    {
      :description => 'Production',
      :url         => 'https://apiservice.com'
    }
  end

  subject { described_class.new(model_attributes) }

  context "with valid values" do
    it "returns the description" do
      expect(subject.description).to eq('Production')
    end

    it "returns the url value" do
      expected = 'https://apiservice.com'

      expect(subject.url_value).to eq(expected)
    end

    it "returns the url URI Template object" do
      expect(subject.url).to be_kind_of(URITemplate)
    end

    it "returns the variables attributes" do
      expected = []

      expect(subject.variables_attributes).to eq(expected)
    end

    it "returns the server variables object" do
      expect(subject.variables).to be_a(OpenApi::Toolkit::Models::ServerVariables)
    end
  end

  context "with URI Template" do
    before(:each) do
      model_attributes[:url] = 'https://{username}.gigantic-server.com:{port}/{basePath}'
      model_attributes[:variables] = [
        {
          :name    => 'username',
          :default => 'gob'
        },
        {
          :name    => 'port',
          :default => '5334'
        },
        {
          :name    => 'basePath',
          :default => 'development'
        }
      ]
    end

    it "returns the url value" do
      expected = 'https://{username}.gigantic-server.com:{port}/{basePath}'

      expect(subject.url_value).to eq(expected)
    end

    it "returns the url URI Template object" do
      expect(subject.url).to be_kind_of(URITemplate)
    end

    it "returns the expanded url" do
      expected = 'https://gob.gigantic-server.com:5334/development'

      expect(subject.url_expanded).to eq(expected)
    end
  end
end
