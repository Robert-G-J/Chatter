require 'rails_helper'

RSpec.describe Message, type: :model do
  it{ should have_many(:responses) }
end
