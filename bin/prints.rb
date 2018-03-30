#### PRINT METHODS

def welcome
  puts "\n\n###############################################"
  puts '###############################################'
  puts '##                                           ##'
  puts '##                ' + 'WELCOME TO'.colorize(:cyan) + '                 ##'
  puts '##              ' + 'FLATIRON REALTY'.colorize(:cyan) + '              ##'
  puts '##                                           ##'
  puts '###############################################'
  puts "###############################################\n\n"
end

############### REALTOR ########################
def print_realtor_options
  puts "\n\n###############################################"
  puts "##                  " + "MENU".colorize(:cyan) + "                     ##"
  puts "##-------------------------------------------##"
  puts "##-------------------------------------------##"
  puts "##       " + "1.".colorize(:cyan) + " View all listings                ##"
  puts "##       " + "2.".colorize(:cyan) + " View all your clients            ##"
  puts "##       " + "3.".colorize(:cyan) + " Get clients's listings           ##"
  puts "##       " + "4.".colorize(:cyan) + " Acquire new client               ##"
  puts "##       " + "5.".colorize(:cyan) + " Drop a client                    ##"
  puts "##       " + "6.".colorize(:cyan) + " Create a new listing             ##"
  puts "##       " + "7.".colorize(:cyan) + " Drop a listing                   ##"
  puts "##       " + "8.".colorize(:cyan) + " Close a deal                     ##"
  puts "##       " + "9.".colorize(:cyan) + " Exit program                     ##"
  puts '###############################################'
  puts "\nChoose an option".colorize(:cyan)+ " (" + "1".colorize(:cyan)+ " - " + "9".colorize(:cyan) + "):"
  puts "--------------------------\n"
end

def print_all_clients(clients)
  clients.each_with_index do |client, index|
    puts "------------------------------------------"
    puts "  Client ##{index + 1}: ".colorize(:cyan)
    puts " - - - - - - - - - - - - - - - - - - - - -"
    puts "  Name         : #{client.name}"
    puts "  E-mail       : #{client.email}"
    puts "  Phone        : #{client.phone}"
    puts "  City         : #{client.city}"
    puts "  Neighborhood : #{client.neighborhood}"
    puts "  Bedrooms     : #{client.bedrooms}"
    puts "  Bathrooms    : #{client.bathrooms}"
    puts "  Price Range  : #{client.lowest_price} - #{client.highest_price}"
    puts "  Pet owner    : #{client.pets}"
    puts "------------------------------------------"
  end
end

def print_all_listings
  Listing.all.each_with_index do |listing, index|
    puts "------------------------------------------"
    puts "  Listing ##{index + 1}:".colorize(:cyan)
    puts " - - - - - - - - - - - - - - - - - - - - -"
    puts "  Address      : #{listing.address}"
    puts "  City         : #{listing.city}"
    puts "  Neighborhood : #{listing.neighborhood}"
    puts "  Bedrooms     : #{listing.bedrooms}"
    puts "  Bathrooms    : #{listing.bathrooms}"
    puts "  Price        : #{listing.price}"
    puts "  Property Type: #{listing.property_type}"
    puts "  Pet Friendly : #{listing.pets}"
    puts "------------------------------------------"
  end
end

def print_client_listings(name, client_listings)
  puts "\n\n###########################################"
  puts "          Listings for #{name}".colorize(:cyan)
  puts "###########################################\n"
  client_listings.each_with_index do |listing, index|
    puts "------------------------------------------"
    puts "  Listing ##{index + 1}:"
    puts " - - - - - - - - - - - - - - - - - - - - -"
    puts "  Address      : #{listing.address}"
    puts "  City         : #{listing.city}"
    puts "  Neighborhood : #{listing.neighborhood}"
    puts "  Bedrooms     : #{listing.bedrooms}"
    puts "  Bathrooms    : #{listing.bathrooms}"
    puts "  Price        : #{listing.price}"
    puts "  Property Type: #{listing.property_type}"
    puts "  Pet Friendly : #{listing.pets}"
    puts "------------------------------------------"
  end
end

def print_no_match_for_client
  puts "\n --------------------------------------------------"
  puts "|          " + "NO MATCH FOUND FOR YOU CLIENT".colorize(:cyan) + "           |"
  puts "|- - - - - - - - - - - - - - - - - - - - - - - - - |"
  puts "|           You have a very picky client           |"
  puts " --------------------------------------------------\n"
end
def print_no_clients
  puts "\n --------------------------------------------------"
  puts "|       " + "YOU CURRENTLY DON'T HAVE ANY CLIENTS".colorize(:cyan) + "       |"
  puts "|- - - - - - - - - - - - - - - - - - - - - - - - - |"
  puts "|  Hint: Select option #4 to aquire a new client   |"
  puts " --------------------------------------------------\n"
end

def print_no_clients_available
  puts "\n --------------------------------------------------"
  puts "|          " + "THERE ARE NO CLIENTS AVAILABLE".colorize(:cyan) + "          |"
  puts "|- - - - - - - - - - - - - - - - - - - - - - - - - |"
  puts "|                   Hang in there                  |"
  puts " --------------------------------------------------\n"
end

def print_close_deal(realtor)
  puts "\n --------------------------------------------------"
  puts "           CONGRATULATIONS #{realtor.name}".colorize(:cyan)
  puts " - - - - - - - - - - - - - - - - - - - - - - - - -  "
  puts "      You closed the deal and made some bank!       "
  puts " --------------------------------------------------\n"
end

def print_client_not_found
  puts "\n --------------------------------------------------"
  puts "|            " + "COULD NOT FIND YOUR CLIENT".colorize(:cyan) + "            |"
  puts "|- - - - - - - - - - - - - - - - - - - - - - - - - |"
  puts "|      Input the correct name for the client       |"
  puts " --------------------------------------------------\n"
end

def print_listing_not_found
  puts "\n --------------------------------------------------"
  puts "|            " + "COULD NOT FIND THAT LISTING".colorize(:cyan) + "           |"
  puts "|- - - - - - - - - - - - - - - - - - - - - - - - - |"
  puts "|            Input the correct address             |"
  puts " --------------------------------------------------\n"
end

def print_invalid_realtor_input
  puts "\n ---------------------------------------------------"
  puts "|                   " + "INVALID INPUT".colorize(:cyan) + "                   |"
  puts "|- - - - - - - - - - - - - - - - - - - - - - - - - -|"
  puts "|        Please enter a numeric value (1-9)         |"
  puts " ---------------------------------------------------\n"
end

def print_invalid_company_password
  puts "\n ---------------------------------------------------"
  puts "|            " + "INVALID COMPANY PASSWORD".colorize(:cyan) + "               |"
  puts "|- - - - - - - - - - - - - - - - - - - - - - - - - -|"
  puts "|               BACK TO MAIN PAGE!                  |"
  puts " ---------------------------------------------------\n"
end

################### CLIENT ######################
def print_client_options

  puts "\n\n###############################################"
  puts "##                  " + "MENU".colorize(:cyan) + "                     ##"
  puts "##-------------------------------------------##"
  puts "##-------------------------------------------##"
  puts "##       " + "1.".colorize(:cyan) + " View your profile                ##"
  puts "##       " + "2.".colorize(:cyan) + " View your realtor information    ##"
  puts "##       " + "3.".colorize(:cyan) + " Update your preferences          ##"
  puts "##       " + "4.".colorize(:cyan) + " Delete your account              ##"
  puts "##       " + "5.".colorize(:cyan) + " Exit program                     ##"
  puts '###############################################'
  puts "\nChoose an option".colorize(:cyan)+ " (" + "1".colorize(:cyan)+ " - " + "5".colorize(:cyan) + "):"
  puts "--------------------------\n"
end

def print_client_update_options
  puts "\n\n###############################################"
  puts "##                  " + "MENU".colorize(:cyan) + "                     ##"
  puts "##-------------------------------------------##"
  puts "##-------------------------------------------##"
  puts "##       " + "1.".colorize(:cyan) + " Change city                      ##"
  puts "##       " + "2.".colorize(:cyan) + " Change neighborhood              ##"
  puts "##       " + "3.".colorize(:cyan) + " Change number of bedrooms        ##"
  puts "##       " + "4.".colorize(:cyan) + " Change number of bathrooms       ##"
  puts "##       " + "5.".colorize(:cyan) + " Change lowest price              ##"
  puts "##       " + "6.".colorize(:cyan) + " Change highest price             ##"
  puts "##       " + "7.".colorize(:cyan) + " Change pet option                ##"
  puts "##       " + "8.".colorize(:cyan) + " Go back to main options          ##"
  puts '###############################################'
  puts "\nChoose an option".colorize(:cyan)+ " (" + "1".colorize(:cyan)+ " - " + "8".colorize(:cyan) + "):"
  puts "--------------------------\n"
end

def print_client_destroy
  puts "\n------------------------------------------------------"
  puts "------------------------------------------------------"
  puts "| |      " + "THANK YOU FOR USING OUT DOPE APP".colorize(:cyan) + "          | |"
  puts "| |- - - - - - - - - - - - - - - - - - - - - - - - | |"
  puts "| |                  GOODBYE!                      | |"
  puts "------------------------------------------------------"
  puts "------------------------------------------------------\n"
end

def print_invalid_client_option
  puts "\n ---------------------------------------------------"
  puts "|                 " + "INVALID INPUT".colorize(:cyan) + "                     |"
  puts "|- - - - - - - - - - - - - - - - - - - - - - - - - -|"
  puts "|       Please enter a numeric value (1-4)          |"
  puts " ---------------------------------------------------\n"
end

def print_invalid_client_option_update
  puts "\n ---------------------------------------------------"
  puts "|                 " + "INVALID INPUT".colorize(:cyan) + "                     |"
  puts "|- - - - - - - - - - - - - - - - - - - - - - - - - -|"
  puts "|       Please enter a numeric value (1-7)          |"
  puts " ---------------------------------------------------\n"
end

def print_no_realtor_for_client
  puts "\n ---------------------------------------------------"
  puts "|    " + "SORRY. YOU DO NOT HAVE AN ASSIGNED REALTOR".colorize(:cyan) + "     |"
  puts "|- - - - - - - - - - - - - - - - - - - - - - - - - -|"
  puts "|      Please be patient and check again later      |"
  puts " ---------------------------------------------------\n"
end

def print_client_info(client)
  puts "\n\n##########################################"
  puts "          This is your information".colorize(:cyan)
  puts "###########################################\n"
  puts "   User Name: #{client.user_name}"
  puts "   Email: #{client.email}"
  puts "   Phone: #{client.phone}"
  puts "   City of choice: #{client.city}"
  puts "   Neighborhood of choice: #{client.neighborhood}"
  puts "   Number of bedrooms: #{client.bedrooms}"
  puts "   Number of bathrooms: #{client.bathrooms}"
  puts "   Lowest asking price: #{client.lowest_price}"
  puts "   Maximum price: #{client.highest_price}"
  value = "no"
  if client.pets
    value = "yes"
  end
  puts "   Pet accessable: #{value}"
  puts "###########################################\n"
end

def print_realtor_info(name, email, phone)
  puts "\n\n##########################################"
  puts "            This is your realtor".colorize(:cyan)
  puts "###########################################\n"
  puts "   Name: #{name}"
  puts "   Email: #{email}"
  puts "   Phone: #{phone}"
  puts "###########################################\n"
end

########## REALTOR && CLIENT #######################
def print_invalid_account_input
  puts "\n ---------------------------------------------------"
  puts "|                   " + "INVALID INPUT".colorize(:cyan) + "                   |"
  puts "|- - - - - - - - - - - - - - - - - - - - - - - - - -|"
  puts "|       Please input 'y' for yes and 'n' for no     |"
  puts " ---------------------------------------------------\n"
end

def print_invalid_username_taken
  puts "\n ---------------------------------------------------"
  puts "|           " + "SORRY, THAT USER NAME IS TAKEN".colorize(:cyan) + "          |"
  puts "|- - - - - - - - - - - - - - - - - - - - - - - - - -|"
  puts "|           Please enter another user name          |"
  puts " ---------------------------------------------------\n"
end

def print_invalid_username
  puts "\n ---------------------------------------------------"
  puts "|            " + "THAT USER NAME DOES NOT EXIST".colorize(:cyan) + "          |"
  puts "|- - - - - - - - - - - - - - - - - - - - - - - - - -|"
  puts "|               Enter a valid user name             |"
  puts " ---------------------------------------------------\n"
end

def print_invalid_password
  puts "\n ---------------------------------------------------"
  puts "|                   " + "INVALID PASSWORD".colorize(:cyan) + "                |"
  puts "|- - - - - - - - - - - - - - - - - - - - - - - - - -|"
  puts "|                Enter a valid password             |"
  puts " ---------------------------------------------------\n"
end

def print_invalid_user_input
  puts "\n ---------------------------------------------------"
  puts "|                   " + "INVALID INPUT".colorize(:cyan) + "                   |"
  puts "|- - - - - - - - - - - - - - - - - - - - - - - - - -|"
  puts "|  Please input 'r' for realtor and 'c' for client  |"
  puts " ---------------------------------------------------\n"
end

def goodbye
  puts "\n\n###############################################"
  puts '###############################################'
  puts '##                                           ##'
  puts '##            ' + 'THANK YOU FOR USING'.colorize(:cyan) + '            ##'
  puts '##              ' + 'FLATIRON REALTY'.colorize(:cyan) + '              ##'
  puts '##                                           ##'
  puts '###############################################'
  puts "###############################################\n\n"
end

def print_preference_option
  puts "\n      Enter your following preferences:".colorize(:cyan)
  puts "If you don't have any, press the enter/shift key:".colorize(:cyan)
  puts "--------------------------------------------------\n"
end

def print_acquired_client(client)
  puts "\n-------------------------------------------------"
  puts "            You have been matched with:".colorize(:cyan)
  puts "- - - - - - - - - - - - - - - - - - - - - - - - -"
  puts "                    #{client}                    "
  puts "-------------------------------------------------\n"
end

def print_info_instructions
  puts "\n -------------------------------------------------------------"
  puts "|  " + "Please enter the following information about the listing:".colorize(:cyan) + "  |"
  puts " -------------------------------------------------------------\n"
end

def print_deal_error
  puts "\n ---------------------------------------------------"
  puts "|     " + "INVALID CLIENT NAME OR LISTING ADDRESS".colorize(:cyan) + "        |"
  puts "|- - - - - - - - - - - - - - - - - - - - - - - - - -|"
  puts "|                 Please try again                  |"
  puts " ---------------------------------------------------\n"
end
