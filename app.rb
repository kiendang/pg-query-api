require 'sinatra'
require 'pg_query'
require 'json'

set :bind, '0.0.0.0'

get '/' do
  'Hello'
end
  
post '/parse' do
  content_type :json

  data = JSON.parse(request.body.read)
  if data.has_key?('query')
    PgQuery.parse(data['query']).tree[0].to_json
  else
    status 400
  end
end
