class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @chatroom.user = current_user
    @message = Message.new(user: @chatroom.user, chatroom: @chatroom)
    authorize @chatroom
  end
end
