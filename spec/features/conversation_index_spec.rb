require 'rails_helper'

RSpec.describe "Conversation Index Page", type: :feature do
  before(:each) do
    @conversation1 = Conversation.create( title: "Dogs", start_date: Date.today)
    @conversation2 = Conversation.create( title: "IceCream", start_date: Date.today)
  end

  it "can see all conversations" do
    visit "/conversations"
    expect(page).to have_content(@conversation1.title)
    expect(page).to have_content(@conversation2.title)
  end

  it "can add a new conversation" do
    visit "/conversations"
    expect(page).to have_link "Create New Conversation"
    click_link("Create New Conversation")
    expect(current_path).to eq("/conversations/new")
    fill_in(:title, :with => "Covid19")
    click_button("Start Conversation")
    expect(current_path).to eq("/conversations")
    expect(page).to have_content("Conversation Covid19 Started")
    # expect(page).to have_content("Covid19")
    expect(Conversation.all.count).to eq(3)
  end

  it "requires title to add conversation" do
    visit "/conversations"
    click_link("Create New Conversation")
    expect(current_path).to eq("/conversations/new")
    fill_in(:title, :with => "")
    click_button("Start Conversation")
    expect(page).to have_content("Title can't be blank")
  end

  it "can click to conversation show page" do
    visit "/conversations"
    click_link("Dogs")
    expect(current_path).to eq("/conversations/#{@conversation1.id}")
  end

end
