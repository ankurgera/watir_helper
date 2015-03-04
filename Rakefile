require 'rspec/core/rake_task'

namespace :spec do

	desc "Run a single spec."
	task :single, [:file_name] do |t, args|
	  args.with_defaults(:file_name => "browser_helper_spec.rb") 
	  puts "args is #{args[:file_name].inspect}"	
	  # Your code goes here
	  RSpec::Core::RakeTask.new(:spec) do |t|
       t.pattern = "test/#{args[:file_name]}"
      end
      Rake::Task["spec"].execute
	end

	desc "Run all specs."
	task :all do
	  test_files = FileList['test/*_spec.rb']
	  puts "test_files is #{test_files.inspect}"	
	  # Your code goes here
	  RSpec::Core::RakeTask.new(:spec) do |t|
       t.pattern = 'test/*_spec.rb'
      end
      Rake::Task["spec"].execute
	end

end

task :default => ["spec:all"]