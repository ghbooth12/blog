class MyPagesController < Simplemvc::Controller
  def about
    render :about, name: "Gahee", last_name: "Booth"
  end

  def tell_me
    render :tell_me, name: params["name"]
  end
end
