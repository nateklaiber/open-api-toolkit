RSpec.describe(OpenApi::Toolkit::Models::Path) do
  let(:model_attributes) do
    {
      :path        => '/resource-name',
      :summary     => 'Main Resource',
      :description => 'Working with the main resource'
    }
  end

  subject { described_class.new(model_attributes) }

  context "with valid values" do
    it "returns the path value" do
      expect(subject.path_value).to eq('/resource-name')
    end

    it "returns the http methods attributes" do
      expected = []

      expect(subject.http_methods_attributes).to eq(expected)
    end

    context "with URI template path" do
      before(:each) do
        model_attributes[:path] = "/{username}/{version}/resource-name"
      end

      it "returns the path value" do
        expect(subject.path_value).to eq('/{username}/{version}/resource-name')
      end

      it "returns the path with expansions" do
        variables = { username: 'gob', version: '1.2.3' }

        expect(subject.path.expand(variables)).to eq('/gob/1.2.3/resource-name')
      end
    end
  end
end
