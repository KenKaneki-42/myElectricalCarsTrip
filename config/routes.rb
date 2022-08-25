Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  # all cars list: app/cars get:"cars#index"
  # !!!! Create car app/owner/cars/new get:"owner/cars#new" post:"owner/cars#create"
  # all cars list: app/cars/id get:"cars#show // post:"rentals#create". url pour envoi: app/cars/car_id/rentals
  resources :cars, only: %i[index show] do
    resources :rentals, only: %i[create]
  end

  # url:app/rentals //  rentals#index
  resources :rentals, only: %i[index show]

  # !!!! app/owner/rentals // owner/rentals#index. url:"app/owner/rentals/id/validate"
  # !!!! patch:"owner/rentals#validate" url:"app/owner/rentals/id/decline"  patch:"owner/rentals#decline"
  # Validate or decline app/my_car_id // patch:"validation#"???????????
  # As a user (owner) list of my Cars app/owner/cars
  # get:"owner/cars#Index".  ( notion de namespace pour la construction des routes)

  namespace :owner do
    resources :cars, only: %i[index create new]
    resources :rentals, only: %i[index] do
      member do
        patch :validate
        patch :decline
      end
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"


  # routes à ajouter si on a le temps
  # Update car app/cars/update post:"cars#edit"
  # root/cars/id (rent form)  //  rentals#new ;; rentals#create ;; rentals#show
end
