class ApplicationController < ActionController::Base

def street_to_coords_results
  @user_inputs = params.fetch("user_street_address")
  maps_url = "https://maps.googleapis.com/maps/api/geocode/json?address=Merchandise%20Mart%20Chicago&key=AIzaSyD8RrOFB0dPsF-leqeFJdmX3yOvcQbfNyY"
  file = open(maps_url)
  contents=file.read
  @parsed_contents = JSON.parse(contents)
  render({ :template => "math_templates/street_to_coords_results.html.erb"})
  #@file = open ("https://maps.googleapis.com/maps/api/geocode/json?address=Merchandise%20Mart%20Chicago&key=AIzaSyD8RrOFB0dPsF-leqeFJdmX3yOvcQbfNyY")
#https://maps.googleapis.com/maps/api/geocode/json?address=Merchandise%20Mart%20Chicago&key=AIzaSyD8RrOFB0dPsF-leqeFJdmX3yOvcQbfNyY

end

def addition_results
  #Parameters: {"first_num"=>"2", "second_num"=>"3"}
  @first = params.fetch("first_num").to_f
  @second = params.fetch("second_num").to_f
  @outcome = @first+@second
  render({ :template => "math_templates/add_results.html.erb"})
end
def test
   render({ :template => "math_templates/add_form.html.erb"})
   #render({ :template => "math_templates/add_results.html.erb"})
end
end