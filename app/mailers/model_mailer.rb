class ModelMailer < ActionMailer::Base
  default from: "fatihdurmus15@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.model_mailer.new_register.subject
  #
  def new_register(record)
      @record = record
      mail to: "fatihdurmus15@gmail.com", subject: "Success! You did it."
  end

end
