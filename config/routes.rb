Tchackathon::Application.routes.draw do
  devise_for :users

  root to: 'physician#index'
  get 'show_import' => 'physician#show_import'
  post 'import' => 'medicine#import'
   resources :medicine do
     collection { post :import }
     #post 'choose_indication' => 'medicine#choose_indication'
   end
end