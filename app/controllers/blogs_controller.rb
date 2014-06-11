class BlogsController < ApplicationController

  before_filter :user

  def index
    @blogs = UserFlex.find(params[:user_id]).blogs
  end

  def new
    @blog = @user.blogs.new
  end

  def create
    @blog = @user.blogs.new(blog_params)
    if @blog.save
      redirect_to user_blogs_path(@blog.user_id)
    else
      render :new
    end
  end

  private

    def blog_params
      params.require(:blog).permit(:title, :content, :user_id, :id)
    end

    def user
      @user = User.find(params[:user_id])
    end


end
