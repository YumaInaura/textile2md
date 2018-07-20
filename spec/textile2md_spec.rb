require 'spec_helper'

RSpec.describe Textile2md do
  it "has a version number" do
    expect(Textile2md::VERSION).not_to be nil
  end


  describe '.convert' do
    subject { Textile2md.convert(textile) }

    let(:textile) { File.read('spec/fixtures/textile.txt') }

    it "converts textile to markdown" do
      is_expected.to include '# HEADER LEVEL 1'
      is_expected.to include '## HEADER LEVEL 2'
      is_expected.to include '- list'
      is_expected.to include '1. number list'
      is_expected.to include '2. number list'
      is_expected.to include '3. number list'
    end
  end
end
