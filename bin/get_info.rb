def get_username
  puts "\nEnter your username:".colorize(:cyan)
  puts "--------------------\n"
  gets.chomp
end

def get_password
  puts "\nEnter your password:".colorize(:cyan)
  puts "---------------------\n"
  gets.chomp
end

def get_password_re_entered
  puts "\nRe-enter your password:".colorize(:cyan)
  puts "------------------------\n"
  gets.chomp
end

def get_name
  puts "\nEnter your name:".colorize(:cyan)
  puts "-----------------\n"
  gets.chomp
end

def get_phone
  puts "\nEnter your phone number (xxx-xxx-xxxx):".colorize(:cyan)
  puts "----------------------------------------\n"
  gets.chomp
end

def get_email
  puts "\nEnter your email:".colorize(:cyan)
  puts "------------------\n"
  gets.chomp
end

def get_city
  puts "\nCity:".colorize(:cyan)
  puts "------\n"
  gets.chomp
end

def get_neighborhood
  puts "\nNeighborhood:".colorize(:cyan)
  puts "--------------\n"
  gets.chomp
end

def get_bedrooms
  puts "\nNumber of bedrooms:".colorize(:cyan)
  puts "--------------------\n"
  gets.chomp.to_i
end

def get_bathrooms
  puts "\nNumber of bathrooms:".colorize(:cyan)
  puts "---------------------\n"
  gets.chomp.to_i
end

def get_pets_has_any
  puts "\n    Do you have any pets?".colorize(:cyan)
  puts "Enter 'y' for yes, 'n' for no:".colorize(:cyan)
  puts "-------------------------------\n"
  gets.chomp.downcase
end

def get_lowest_price
  puts "\nLowest price:".colorize(:cyan)
  puts "--------------\n"
  gets.chomp.to_f
end

def get_highest_price
  puts "\nHighest price:".colorize(:cyan)
  puts "---------------\n"
  gets.chomp.to_f
end

def get_name_of_client_for_listings
  puts "\nPlease input the name of a client you would like to match listings to:".colorize(:cyan)
  puts "-----------------------------------------------------------------------\n"
  gets.chomp
end

def get_name_of_client_to_drop
  puts "\nPlease input the name of the client you would like to drop:".colorize(:cyan)
  puts "------------------------------------------------------------\n"
  gets.chomp
end

def get_address_of_listing_to_drop
  puts "\nEnter the address of the listing you would like to drop:".colorize(:cyan)
  puts "---------------------------------------------------------\n"
  gets.chomp
end

def get_name_of_client_for_deal
  puts "Enter the name of the lucky client:".colorize(:cyan)
  puts "------------------------------------"
  gets.chomp
end

def get_address_of_listing_for_deal
  puts "\nEnter the address of the lisitng you sold:".colorize(:cyan)
  puts "-------------------------------------------\n"
  gets.chomp
end

def get_company_password
  puts "\nPlease enter the COMPANY'S password to continue:".colorize(:cyan)
  puts "-------------------------------------------------\n"
  gets.chomp
end

def get_user_check
  puts "\n      Are you a realtor or a client?".colorize(:cyan)
  puts "Please input 'r' for realtor and 'c' for client:".colorize(:cyan)
  puts "--------------------------------------------------\n"
  gets.chomp.downcase
end

def get_existing_account_check
  puts "\n        Do you have an account?".colorize(:cyan)
  puts "Please input: 'y' for yes and 'n' for no:".colorize(:cyan)
  puts "-------------------------------------------\n"
  gets.chomp.downcase
end

def get_continue_check
  puts "\n     To CONTINUE: press enter ".colorize(:cyan)
  puts "   To EXIT: type the word 'exit'".colorize(:cyan)
  puts "--------------------------------------\n"
  gets.chomp.downcase
end

def get_address
  puts "\nAddress:".colorize(:cyan)
  puts "---------\n"
  gets.chomp
end

def get_price
  puts "\nPrice:".colorize(:cyan)
  puts "-------\n"
  gets.chomp.to_f
end

def get_property_type
  puts "\nProperty type:".colorize(:cyan)
  puts "---------------\n"
  gets.chomp
end

def get_pet_friendly
  puts "\n        Pet Friendly? ".colorize(:cyan)
  puts "Input 'y' for yes and 'n' for no".colorize(:cyan)
  puts "----------------------------------\n"
  gets.chomp.downcase
end
