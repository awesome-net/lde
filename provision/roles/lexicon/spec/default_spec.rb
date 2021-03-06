require 'spec_helper'

describe 'role lexicon' do
  %w{python-requests python2-boto3 python2-future python-idna}.each do |pkg|
    describe package(pkg) do
      it { should be_installed }
    end
  end
  describe package('dns-lexicon') do
    it { should be_installed.by('pip') }
  end
end
