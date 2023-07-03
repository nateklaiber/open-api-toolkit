RSpec.describe(OpenApi::Toolkit::Models::ServerVariable) do
  let(:model_attributes) do
    {
      :name        => 'username',
      :description => 'Username of the user',
      :default     => 'gob',
      :enum        => ['test', 'another']
    }
  end

  subject { described_class.new(model_attributes) }

  context "with valid values" do
    it "returns the name" do
      expect(subject.name).to eq('username')
    end

    it "returns the description" do
      expect(subject.description).to eq('Username of the user')
    end

    it "returns the enum" do
      expected = ['test', 'another']

      expect(subject.enum).to eq(expected)
    end

    it "returns the symbolized name" do
      expect(subject.key_name).to eq(:username)
    end

    it "returns the default value" do
      expect(subject.default).to eq('gob')
    end

    it "returns as a template" do
      expected = { username: 'gob' }

      expect(subject.as_template).to eq(expected)
    end
  end
end
