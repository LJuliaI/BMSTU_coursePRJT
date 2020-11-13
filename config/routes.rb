Rails.application.routes.draw do
    root 'static_pages#home'
  get 'static_pages/help'
<<<<<<< HEAD
  get 'map_test/map'
=======
  get 'static_pages/about'
  get 'map/bmstuMap'
>>>>>>> c35eae8f26b2a23c15768207484c6d26bdbc482a
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
