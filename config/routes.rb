Rails.application.routes.draw do
  scope "(/:locale)" do
    resources :investor_contents
    resources :post_banners
    resources :investors
    resources :brand_banners
    resources :new_investments
    resources :sector_banners
    resources :group_banners
    resources :banners
    resources :contents
    resources :social_media
    devise_for :users
    resources :posts
    resources :brands
    resources :sectors
    resources :homes

    

    get 'pages/group' => 'pages#group', :path => 'group'

    get 'pages/contact' => 'pages#contact', :path => 'contact'

    get 'new_investment_page' => 'new_investments#index', :path => 'new-investment'

    get 'investors_page' => 'investors#index', :path => 'investors'
    
    get 'board_member' => 'pages#board_member', :path => '/board_member/:id'
    
    get 'executive' => 'pages#executive', :path => '/executive/:id'

    get 'language' => 'pages#language', :path => 'language'
  end
  root to: redirect("/#{I18n.default_locale}", status: 302), as: :redirected_root

  scope '/:locale', defaults: { locale: I18n.locale } do
    devise_for :admin_users, ActiveAdmin::Devise.config
    ActiveAdmin.routes(self)
  end

  scope '/:locale' do
    root 'pages#welcome' 
    get 'contact-us-new' => 'contact_us/contacts#new', :path => 'contact_us_new'
  end
end