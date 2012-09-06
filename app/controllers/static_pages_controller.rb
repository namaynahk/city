class StaticPagesController < ApplicationController
  def home
    if signed_in?
      @micropost = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
	#need one for events
	#@meetup = current_user --something--
	#need one for weibo friends list
    end

  end

  def help
  end

  def about
  end

  def contact
  end
end
