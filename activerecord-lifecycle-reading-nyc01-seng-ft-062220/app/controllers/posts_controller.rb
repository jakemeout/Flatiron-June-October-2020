class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
		@categories = Category.all
	end

	def create
<<<<<<< HEAD:activerecord-lifecycle-reading-nyc01-seng-ft-062220/app/controllers/posts_controller.rb
	  @post = Post.new(params.require(:post).permit(:title, :description))
    if @post.save
      redirect_to post_path(@post)
    else
      render :new
    end
	end

	def update
	  @post = Post.find(params[:id])
	  @post.update(params.require(:post).permit(:title, :description, :post_status, :author_id))
	  redirect_to post_path(@post)
=======
		post = Post.create(post_params)
		redirect_to post_path(post)
	end

	def edit
		@post = Post.find(params[:id])
		@categories = Category.all
>>>>>>> bd4fbb2ed54d1c4407fddbf529422f4636a277b4:app/controllers/posts_controller.rb
	end

	def update
	  post = Post.find(params[:id])
	  post.update(post_params)
	  redirect_to post_path(post)
	end
<<<<<<< HEAD:activerecord-lifecycle-reading-nyc01-seng-ft-062220/app/controllers/posts_controller.rb
=======

  private

  def post_params
    params.require(:post).permit(:title, :description)
  end
>>>>>>> bd4fbb2ed54d1c4407fddbf529422f4636a277b4:app/controllers/posts_controller.rb
end
