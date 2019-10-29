class MessagesController < ApplicationController
  before_action :authenticate_user!
  def create
    # message=current_user.build(message_params)
    message=Message1.new(message_params)
    message.user=current_user
    if message.save
      redirect_to root_path
    end
  end
  private
    def message_params
      params.require(:message1).permit(:body)
    end
end