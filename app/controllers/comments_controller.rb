class CommentsController < ApplicationController

    def new
        @comment = Comment.new
    end

    def create
        @comment = Comment.new(comment_params)
        if @comment.save
            redirect_to root_path, notice: 'Comment was successfully created.'
        else
            render :new
        end
    end

    private

    def comment_params
        params.require(:comment).permit(:name, :mail, :comment)
    end
end