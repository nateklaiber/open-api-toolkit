RSpec.describe(OpenApi::Toolkit::Models::ParameterStyles) do

  subject { described_class.new(model_attributes) }

  context "class methods" do
    it "returns the records object" do
      expect(described_class.records).to be_a(OpenApi::Toolkit::Models::ParameterStyles)
    end

    it "retrieves the 'matrix' style" do
      expect(described_class.retrieve('matrix')).to be_a(OpenApi::Toolkit::Models::ParameterStyle)
    end

    it "retrieves the 'label' style" do
      expect(described_class.retrieve('label')).to be_a(OpenApi::Toolkit::Models::ParameterStyle)
    end

    it "retrieves the 'form' style" do
      expect(described_class.retrieve('form')).to be_a(OpenApi::Toolkit::Models::ParameterStyle)
    end

    it "retrieves the 'simple' style" do
      expect(described_class.retrieve('simple')).to be_a(OpenApi::Toolkit::Models::ParameterStyle)
    end

    it "retrieves the 'space_delimited' style" do
      expect(described_class.retrieve('space_delimited')).to be_a(OpenApi::Toolkit::Models::ParameterStyle)
    end

    it "retrieves the 'pipe_delimited' style" do
      expect(described_class.retrieve('pipe_delimited')).to be_a(OpenApi::Toolkit::Models::ParameterStyle)
    end

    it "retrieves the 'deep_object' style" do
      expect(described_class.retrieve('deep_object')).to be_a(OpenApi::Toolkit::Models::ParameterStyle)
    end

    it "returns nil if none found" do
      expect(described_class.retrieve('__not_founds__')).to be_nil
    end
  end
end
