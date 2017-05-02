class MessageMailer < ApplicationMailer

  default from: "Your Mailer <animegateoficial@gmail.com>"
  default to: "Your Name <animegateoficial@gmail.com>"

  def new_message(message)
    @message = message

    mail subject: "Message from #{message.name}"
  end
end
