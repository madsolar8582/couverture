# frozen_string_literal: true

require 'rake'
require 'rdoc/task'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'

task default: %w[ci]

RDoc::Task.new do |rdoc|
  rdoc.main = 'README.md'
  rdoc.rdoc_files.include('README.md', 'lib/**/*.rb')
  rdoc.rdoc_dir = 'rdoc'
end

RSpec::Core::RakeTask.new(:spec)
RuboCop::RakeTask.new

desc 'Run Rubocop and RSpec'
task :ci do
  Rake::Task['rubocop'].reenable
  Rake::Task['rubocop'].invoke
  Rake::Task['spec'].reenable
  Rake::Task['spec'].invoke
end
