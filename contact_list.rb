require_relative 'contact'
require_relative 'contact_database'

# TODO: Implement command line interaction
# This should be the only file where you use puts and gets


def operation

  puts "Please input a command or type help for menu"
  input = gets.chomp.downcase

  if input == "help"
    puts "Here is a list of commands:
              new - Create a new contact
              list - List all contacts
              show - Show a contact
              find - Find a contact"
  end

end

operation