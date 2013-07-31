class Person < ActiveRecord::Base
  def self.send_mass_message(message)
    all.each do |person|
      person.send_message(message)
    end
  end
  
  def send_message(message)
    client.account.sms.messages.create(
      :from => '+14844064187',
      :to => "+1#{phone_number}",
      :body => message
    )
  end
  
  def send_perpetual_message(message, number_of_times=1)
    number_of_times.times.each { send_message(message) }
  end
  
  def send_list(*messages)
    messages.each { |item| send_message(item) }
  end
  
  private
  
  def client
    # put your own credentials here
    account_sid = 'AC56838076dd773f0e5143e4c56faa71c6'
    auth_token = '78dc82e8b96e3228d2f4d7e23bb48ef8'
    
    # set up a client to talk to the Twilio REST API
    Twilio::REST::Client.new(account_sid, auth_token)
  end
  
end