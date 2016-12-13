require './config/application.rb'

run Blog::Application.new # Bloc::Application's parent is Simplemvc::Application
# Blog Application inherits from Simplemvc Application so that is we can run Blog::Application.
