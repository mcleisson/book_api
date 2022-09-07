Rails.application.routes.draw do
 
  resources :book,:author, :genre, :publishing_company
  
end
