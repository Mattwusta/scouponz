Dine::Application.routes.draw do

  resources :orderlists
  resources :shoplists
  resources :categories

  get "home/index"

  resources :pins
  resources :pin 
  
  devise_for :users
  match 'users/:id' => 'users#show', as: :user

 
  root :to => 'pins#index'
  get 'usering' => 'users#index'
  get 'detail' => 'users#detail'
  get 'manage' => 'orderlists#manage'
  get 'admin' => 'pages#admin'
  get 'return' => 'pages#return'
  get 'faq' => 'pages#faq'
  get 'why' => 'pages#why'
  get 'service' => 'pages#service'
	get 'privacy' => 'pages#privacy'
  get 'menu' => 'pages#menu'
  get 'recipies' => 'pages#recipies'  
  get 'know' => 'pages#know'
  get 'give' => 'pages#give' 
  get 'how' => 'pages#how' 
  get 'dish1' => 'pages#dish1'
  get 'dish2' => 'pages#dish2' 
  get 'dish3' => 'pages#dish3' 
  get 'dish4' => 'pages#dish4'
  get 'dish5' => 'pages#dish5' 
  get 'dish6' => 'pages#dish6'
  get 'account' => 'pages#account' 
  get 'donations' => 'pages#donations' 
  get 'delivery' => 'pages#delivery'
  get 'hunger' => 'pages#hunger'
  get 'dogood' => 'pages#dogood'
  get 'lovemeal' => 'pages#lovemeal'
  get 'help' => 'pages#help'
  get 'about' => 'pages#about'
  get 'line' => 'pages#line'
  get 'side' => 'pages#side'
  get 'fruit' => 'pages#fruit'
  get 'hocv' => 'pages#hocv'
  get 'chefs' => 'pages#chefs'
  get 'goodcompany' => 'pages#goodcompany'
  get 'hoc' => 'pages#hoc'
  get 'chef29tv' => 'pages#chef29tv'
  get 'makemoney' => 'pages#makemoney'
  get 'orderpage' => 'pages#orderpage'
  get 'pickup' => 'pages#pickup'
  get 'dogooder' => 'pages#dogooder'
  get 'onmenu' => 'pages#onmenu'

  

  match 'contact' => 'contact#new', :as => 'contact', :via => :get
  match 'contact' => 'contact#create', :as => 'contact', :via => :post

  match 'alert' => 'alert#new', :as => 'alert',  :via => :get
  match 'alert'  => 'alert#create', :as => 'alert', :via => :post

  match 'wineordercontact' => 'wineordercontact#new', :as => 'wineordercontact', :via => :get
  match 'wineordercontact' => 'wineordercontact#create', :as => 'wineordercontact', :via => :post

  as :user do
  match '/user/confirmation' => 'confirmations#update', :via => :put, :as => :update_user_confirmation
  end
  devise_for :users, :controllers => { :confirmations => "confirmations" }

end
