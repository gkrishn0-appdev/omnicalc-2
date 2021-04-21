Rails.application.routes.draw do
  get("/wizard_add", {:controller => "application", :action=> "addition_results"})
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
