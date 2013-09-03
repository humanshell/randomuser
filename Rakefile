require 'bundler/gem_tasks'
require 'rake/testtask'

desc 'Generate gem documentation'
task :doc do
  system 'rm -rf doc/'
  system 'rdoc --exclude=/spec/'
end

namespace :minitest do
  Rake::TestTask.new(:all) do |t|
    t.libs << 'spec'
    t.test_files = FileList['spec/*_spec.rb']
  end
end

task :default => 'minitest:all'

