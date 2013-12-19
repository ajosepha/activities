require 'sequel'
require 'sqlite3'

DB = Sequel.connect('sqlite://artists.db')

class Artist < Sequel::Model
end