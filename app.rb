require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        iglatinpay = PigLatinizer.new
        @piglatin = iglatinpay.piglatinize(params[:user_phrase])

        erb :results
    end
end