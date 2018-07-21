require 'spec_helper'

RSpec.describe do
  context 'when read from web file' do
    subject { `exe/textile2md https://raw.githubusercontent.com/YumaInaura/textile2md/master/spec/fixtures/textile.txt` }
    it { is_expected.to include '# HEADER LEVEL 1' }
  end

  context 'when read from local file' do
    subject { `exe/textile2md spec/fixtures/textile.txt` }
    it { is_expected.to include '# HEADER LEVEL 1' }
  end
end
