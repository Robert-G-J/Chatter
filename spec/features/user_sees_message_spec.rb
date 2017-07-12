require 'rails_helper'

RSpec.feature "Messages", type: :feature do
  scenario "are present on page", type: :feature do
    Message.create(content: "First message to bot")
    visit '/'
    expect(page).to have_content("First message to bot")
  end
end
