require 'mandrill'
def send_email(name,email,email_body)
	m = Mandrill::API.new
	message = {  
	 :subject=> "Your message was received!",  
	 :from_name=> "William Galarza",  
	 :text=>email_body,  
	 :to=>[  
	   {  
	     :email=> email,  
	     :name=> name  
	   }  
	 ],  
	 :html=>"<html><h1>Hi <strong>#{email_body}</strong>,</h1></html>",  
	 :from_email=>"w.galarza234@gmail.com"  
	}  
	sending = m.messages.send message  
	puts sending
end