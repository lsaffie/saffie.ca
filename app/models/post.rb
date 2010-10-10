class Post < ActiveRecord::Base
  has_many :comments, :order => "created_at DESC"
  has_and_belongs_to_many :tags
end
