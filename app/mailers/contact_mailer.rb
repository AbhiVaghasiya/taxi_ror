# frozen_string_literal: true

# :nodoc:
class ContactMailer < ApplicationMailer
  def contact_email(contact)
    @contact = contact
    @url = 'http://multipagewebsite.com/contact'
    mail(to: @contact.email, subject: 'Thank you for contact taxi.com team')
  end
end
