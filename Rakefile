# frozen_string_literal: true

require "bundler/gem_tasks"
require "rspec/core/rake_task"
require 'yard'

YARD::Rake::YardocTask.new do |t|
  t.files = Dir["lib/**/*.rb"]
end

RSpec::Core::RakeTask.new(:spec)

task default: :spec

desc "Document the Library"
task doc: [:yard]
