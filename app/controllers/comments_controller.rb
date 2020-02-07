class CommentsController < InheritedResources::Base

  private

    def comment_params
      params.require(:comment).permit(:user_name, :body, :product_id)
    end

end
