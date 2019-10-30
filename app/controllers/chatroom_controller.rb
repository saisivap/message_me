class ChatroomController < ApplicationController

  before_action :authenticate_user!

  def index
    @message=Message1.new
    @message1s=Message1.custom_display
  end
end
