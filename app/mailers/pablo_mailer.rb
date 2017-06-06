class PabloMailer < ApplicationMailer

  default from: "pablo.se.equivoca@gmail.com"

  def error_mail(objective)
    mail(to: 'beobeoba@gmail.com', subject: 'Nueva razón de por qué Pablo se equivoca!', body: objective.name)
  end
end
