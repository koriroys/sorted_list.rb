def run_spec(*additional_options)
  sh 'rspec', '-c', '--format', 'documentation', *additional_options
end

desc 'Run all the specs'
task(:spec) { run_spec }

task(:ff) { run_spec('--fail-fast') }

namespace :spec do
  desc 'Run the specs but stop after the first failure'
  task(:dev) { run_spec '--fail-fast' }
end


task :default => :spec
