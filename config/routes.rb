Rails.application.routes.draw do
  get 'reviews/index'

  get 'reviews/create'

  get 'reviews/new'

  get 'reviews/edit'

  get 'reviews/show'

  get 'reviews/update'

  get 'reviews/destroy'

  get 'restaurants/index'

  get 'restaurants/create'

  get 'restaurants/new'

  get 'restaurants/edit'

  get 'restaurants/show'

  get 'restaurants/update'

  get 'restaurants/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
