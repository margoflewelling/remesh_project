class ThoughtsController < ApplicationController

  def new
    @message = Message.find(params[:message_id])
  end

  def create
    thought = Thought.create(text: params[:text], message_id: params[:message_id])
    if thought.save
      flash[:success] = "Thought Added!"
      redirect_to "/conversations/#{params[:conversation_id]}"
    else
      flash[:error] = "#{thought.errors.full_messages.to_sentence}"
      @message = Message.find(params[:message_id])
      render :new
    end
  end

end
