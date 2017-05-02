class MessagesController < ApplicationController
  def new
      @message = Message.new
    end

    def create
      @message = Message.new(message_params)

      if @message.valid?
        MessageMailer.new_message(@message).deliver
        redirect_to afiliacion_path, notice: "Su mensaje ha sido enviado, por favor ten paciencia lo revisaremos pronto."
      else
        flash[:alert] = "Un error ha ocurrido al enviar este mensaje, por favor intente nuevamente."
        render :new
      end
    end

  private

    def message_params
      params.require(:message).permit(:name, :email, :content)
    end

end
