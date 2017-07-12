class AddMessageIDtoResponses < ActiveRecord::Migration[5.1]
  def change
    add_reference :responses, :message, foreign_key: true
  end
end
