# frozen_string_literal: true

#:nodoc:
class HomeController < ApplicationController
  # before_action(:company_details, only: [:blog, :contactus, :gettaxi, :index, :post, :services])
  before_action(:company_details, only: %i[blog contactus gettaxi index post services])

  def contactus
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
        ContactMailer.contact_email(@contact).deliver
        format.html { redirect_to contactus_path }
        flash[:success] = 'Successfully Create Record.'
      else
        flash[:alert] = 'Your record Not Crate'
      end
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end

  def company_details
    @social_profiles = SocialProfile.all
    @companies = Company.all
  end
end
