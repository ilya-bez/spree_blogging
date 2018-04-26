Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :blog_entries
  end

  scope Spree::Config['blog_alias'], as: 'blog' do
    get '/tag/:tag' => 'blog_entries#tag', :as => :tag
    get '/category/:category' => 'blog_entries#category', :as => :category
    get '/author/:author' => 'blog_entries#author', :as => :author
    get '/:slug' => 'blog_entries#show', :as => :entry_permalink

    get '/' => 'blog_entries#index'
  end
end

