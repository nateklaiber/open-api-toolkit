RSpec.describe(OpenApi::Toolkit::Models::Information) do
  let(:model_attributes) do
    {
      :title            => 'API Service',
      :version          => '1',
      :description      => 'Connecting and integrating with the API Service',
      :terms_of_service => 'https://apiservice.com/legal/terms-of-service',
    }
  end

  subject { described_class.new(model_attributes) }

  context "with valid values" do
    it "returns the title" do
      expect(subject.title).to eq('API Service')
    end

    it "returns the version" do
      expect(subject.version).to eq('1')
    end

    it "returns the description" do
      expected = 'Connecting and integrating with the API Service'
      expect(subject.description).to eq(expected)
    end

    it "returns the terms of service value" do
      expected = 'https://apiservice.com/legal/terms-of-service'
      expect(subject.terms_of_service_value).to eq(expected)
    end

    it "returns the terms of service URI" do
      expect(subject.terms_of_service).to be_kind_of(URI)
    end

    it "returns the contact attributes" do
      expected = {}

      expect(subject.contact_attributes).to eq(expected)
    end

    it "returns an instance of the contact object" do
      expect(subject.contact).to be_a(OpenApi::Toolkit::Models::Contact)
    end

    it "returns the license attributes" do
      expected = {}

      expect(subject.license_attributes).to eq(expected)
    end

    it "returns an instance of the license object" do
      expect(subject.license).to be_a(OpenApi::Toolkit::Models::License)
    end
  end
end
