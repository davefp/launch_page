require 'rubygems'
require 'sinatra/base'
require 'sinatra/config_file'
require 'mailchimp'
require 'rack-flash'

class LandingPage < Sinatra::Base

  register Sinatra::ConfigFile
  config_file 'config/config.yml'

  enable :sessions
  use Rack::Flash

  get '/' do
    erb :index
  end

  get '/thanks' do
    erb :thanks
  end

  post '/register' do
    ref = params[:ref]
    email = params[:email]
    referral_code = Digest::MD5.hexdigest(email)

    unless email.index '@'
      flash[:error] = "You must enter a valid email address"
      redirect "/"
    end

    mailchimp = Mailchimp::API.new(settings.mailchimp_api_key)

    begin
      mailchimp.list_subscribe(:id => settings.mailchimp_list_id, :email_address => email)
    rescue e
      flash[:error] = "Unable to register. Please try again"
      redirect "/"
    end

    flash[:success] = "Registration successful"
    redirect "/thanks"
  end
end