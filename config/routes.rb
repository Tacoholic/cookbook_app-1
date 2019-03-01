Rails.application.routes.draw do
  namespace :api do
    post '/users' => 'users#create'

    post '/sessions' => 'sessions#create'

    get '/recipes' => 'recipes#index'
    post '/recipes' => 'recipes#create'
    get '/recipes/:id' => 'recipes#show'
    patch '/recipes/:id' => 'recipes#update'
    delete '/recipes/:id' => 'recipes#destroy'
  end

  get "/*path" => proc { [200, {}, [ActionView::Base.new.render(file: 'public/index.html')]] }, :constraints => lambda{|req| req.path !~ /\.(assets)$/ }

end
