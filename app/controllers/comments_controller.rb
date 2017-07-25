class CommentsController < ApplicationController
    
    before_filter :require_login
    

    
    def new
        @comment = textbooks.comments.build
    end

    def create
        @textbook = Textbook.find(params[:textbook_id])
        @comment = @textbook.comments.create(comment_params)
        redirect_to textbook_path(@textbook)
    end
  
    def destroy
        @textbook = Textbook.find(params[:textbook_id])
        @comment = @textbook.comments.find(params[:id])
        @comment.destroy
        redirect_to textbook_path(@textbook)
    end

    private
    
    def comment_params
        params.require(:comment).permit(:commenters, :body)
    end
    
end