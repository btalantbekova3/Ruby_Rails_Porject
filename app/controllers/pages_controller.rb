class PagesController < ApplicationController
  def home
    @posts = Post.all
    @audiobooks = Audiobook.all
  end


  def pricing
  end

  def privacy
  end
end
