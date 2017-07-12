require 'rails_helper'

RSpec.feature "Messages", type: :feature do
  scenario "can be submitted; elicit a response", type: :feature do
    Message.create(content: "Let's talk surf")
    Response.create(content: "Do you like beaches?")
    visit '/'
    click_button 'Send'
    expect(page).to have_content("Do you like beaches?")
  end
end
