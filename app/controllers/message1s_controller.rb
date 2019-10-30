class Message1sController < ApplicationController
  before_action :authenticate_user!
  def create
    # message=current_user.build(message_params)
    message=Message1.new(message_params)
    message.user=current_user
    if message.save
      # redirect_to root_path
      ActionCable.server.broadcast "chatroom_channel",msg: message_render(message)
      # ActionCable.server.broadcast "chatroom_channel",msg: message.body
    end
  end
  private
    def message_params
      params.require(:message1).permit(:body)
    end
    def message_render(message)
      render(partial: 'message1',locals: {message1: message})
    end
end