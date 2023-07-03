RSpec.describe(OpenApi::Toolkit::Models::HttpMethods) do

  subject { described_class.new(model_attributes) }

  context "class methods" do
    it "returns the records object" do
      expect(described_class.records).to be_a(OpenApi::Toolkit::Models::HttpMethods)
    end

    it "retrieves the 'get' method" do
      expect(described_class.retrieve('get')).to be_a(OpenApi::Toolkit::Models::HttpMethod)
    end

    it "retrieves the 'put' method" do
      expect(described_class.retrieve('put')).to be_a(OpenApi::Toolkit::Models::HttpMethod)
    end

    it "retrieves the 'post' method" do
      expect(described_class.retrieve('post')).to be_a(OpenApi::Toolkit::Models::HttpMethod)
    end

    it "retrieves the 'delete' method" do
      expect(described_class.retrieve('delete')).to be_a(OpenApi::Toolkit::Models::HttpMethod)
    end

    it "retrieves the 'options' method" do
      expect(described_class.retrieve('options')).to be_a(OpenApi::Toolkit::Models::HttpMethod)
    end

    it "retrieves the 'head' method" do
      expect(described_class.retrieve('head')).to be_a(OpenApi::Toolkit::Models::HttpMethod)
    end

    it "retrieves the 'patch' method" do
      expect(described_class.retrieve('patch')).to be_a(OpenApi::Toolkit::Models::HttpMethod)
    end

    it "retrieves the 'trace' method" do
      expect(described_class.retrieve('trace')).to be_a(OpenApi::Toolkit::Models::HttpMethod)
    end

    it "returns nil if none found" do
      expect(described_class.retrieve('__not_founds__')).to be_nil
    end
  end
end
