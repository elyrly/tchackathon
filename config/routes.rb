Tchackathon::Application.routes.draw do
  devise_for :users

  root to: 'physician#index'
  get 'show_import' => 'physician#show_import'

end
