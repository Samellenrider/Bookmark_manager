require 'sinatra/base'
#require './spec/spec_helper'
require_relative './models/link'

class BookMarkManager < Sinatra::Base

  get ("/links") do
    @links = Link.all
    erb(:index)
  end

  post("/new") do
    erb(:add)
  end

  post('/links') do
   Link.create(title: params[:title], url: params[:url])
   redirect '/links'
  end
end
