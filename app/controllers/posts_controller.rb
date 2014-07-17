class PostsController < ApplicationController

  before_action :authenticate!, only:[:create, :update, :destroy, :new]

  def index
    @posts = Post.all
  end
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end
  
  def show
    @post = Post.find params[:id]
  end
  
  def edit
    @post = Post.find params[:id]
  end
  
  def update
    @post = Post.find params[:id]
    
    if @post.update post_params
      redirect_to @post
    else
      render 'edit'
    end
  end
  
  def destroy
    @post = Post.find params[:id]
    @post.destroy
    
    redirect_to posts_path
  end
  
  private
  
    def authenticate
      unless session[:user_id]
        redirect_to root_url, :notice => "U've got to log in!"
      end
    end    
  
    def post_params
      params.require(:post).permit(:title, :body)
    end
  
end
