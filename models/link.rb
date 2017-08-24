require "data_mapper"
require "dm-postgres-adapter"


class Link
  include DataMapper::Resource

  property :id, Serial
  property :title, String
  property :url, String

  DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}") #decides wich database to go depending on command in file ENV['RACK_ENV'] = 'test'/ ENV["RACK_ENV"] ||= 'development'
  DataMapper.finalize
  DataMapper.auto_upgrade!
end
