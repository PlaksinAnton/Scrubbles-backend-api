Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api/docs'
  mount Rswag::Api::Engine => '/api/docs'
  namespace :api do
    namespace :v1 do
      resources :games, only: [:index]
      get 'show', to: 'games#show'
      post 'new_game', to: 'games#new_game'
      post 'join_game/:game_id', to: 'games#join_game'
      post 'start_game', to: 'games#start_game'
      post 'submit_turn', to: 'games#submit_turn'
      post 'exchange', to: 'games#exchange'
      post 'leave_game', to: 'games#leave_game'
      post 'spelling_check', to: 'games#spelling_check'
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
