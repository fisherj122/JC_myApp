Rails.application.routes.draw do

  # get '/path' => 'controller#action'
  get '/game' => 'game#index'
  get '/game/new_game' => 'game#reset'
  get '/game/:guess' => 'game#try'

end
