RSpec.describe(OpenApi::Toolkit::Models::Contact) do
  let(:model_attributes) do
    {
      :name  => 'API Service Team',
      :email => 'team@apiservice.com',
      :url   => 'https://apiservice.com/team',
    }
  end

  subject { described_class.new(model_attributes) }

  context "with valid values" do
    it "returns the name" do
      expect(subject.name).to eq('API Service Team')
    end

    it "returns the url value" do
      expected = 'https://apiservice.com/team'

      expect(subject.url_value).to eq(expected)
    end

    it "returns the url URI object" do
      expect(subject.url).to be_kind_of(URI)
    end

    it "returns the email address" do
      expected = 'team@apiservice.com'

      expect(subject.email).to eq(expected)
    end
  end
end
