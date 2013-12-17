require 'mysql2'
require 'debugger'

 
class Dog
  attr_accessor :id, :name, :color 

  def initialize(name, color)
    @name = name
    @color = color
  end

  @@db = Mysql2::Client.new(
    :host => "localhost", 
    :username => "root", 
    :database => "dogs")

  def db
    @@db
  end

  def self.db
    @@db
  end

  def insert
    db.query("insert into dogs(name, color)
      VALUES('#{self.name}', '#{self.color}')
      ")
  end


  def self.find_by_id(id)
    self.db.query("SELECT *
      FROM dogs
      WHERE id = #{id}").first
  end

  def self.find_by_name(name)
    self.db.query("SELECT *
      FROM dogs
      WHERE name = '#{name}' ").first
  end

  def self.find_by_color(color)
    self.db.query("SELECT *
      FROM dogs
      WHERE color = '#{color}' ").first
  end



 
end

#pup = Dog.new("fido", "yellow")
pup = Dog.find_by_name("fido") 
puts pup
#puts pup.methods-Object.methods
#Dog.find_by_att(1)
 
#dog = Dog.find(10)
#debugger
#puts 'hi'
 
  # color, name, id
  # db
  # find_by_att
  # find
  # insert
  # update
  # delete/destroy
 
  # refactorings?
  # new_from_db?
  # saved?
  # save! (a smart method that knows the right thing to do)
  # unsaved?
  # mark_saved!
  # ==
  # inspect
  # reload
  # attributes