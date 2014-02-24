require 'bundler/gem_tasks'
require 'rake/testtask'

desc 'Generate gem documentation'
task :doc do
  system 'rm -rf doc/'
  system 'rdoc --exclude=/test/'
end

namespace :minitest do
  Rake::TestTask.new(:all) do |t|
    t.libs << 'test'
    t.test_files = FileList['test/*_test.rb']
  end
end

task :default => 'minitest:all'
