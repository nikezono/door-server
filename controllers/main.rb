# -*- coding: utf-8 -*-
before '/*.json' do
  content_type 'application/json'
end

get '/' do
  @title = @@conf['title']
  haml :index
end

get '/goldfish' do
  html:goldfish
end

def html(view)
  File.read(File.join('public', "#{view.to_s}.html"))
end
