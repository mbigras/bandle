require 'bundler/gem_tasks'

unless ENV['BANDLE_ENV'] =~ /production/i
  require 'rake/testtask'
  require 'cucumber/rake/task'

  Rake::TestTask.new(:test) do |t|
    t.libs << 'test'
    t.libs << 'lib'
    t.test_files = FileList['test/**/*_test.rb']
  end

  Cucumber::Rake::Task.new :features do |t|
    t.cucumber_opts = %w{--format progress}
  end

  task :default => [:test, :features]
end