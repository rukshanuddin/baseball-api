Rails.application.routes.draw do
  scope :api do
    resources :players
    get 'player_rankings' => 'players#ranked'
    resources :teams
    get 'team_rankings' => 'teams#ranked'
    resources :games
  end
end
