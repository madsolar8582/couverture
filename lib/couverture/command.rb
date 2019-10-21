# frozen_string_literal: true

require 'optparse'
require 'ostruct'
require 'couverture/version'

module Couverture
  # Parses the launch arguments and executes the appropriate action.
  class Command
    # The options given to the command.
    attr_reader :options

    # Initializes a new command.
    def initialize
      @options = OpenStruct.new
    end

    # Parses the arguments supplied to the command.
    def parse
      OptionParser.new do |options|
        # rubocop:disable Metrics/LineLength
        options.banner = 'Usage: couverture -i[--input-file] MyFile.(xcresult|json) -o[--output-file] cobertura.xml'
        options.on('-i', '--input-file INPUTFILE', String, 'The file to process') { |option| @options.input_file = option }
        options.on('-o', '--output-file OUTPUTFILE', String, 'The file to write the cobertura data to') { |option| @options.output_file = option }
        options.on('-v', '--version', 'Outputs the current version') { print_version }
        # rubocop:enable Metrics/LineLength
      end.parse!
    end

    # Output the current version.
    def print_version
      puts Couverture::VERSION
    end
  end
end
