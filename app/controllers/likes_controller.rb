class LikesController < ApplicationController



  def index
    @postts = Post.find(params[:post_id])
    @likes = @postts.likes
  end

  def destroy
    @comment.destroy
    
  end

  def create

    @postt = Post.find(params[:post_id])
    @like = @postt.likes.new()
    
    respond_to do |format|
      if @like.save
        format.html { redirect_to root_path, notice: 'Me gusta' }
        format.js { render :show }
      end
    end
    

  end
 
  private
    def comment_params
      params.require(:like).permit(:like)
    end
end
