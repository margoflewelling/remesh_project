class ConversationsController < ApplicationController

  def index
    @conversations = Conversation.all
  end

  def new
  end

  def create
    conversation = Conversation.create(title: params[:title], start_date: Date.today)
    if conversation.save
      flash[:success] = "Conversation #{conversation.title} Started!"
      redirect_to "/conversations"
    else
      flash[:error] = "#{conversation.errors.full_messages.to_sentence}"
      render :new
    end
  end

  def show
    @conversation = Conversation.find(params[:id])
  end

  def search
    query = "%#{params[:search]}%"
    @conversations = Conversation.where("title ILIKE ?", query)
    render :index
  end
  
end
