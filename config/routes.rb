Pluralize::Application.routes.draw do
  get "pluralize/show" => "pluralize#show"
  post "pluralize" => "pluralize#create"
  root "pluralize#show"
end
