# frozen_string_literal: true

require 'optparse'
require 'ostruct'
require 'time'
require 'couverture/version'

module Couverture
  # Converts the coverage data into the appropriate output format.
  class Converter
    # The options given to the command.
    attr_reader :options
    # The start time of the conversion operation.
    attr_reader :start_time
    # The end time of the conversion operation.
    attr_reader :end_time

    # Initializes a new command.
    def initialize
      @options = OpenStruct.new
      @start_time = nil
      @end_time = nil
    end

    # Starts the conversion process.
    def start
      @start_time = Time.now
      parse
      @end_time = Time.now
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
