class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :get_feed

  def get_feed
    @twitter_feed = Twitter.user_timeline("lsaffie")
  end

end
