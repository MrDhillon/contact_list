class Contact

  attr_accessor :name, :email

  def initialize(name, email)
    # TODO: assign local variables to instance variables
    @name = name
    @email = email

  end

  def to_s
    # TODO: return string representation of Contact

  end

  ## Class Methods
  class << self
    def create(name, email)
      # TODO: Will initialize a contact as well as add it to the list of contacts
     # contact = ContactDatabase.create(@name,@email)
     Contact.new(@name,@password)
    end

    def find(term)
      # TODO: Will find and return contacts that contain the term in the first name, last name or email

    end

    def all(list)
      # TODO: Return the list of contacts, as is
      list.each do |row|
        puts "User id: #{row[0]} Username:#{row[1]} Email: #{row[2]}"
      end

    end

    def show(list,id)
      # TODO: Show a contact, based on ID
      shown_location = list.select  {|row| row[0] == id}
      if shown_location != nil
          shown_location.each do |row|
        puts "User id: #{row[0]} Username:#{row[1]} Email: #{row[2]}"
      end
      else
        puts "No user found"
      end
    end
  end
end
