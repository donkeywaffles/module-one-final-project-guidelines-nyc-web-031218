def prompt_client_username
  puts "\nPlease input your user name:\n"
  user_name = gets.chomp
  while Client.all.find_by(user_name: user_name) == nil
    print_invalid_username
    user_name = gets.chomp
  end
  user_name
end

def prompt_client_password(user_name)
  puts "\nPlease input your password:\n"
  password = gets.chomp
  while Client.all.find_by(user_name: user_name).password != password
    print_invalid_password
    password = gets.chomp
  end
  password
end

def create_client
  puts "\nPlease enter a user name:\n"
  user_name = gets.chomp
  while Client.all.find_by(user_name: user_name)
    print_invalid_username_taken
    user_name = gets.chomp.to_i
  end
    password_1 = 1
    password_2 = 2
  while password_1 != password_2
    puts "\nPlease enter a password:\n"
    password_1 = gets.chomp
    puts "Please re-enter your password:\n"
    password_2 = gets.chomp
  end
  puts "\nPlease enter your name:\n"
  name = gets.chomp
  puts "Please enter your phone number (xxx-xxx-xxxx):\n"
  phone = gets.chomp
  puts "Please enter your email:\n"
  email = gets.chomp
  ### No for the apartment question
  puts "\nOk. So now for the good stuff!\n"
  puts "What city would you like to live in?\n"
  city = gets.chomp
  puts "What neighborhood would you like to see listings for?\n"
  neighborhood = gets.chomp
  puts "How many bedrooms?\n"
  bedrooms = gets.chomp
  puts "How many bathrooms?\n"
  bathrooms = gets.chomp
  puts "Do you have any pets? Answer 'y' for yes, 'n' for no\n"
  pets = gets.chomp.downcase
  if pets == 'y'
    pets = true
  else
    pets = false
  end
  puts "What is your lowest price?\n"
  lowest_price = gets.chomp
  puts "What is your highest price?\n"
  highest_price = gets.chomp

  user = Client.create(name: name, user_name: user_name, password: password_1,
    phone: phone, email: email, city: city, neighborhood: neighborhood, bedrooms: bedrooms,
    bathrooms: bathrooms, pets: pets, lowest_price: lowest_price, highest_price: highest_price)
end

def show_client_options(client)
  print_client_options
  option = gets.chomp.to_i
  do_client_option(option, client)
end

def do_client_option(option, client)
  case option
  when 1
    show_client_info(client)
    show_client_options(client)
  when 2
    view_realtor_info(client)
    show_client_options(client)
  when 3
    client.destroy
    print_client_destroy
  when 4
    goodbye
  else
    print_invalid_client_option
    show_client_options(client)
  end
end

def view_realtor_info(client)
  if client.realtor_id != nil
    name = client.realtor.name
    phone = client.realtor.phone
    email = client.realtor.email
    print_realtor_info(name, email, phone)
  else
  print_no_realtor_for_client
  end
end

def show_client_info(client)
  print_client_info(client)
end
