class CommentsController < ApplicationController

    def index
      @comments = Comment.all
    end

    def new
      @comment = Comment.new
    end
  
    def create
      @comment = Comment.new(comment_params)
      Rails.logger.info "Intentando guardar el comentario"
      if @comment.save
        Rails.logger.info "Comentario guardado exitosamente, enviando correo..."
        CommentMailer.new_comment_notification(@comment).deliver_now
        Rails.logger.info "Correo enviado"
        redirect_to root_path, notice: 'Comentario enviado exitosamente.'
      else
        Rails.logger.error "Error al guardar el comentario: #{@comment.errors.full_messages.join(", ")}"
        render :new, status: :unprocessable_entity
      end
    end
  
    private
  
    def comment_params
      params.require(:comment).permit(:name, :mail, :comment)
    end
  end
  