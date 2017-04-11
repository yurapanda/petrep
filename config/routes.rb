Rails.application.routes.draw do

  devise_for :users
  resources :boarding_bookings do
    resources :comments, module: :boarding_bookings
  end
  resources :appointments do
    resources :comments, module: :appointments
  end
  #resources :done_vaccinations
  resources :vaccinations
  resources :invoices do
    resources :comments, module: :invoices
  end
  
  resources :services_to_dos
  resources :services
  resources :tests do
     resources :comments, module: :tests
  end

  resources :patient_types
 
  resources :kinds
  resources :genders
  resources :breeds

  resources :notifications do
    collection do
      post :mark_as_read
    end
  end

  root 'welcome#index'

  #nested routing for patients/pets
  resources :patients do
	  resources :weights, except: [:index], controller: 'patients/weights'
    #resources :done_vaccinations, except: [:index], controller: 'patients/done_vaccinations'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
