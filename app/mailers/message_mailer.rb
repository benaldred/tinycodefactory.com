class MessageMailer < ActionMailer::Base
  default from: "contact.form@tinycodefactory.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.messages.contact.subject
  #
  def contact(params)
    @name = params['name']
    @email = params['email']
    @service = params['service']
    @message = params['message']

    mail to: "ben@tinycodefactory.com", subject: "Message from #{@name}<#{@email}>"
  end
end
