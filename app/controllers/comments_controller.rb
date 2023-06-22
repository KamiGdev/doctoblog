class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_comment, only: %i[ show edit update destroy ]



  def create
    @comment = Comment.new(comment_params)
    @comment.blog_post_id = params[:blog_post_id]
    @comment.user = current_user

    if !@comment.save
      flash[:alert] = "Comment has not been created"
      redirect_to blog_post_path(@comment.blog_post)
    else
      flash[:notice] = "Comment has been created"
      redirect_to blog_post_path(@comment.blog_post)
    end

  end



  def destroy
    if current_user == @comment.user || current_user.admin?
      if !@comment.destroy
        flash[:alert] = "Comment has not been destroyed"
        redirect_to blog_post_path(@comment.blog_post)
      else
        flash[:notice] = "Comment has been destroyed"
        redirect_to blog_post_path(@comment.blog_post)
      end
    else
      flash[:alert] = "You do not have permission to do that"
      redirect_to blog_post_path(@comment.blog_post)
    end
  end




  private

    def set_comment
      @comment = Comment.find(params[:id])
    end


    def comment_params
      params.require(:comment).permit(:content)
    end



end
