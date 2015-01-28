Rails.application.routes.draw do

  get 'users/edit'

  get 'users/index'

  get 'users/show'

  root                'static_pages#home'
  get    'help'    => 'static_pages#help'
  get    'about'   => 'static_pages#about'
  get    'contact' => 'static_pages#contact'
  get    'signup'	 => 'users#new'

end
