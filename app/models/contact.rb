# frozen_string_literal: true

# :nodoc:
class Contact < ApplicationRecord
  after_commit :contact_mail, on: :create

  def contact_mail
    ContactMailer.contact_email(self).deliver_now
  end
end

# SocialProfile.create(provider: 'twitter', url: 'https://twitter.com/Softices')
# SocialProfile.create(provider: 'facebook', url: 'https://www.facebook.com/softices/')
# SocialProfile.create(provider: 'youtube', url: 'https://www.youtube.com/channel/UCfqO6OVTF-TRuUSgFJ7iUnw')
# SocialProfile.create(provider: 'google', url: 'https://softices.com/')
# SocialProfile.create(provider: 'linkedin', url: 'https://www.linkedin.com/company/softices')
