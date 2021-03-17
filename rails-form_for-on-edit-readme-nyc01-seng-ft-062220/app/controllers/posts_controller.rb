class PostsController < ApplicationController
  def index
  	@posts = Post.all
  end

  def show
  	@post = Post.find(params[:id])
  end

  def new
  	@post = Post.new
  end

<<<<<<< HEAD:rails-form_for-on-edit-readme-nyc01-seng-ft-062220/app/controllers/posts_controller.rb
	def create
	  @post = Post.new
	  @post.title = params[:title]
	  @post.description = params[:description]
	  @post.save
	  redirect_to post_path(@post)
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
	  @post = Post.find(params[:id])
	  @post.update(params.require(:post).permit(:title, :description))
	  redirect_to post_path(@post)
	end
=======
  def create
    @post = Post.new(params)
    @post.save
    redirect_to post_path(@post)
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params(:title))
    redirect_to post_path(@post)
  end

  def edit
    @post = Post.find(params[:id])
  end

  private

  def post_params(*args)
    params.require(:post).permit(*args)
  end
>>>>>>> e240b7bf8a57eb97c60bd38e613254a7835a19d0:app/controllers/posts_controller.rb
end