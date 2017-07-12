class MessagesController < ApplicationController
  def index
    @messages = Message.all
    @responses = Response.all
  end
end
