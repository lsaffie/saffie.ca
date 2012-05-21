class Comment < ActiveRecord::Base
  attr_accessor :bot_check
  belongs_to :post
end
