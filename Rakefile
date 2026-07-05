desc "Build the gem for the current platform"
task :build do
  system "gem build tim.gemspec"
end

desc "Install the gem locally"
task install: :build do
  gem_file = Dir.glob("tim-*.gem").max_by { |f| File.mtime(f) }
  system "gem install #{gem_file}" if gem_file
end
