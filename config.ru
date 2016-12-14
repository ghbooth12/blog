require './config/application.rb'

# map "/" do
#   # run -> (env) { [ 200, {}, [ "Index Page" ] ] }
#   # Rack application takes proc obj, lambda obj, method or any object that responds to "call" method.
#   run HomeController.action(:index) # action returns Rack application.
#   # Rack::Handler::WEBrick.run -> (env) { [ 200, { "Content-type" => "text/html" }, [ "Hello" ] ] }
#   # run takes a lambda or proc or method or any object that responds to "call" method.
# end
#
# # Nesting is possible!
# map "/my_pages" do
#   map "/about" do
#     run MyPagesController.action(:about)
#   end
#   map "/tell_me" do
#     run MyPagesController.action(:tell_me)
#   end
# end
#
# run Blog::Application.new # Bloc::Application's parent is Simplemvc::Application
# # Blog Application inherits from Simplemvc Application so that is we can run Blog::Application.

app = Blog::Application.new

app.route do
  match "/", "home#index"

  match "/:controller/:action"
end

run app
