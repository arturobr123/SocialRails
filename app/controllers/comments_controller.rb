class CommentsController < ApplicationController
  def new
    @comment = Comments.new
  end

  def index
    @postts = Post.find(params[:post_id])
    @Comments = @postts.comments
  end

  def destroy
    @comment.destroy
    
  end

  def create

    @postt = Post.find(params[:post_id])
    @comment = @postt.comments.new(comment_params)
    @comment.commenter = current_user.username
    @comment.user_id = current_user.id

    respond_to do |format|
      if @comment.save
        format.html { redirect_to root_path, notice: 'Acabas de comentar.' }
        format.js { render :show }
        #format.json { render :show, status: :created, location: @post }
  
      end
    end
    

  end
 
  private
    def comment_params
      params.require(:comment).permit(:commenter,:user_id ,:body)
    end
end



