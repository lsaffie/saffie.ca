class Post < ActiveRecord::Base
  has_many :comments, :order => "created_at DESC"
  has_and_belongs_to_many :tags

  def to_param
    "#{id}-#{title.gsub(/[^a-z0-9]+/i, '-')}"
  end
end
