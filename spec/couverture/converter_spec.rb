# frozen_string_literal: true

require 'couverture/converter'

RSpec.describe Couverture::Converter do
  let(:converter) { described_class.new }

  describe '#parse' do
    context 'when it encounters the version short flag' do
      it 'outputs the version to STDOUT' do
        stub_const('ARGV', %w[-v])
        expect { converter.parse }.to output("#{Couverture::VERSION}\n").to_stdout.and raise_error(SystemExit)
      end
    end

    context 'when it encounters the version switch' do
      it 'outputs the version to STDOUT' do
        stub_const('ARGV', %w[--version])
        expect { converter.parse }.to output("#{Couverture::VERSION}\n").to_stdout.and raise_error(SystemExit)
      end
    end
  end
end
