RSpec.describe Textile2md do
  it "has a version number" do
    expect(Textile2md::VERSION).not_to be nil
  end


  describe '.convert' do
    subject { Textile2md.convert(textile) }

    let(:textile) do
      <<~TEXT
        h1. header1
        
        * list
        * list
        * list
        
        h2. header2
      TEXT
    end

    it "converts textile to markdown" do
      is_expected.to include '# header1'
      is_expected.to include '# header2'
      is_expected.to include '- list'
    end
  end
end
