class PostsController < ApplicationController
	before_action :find_post, only: [:show, :edit, :update, :destroy]

	def index
		#retrieves all the rows in the index view
		@posts = Post.all
		#@posts =[ #<Active Record Object>, #<Active record object>
					#] COLLECTS AS MANY ROWS/ACTIVE RECORDS THERE ARE IN DB/TABLE

	end

	def show
		#Params grabs the id from the URL and then e.g. find(3) uses that to grab the right content from the DB
		#@posts = Post
		#@post = Post.find(params["id"]) 

	end

	def new #this needs a view for typing data
		#the @post var represents a fresh, new, empty post
		@post = Post.new
	end

	#these two are linked

	def create #no view needed; for submitting data
		#need to save the form data to the DB
		@post = Post.new(post_params)
		
		
		#if it works...
		if @post.save
			flash[:success] = "Successfully created a Post."
			#take us back to the index page
			redirect_to posts_path
		else
			flash[:error] = "Oops, something went wrong, try again"
			render :new
		end


		
	end




	def edit #this needs a view for typing data
		#@post = Post.find(params["id"])

	end
	#these two are linked

	def update #no view needed; for submitting data
		
		#save an instance of "Post" to local var "post"
		#post= Post.find(params["id"])
		# Call '.update' on local var "post" to update the content of that row
		
		if @post.update(post_params)
			flash[:success] = "Successfully updated '#{@post.title}'"
			redirect_to post_path

		else
			render :edit
		end

	end



	def destroy
		
		#post = Post.find(params["id"])
		@post.destroy
		flash[:success] = "'#{@post.title}' was deleted."
		@post = nil
		redirect_to root_path
	end

	private
	def post_params 
		params.require(:post).permit(:title, :body)
	end

	def find_post
		@post = Post.find(params["id"])
	end


end