class ChatroomController < ApplicationController

  before_action :authenticate_user!

  def index
    @message=Message1.new
    @messages=Message1.all
  end
end
