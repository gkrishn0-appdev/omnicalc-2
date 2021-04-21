class ApplicationController < ActionController::Base
def addition_results
  render({:template => "math_templates/add_results.html.erb"})
end
end