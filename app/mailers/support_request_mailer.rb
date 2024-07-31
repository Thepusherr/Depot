class SupportRequestMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.support_request_mailer.respond.subject
  #

  default from: "support@example.com"

  def respond(support_request)
    @support_request = support_request
    puts "3333333333333333333333333333333333"
    puts support_request
    puts support_request.subject
    mail to: @support_request.email, subject: "Re: #{@support_request.subject}"
  end
end
