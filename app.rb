#!/usr/bin/env ruby

require 'sinatra'

set :port, 4567      # Sinatra default
set :bind, '0.0.0.0'

set :logging, false
#disable :logging

get '/readiness' do
  [200, { ok: true }.to_json]
end

get '/liveness' do
  [200, { ok: true }.to_json]
end

post '/alertmanager-receiver' do
  datestr = `date '+%Y-%m-%d-%H-%M-%S'`.chomp
  STDOUT.puts "[#{datestr}]: #{params.keys.first}"
  [201, { ok: true }.to_json]
end

get '/*' do
  STDOUT.puts "GET for unhandled path:  #{request.ip} #{request.request_method} #{request.fullpath} - : #{request.params}\n"
end

post '/*' do
  STDOUT.puts "POST for unhandled path:  #{request.ip} #{request.request_method} #{request.fullpath} - : #{request.params}\n"
end

#run!({logging: false})
