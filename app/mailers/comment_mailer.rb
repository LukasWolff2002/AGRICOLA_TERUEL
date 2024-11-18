class CommentMailer < ApplicationMailer
    default to: "contacto@agricolateruel.cl" # Reemplaza con tu correo
  
    def new_comment_notification(comment)
      @comment = comment
      mail(
        from: @comment.mail,
        subject: "Nuevo Comentario de #{@comment.name}"
      )
    end
  end
  