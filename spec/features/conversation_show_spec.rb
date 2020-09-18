require 'rails_helper'

RSpec.describe "Conversation Index Page", type: :feature do
  before(:each) do
    @conversation1 = Conversation.create( title: "Dogs", start_date: Date.today)
    @conversation2 = Conversation.create( title: "IceCream", start_date: Date.today)

    @message1 = @conversation1.messages.create(text: "Offleash areas in Denver?")
    @message2 = @conversation1.messages.create(text: "Are grapes bad for dogs?")

    @message3 = @conversation2.messages.create(text: "What is most important when
      considering which ice cream to buy?")
  end

  it "can see all messages and thoughts for the conversation" do
    visit "/conversations/#{@conversation1.id}"
    expect(page).to have_content(@conversation1.title)
    expect(page).to_not have_content(@conversation2.title)
    expect(page).to have_content(@message1.text)
    expect(page).to have_content(@message2.text)
    expect(page).to_not have_content(@message3.text)
  end

  it "can add a new message" do
    visit "/conversations/#{@conversation1.id}"
    click_link("New Message")
    fill_in(:text, with: "Puppy Training Tips")
    click_button("Add Message")
    expect(page).to have_content("Puppy Training Tips")
  end

  it "can add a new thought" do
    visit "/conversations/#{@conversation1.id}"
    within "#message-#{@message1.id}" do
      click_link("New Thought")
      fill_in(:text, with: "Cherry Creek is the best!")
      click_button("Add Thought")
    end
    comment = Thought.last
    within "#thought-#{comment.id}" do
      expect(page).to have_content("Cherry Creek is the best")
    end
  end


end
