abort('Please run this using `bundle exec rake`') unless ENV["BUNDLE_BIN_PATH"]
require 'html-proofer'

desc "Test the website"
task :test do
  options = {
    :assume_extension => true,
    :check_html => true,
    :check_opengraph => true,
    :empty_alt_ignore => true,
    :cache => {
      :timeframe => '1w'
    },
    :file_ignore => [
        /blog/
    ]
  }
  HTMLProofer.check_directory("./_site", options).run
end

task :default => [:test]
