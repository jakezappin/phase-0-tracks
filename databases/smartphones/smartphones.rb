#require gems
require 'sqlite3'
require 'faker'

#create SQLite 3 database

$DATABASE = SQLite3::Database.new( "smartphones.db" )
