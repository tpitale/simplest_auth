require "bundler/gem_tasks"
require 'rake/testtask'

begin
  require 'rcov/rcovtask'

  desc "Generate RCov coverage report"
  Rcov::RcovTask.new(:rcov) do |t|
    t.test_files = FileList['test/**/*_test.rb']
    t.rcov_opts << "-x lib/simplest_auth.rb -x lib/simplest_auth/version.rb"
  end
rescue LoadError
  nil
end

task :default => 'test'
