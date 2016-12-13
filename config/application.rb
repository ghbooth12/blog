require 'simplemvc'

$LOAD_PATH << File.join(File.dirname(__FILE__), "..", "app", "controllers")

# No need to require controllers here.
# Because we'll use const_missing method to automatically require files with needed classes.
# require 'my_pages_controller'

module Blog
  class Application < Simplemvc::Application # Blog Application inherits from Simplemvc Application so that is we can run Blog::Application.
  end
end
