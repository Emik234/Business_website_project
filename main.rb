require 'sinatra'
require_relative './mandrill.rb'

get '/' do
	erb :home
end

post '/contact' do
	contact_name = params['name']
	contact_email = params['email']
	email_body = 'We received your message.'

	send_email(contact_name, contact_email, email_body)
	redirect to('/thanks')
end

get '/thanks' do
	@title = 'Thanks!'
	erb :thanks
end