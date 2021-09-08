class ChatroomsController < ApplicationController
  def index
    @chatrooms = policy_scope(Chatroom)
  end

  def create
    @pet = Pet.find(params[:pet_id])
    @chatroom = Chatroom.create(user: current_user, owner: @pet.user)
    authorize @chatroom

    redirect_to chatroom_path(@chatroom)
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @chatroom.user = current_user
    @message = Message.new(user: @chatroom.user, chatroom: @chatroom)
    authorize @chatroom
  end

  def my_chatrooms
    @chatrooms = Chatroom.where(user: current_user)
    authorize Chatroom
  end
end
