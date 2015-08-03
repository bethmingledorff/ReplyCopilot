# class Visitor
#   include ActiveModel::Model
#   attr_accessor :email, :string
#   attr_accessor :name, :string
#   validates_presence_of :email, :name
#   # validates_format_of :email, with: /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i

#   def subscribe
#     Gibbon::Request.api_key = "MAILCHIMP_API_KEY"
#     # ENV["MAILCHIMP_API_KEY"]
#     gb = Gibbon::Request.new
#     # byebug
#     gb.lists(ENV["MAILCHIMP_LIST_ID"]).members.create(body: 
#       {email_address: self.email, 
#         status: "subscribed", 
#         merge_fields: {FNAME: "First Name", LNAME: "Last Name"}})

#     Rails.logger.info("Subscribed #{self.email} to MailChimp") if true
#   end

# end

class Visitor
  include ActiveModel::Model
  attr_accessor :email, :string
  validates_presence_of :email
  validates_format_of :email, with: /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i

  def subscribe
    mailchimp = Gibbon::API.new(Rails.application.secrets.MAILCHIMP_API_KEY)
    result = mailchimp.lists.subscribe({
      :id => Rails.application.secrets.MAILCHIMP_LIST_ID,
      :email => {:email => self.email},
      :double_optin => false,
      :update_existing => true,
      :send_welcome => true
    })
    Rails.logger.info("Subscribed #{self.email} to MailChimp") if result
  end

end


