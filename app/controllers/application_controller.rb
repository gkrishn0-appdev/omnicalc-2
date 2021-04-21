class ApplicationController < ActionController::Base
def add_form
   render({:template => "math_templates/add_form.html.erb"})
end

  def addition_results
  #Parameters: {"first_num"=>"2", "second_num"=>"3"}
  @first = params.fetch("first_num").to_f
  @second = params.fetch("second_num").to_f
  @outcome = @first+@second
  render({:template => "math_templates/add_results.html.erb"})
end
end