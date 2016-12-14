class MyPagesController < Simplemvc::Controller
  # attr_reader :name  # I think I don't need this.

  def about
    render :about, name: "Gahee", last_name: "Booth"  # This is response.
  end

  def tell_me
    # puts "Before render"
    # render :tell_me, name: params["name"]
    # puts "After render" # <-- Error occurs!
    # Because render() line has to be last line so controller responds properly.
    # So Simplemvc created Rack::Response.new() in Controller class.
    # get_response in simplemvc.rb will return response properly, even if "render" isn't the last line.

    @name = "Apple Pear"
  end
end
