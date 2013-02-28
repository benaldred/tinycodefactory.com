class MessageMailer < ActionMailer::Base
  default from: "contact.form@tinycodefactory.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.messages.contact.subject
  #
  #"work"=>{"name"=>"Ben Aldred", "email"=>"benaldred@gmail.com", "service"=>"1", "message"=>"foo bar"
  def contact(params)
    @name = params['name']
    @email = params['email']
    @service = params['service']
    @message = params['message']

    mail to: "benaldred@gmail.com", subject: "Message from #{@name}<#{@email}>"
  end
end
