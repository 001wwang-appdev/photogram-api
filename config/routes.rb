Rails.application.routes.draw do
  # User
  match("/users", {controller: "application", action: "all_users", via: "get"})
  match("/users/:username", {controller: "application", action: "user", via: "get"})
  match("/users/:username/own_photos", {controller: "application", action: "user_photos", via: "get"})
  match("/users/:username/liked_photos", {controller: "application", action: "user_liked_photos", via: "get"})
  match("/users/:username/feed", {controller: "application", action: "user_feed", via: "get"})
  match("/users/:username/discover", {controller: "application", action: "user_discover", via: "get"})

  # Photo
  match("/photos/:photo_id", {controller: "application", action: "photo", via: "get"})
  match("/photos/:photo_id/likes", {controller: "application", action: "photo_likes", via: "get"})
  match("/photos/:photo_id/fans", {controller: "application", action: "photo_fans", via: "get"})

  # Insert like record
  match("/insert_like_record", {controller: "application", action: "insert_like_record", via: "get"})
  # =================================================
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
