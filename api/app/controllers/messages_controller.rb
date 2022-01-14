class MessagesController < ApplicationController
  before_action :authenticate_user!, only: %i(index)

  def index
    messages = Message.all
    message_array = messages.map do |message|
      {
        id: message.id,
        user_id: message.user.id,
        name: message.user.name,
        content: message.content,
        email: message.user.email,
        created_at: message.created_at
      }
    end
    
    render json: message_array, status: 200
  end
end
