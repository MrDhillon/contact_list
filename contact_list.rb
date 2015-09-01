require 'pry'
require_relative 'contact'
require_relative 'contact_database'

# TODO: Implement command line interaction
# This should be the only file where you use puts and gets


def operation

  puts "Please input a command or type help for menu"
  input = gets.chomp.downcase.split(" ")
  string = input[0]
  number = input[1]

  if string == "help"
    puts "Here is a list of commands:
              new - Create a new contact
              list - List all contacts
              show - Show a contact
              find - Find a contact"
  end

  if string == "new"
    puts "What is the contact name?"
    name_input = gets.chomp
    puts "what is the contact email?"
    email_input = gets.chomp
    puts "Would you like to add this to your contacts name:#{name_input} email:#{email_input}?"
    yes_no = gets.chomp.downcase

      if yes_no == "yes"
        contact = Contact.create(name_input,email_input)
        ContactDatabase.create(name_input,email_input)
      else
        puts "The information was not added"
      end
  elsif string =="list"
         list = ContactDatabase.all
         Contact.all(list)
        # puts contacts
        # contacts.each { |line| puts line.to_s }
  elsif string == "show"
        show_id = ContactDatabase.show
        Contact.show(show_id,number)
  end

end


operation

