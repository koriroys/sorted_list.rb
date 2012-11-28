
desc 'Run all the specs'
task :spec do
  sh 'rspec', '-c', '--format', 'documentation'
end


namespace :spec do
  task :fail_fast do
    ENV['RSPEC_OPTIONS'] = '--fail-fast'
  end

  desc 'Run the specs but stop after the first failure'
  task :dev => [:fail_fast, :spec]
end


task :default => :spec
