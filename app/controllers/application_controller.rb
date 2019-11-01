class ApplicationController < ActionController::Base

  def all_users
    render({:json => User.all})
  end

  def user
    render({:json => User.where({username: params['username']}).at(0)})
  end

  def user_photos
    u = User.where({username: params['username']}).at(0)
    render({:json => u.own_photos})
  end

  def user_liked_photos
    u = User.where({username: params['username']}).at(0)
    render({:json => u.liked_photos})
  end

  def user_feed
    u = User.where({username: params['username']}).at(0)
    render({:json => u.feed})
  end

  def user_discover
    u = User.where({username: params['username']}).at(0)
    render({:json => u.discover})
  end

  # Photo
  def photo
    render({:json => Photo.where({id: params['photo_id']}).at(0)})
  end

  def photo_likes
    photo = Photo.where({id: params['photo_id']}).at(0)
    render({:json => photo.likes})
  end

  def photo_fans
    photo = Photo.where({id: params['photo_id']}).at(0)
    render({:json => photo.fans})
  end

  def insert_like_record
    render({:json => params})
  end
end
