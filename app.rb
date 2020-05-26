require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    total = params[:number].to_i * params[:number].to_i
    "#{total}.to_s"
  end

  get '/say/:number/:phrase' do
    repeat = ''
    params[:number].to_i.times do
      repeat += params[:phrase]
    end
    repeat
  end



end
