# frozen_string_literal: true

require 'couverture/command'

RSpec.describe Couverture::Command do
  let(:command) { described_class.new }

  describe '#parse' do
    context 'when it encounters the version short flag' do
      it 'outputs the version to STDOUT' do
        stub_const('ARGV', %w[-v])
        expect { command.parse }.to output("#{Couverture::VERSION}\n").to_stdout
      end
    end

    context 'when it encounters the version switch' do
      it 'outputs the version to STDOUT' do
        stub_const('ARGV', %w[--version])
        expect { command.parse }.to output("#{Couverture::VERSION}\n").to_stdout
      end
    end
  end
end
