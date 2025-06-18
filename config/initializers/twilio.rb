require 'rubygems' 
require 'twilio-ruby'

module TwilioSms
  def self.send_text(phone, content) 
    # phone :- phone number to which you want to send sms 
    # content :- Message text which you want to send
    twilio_sid = "" #add
    twilio_token = "" #add
    twilio_phone_number = "+1" #add
    begin
      @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token

      @twilio_client.api.account.messages.create(
      :from => twilio_phone_number,
      :to => phone, 
      :body=> content

      )
    rescue Twilio::REST::TwilioError => e
       return e.message
    end
    return "send"
  end
end