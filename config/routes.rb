Tchackathon::Application.routes.draw do
  mount Surveyor::Engine => "/surveys", :as => "surveyor"
  devise_for :users

  root to: 'physician#index'
  get 'medicine' => 'medicine#drug_list', as: 'drug_list'
  get 'show_import' => 'physician#show_import'
  post 'import' => 'medicine#import'
   resources :medicine do
     collection { post :import }
   end
  post 'session/new' => 'medicalsession#new_session', as: 'new_session'
  get 'session/:medical_session/medicine/:id/education' => 'medicine#drug_education'
  post 'indication/:id' => 'indication#choose_indication'
end