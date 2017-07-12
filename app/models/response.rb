class Response < ApplicationRecord
  belongs_to :message, :foreign_key => 'message_id'
end
