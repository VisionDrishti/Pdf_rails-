Rails.application.routes.draw do
  get 'posts/pdf/:id' , to: 'posts#pdf', as:'post_pdf'
  resources :posts
  get 'download',to: 'pages#download'
  get 'preview', to: 'pages#preview'
  root 'pages#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
