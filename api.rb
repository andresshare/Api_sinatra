require 'sinatra'

users = {
  'Timon':{first_name: 'Timon', last_name: 'Diaz', age:25},
  'Simon':{first_name: 'Simon', last_name: 'Ruiz', age: 37},
  'Jhon':{first_name:  'Jlo', last_name:'lopez', age:23}
}


get '/' do
  'activate sinatra'
end


get '/users' do
  users.map {|name,data| data.merge(id:name)}.to_json
end

