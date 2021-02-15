Rails.application.routes.draw do
  root to: 'application#root'
  get 'api' => 'application#root'
  scope :api do
    match 'players/rankings' => 'player_stats#ranked', via: :get
    # post 'players/:id/images' => 'players/upload_images'
    # match 'players/:id/images' => 'players/images', via: :get
    # match 'players/:id/videos' => 'players/upload_videos', via: :post
    # match 'players/:id/videos' => 'players/videos', via: :get
    resources :players
    resources :player_stats
    match 'teams/by_wins' => 'teams#wins', via: :get
    match 'teams/rankings' => 'team_stats#ranked', via: :get
    resources :teams
    resources :team_stats
    resources :games
  end
end
