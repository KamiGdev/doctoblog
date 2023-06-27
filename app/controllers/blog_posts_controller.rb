class BlogPostsController < ApplicationController
  before_action :set_blog_post, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  before_action :writer_verification, except: %i[ index show ]
  before_action :only_writer, only: %i[ edit update ]


#  WE ADD GET /blog_posts or /blog_posts.json
def index
  @q = BlogPost.ransack(params[:q])
  @blog_posts = @q.result(distinct: true).page params[:page]
end

  # WE ADD this : GET /blog_posts/1 or /blog_posts/1.json
  def show
    @blog_post = BlogPost.find(params[:id])
    @new_comment = Comment.new
  end

  # GET /blog_posts/new
  def new
    @blog_post = BlogPost.new

  end

  # GET /blog_posts/1/edit
  def edit

  end

  # POST /blog_posts or /blog_posts.json
  def create

    @blog_post = BlogPost.new(blog_post_params)

    respond_to do |format|
      if @blog_post.save
        format.html { redirect_to blog_post_url(@blog_post), notice: "Blog post was successfully created." }
        format.json { render :show, status: :created, location: @blog_post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @blog_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blog_posts/1 or /blog_posts/1.json
  def update
    respond_to do |format|
      if @blog_post.update(blog_post_params)
        format.html { redirect_to blog_post_url(@blog_post), notice: "Blog post was successfully updated." }
        format.json { render :show, status: :ok, location: @blog_post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @blog_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blog_posts/1 or /blog_posts/1.json
  def destroy
    @blog_post.destroy

    respond_to do |format|
      format.html { redirect_to blog_posts_url, notice: "Blog post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  
    # Use callbacks to share common setup or constraints between actions.
    def set_blog_post
      @blog_post = BlogPost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def blog_post_params
      params.require(:blog_post).permit(:illustration, :title, :subtitle, :body, :user_id)
    end


    # WE ADD writer_verification METHOD
    def writer_verification
      if !current_user.writer?
        flash.alert = "You must be authorize to access"
        redirect_to blog_posts_path
      end
    end

    # WE ADD only_writer METHOD
    def only_writer
      if @blog_post.user != current_user
        flash.alert = "You are not able to access this post"
        redirect_to blog_posts_path
      end
    end

end
