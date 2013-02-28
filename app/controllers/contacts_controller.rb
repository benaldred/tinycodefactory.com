class ContactsController < ApplicationController
  respond_to :json

  ##
  # create the mailing
  def create
    @message = Message.new(params[:work])

    if @message.valid?
      MessageMailer.contact(params['work']).deliver
      respond_with({:status => 200}, location: nil)
    else
      respond_with({:status => 442, :errors => @message.errors.messages}, location: nil)
    end

  end
end