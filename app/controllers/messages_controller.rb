class MessagesController < ApplicationController

  def new
    @conversation = Conversation.find(params[:conversation_id])
  end

  def create
    message = Message.create(text: params[:text], conversation_id: params[:conversation_id])
    if message.save
      flash[:success] = "Message Added!"
      redirect_to "/conversations/#{params[:conversation_id]}"
    else
      flash[:error] = "#{message.errors.full_messages.to_sentence}"
      @conversation = Conversation.find(params[:conversation_id])
      render :new
    end
  end

end
