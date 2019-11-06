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

	def create
		white_list = params.require(:post).permit(:title, :description)
	  	@post = Post.create(white_list)
		redirect_to @post
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		white_list = params.require(:post).permit(:title, :description)
	  @post = Post.find(params[:id])
	  @post.update(white_list)
	  redirect_to @post
	end
end