class MyPagesController < Simplemvc::Controller
  def about
    render :about, name: "Gahee", last_name: "Booth"
  end
end
