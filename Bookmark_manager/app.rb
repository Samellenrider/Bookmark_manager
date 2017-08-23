require 'sinatra/base'
#require './spec/spec_helper'
require_relative './models/link'

class BookMarkManager < Sinatra::Base

  get ("/") do
    @links = Link.all
    erb(:index)
  end
end
