def prompt_client_username
  user_name = get_username
  while Client.all.find_by(user_name: user_name) == nil
    print_invalid_username
    user_name = gets.chomp
  end
  user_name
end

def prompt_client_password(user_name)
  password = get_password
  while Client.all.find_by(user_name: user_name).password != password
    print_invalid_password
    password = gets.chomp
  end
  password
end

def create_client
  user_name = get_username
  while Client.all.find_by(user_name: user_name)
    print_invalid_username_taken
    user_name = gets.chomp.to_i
  end
    password_1 = 1
    password_2 = 2
  while password_1 != password_2
    password_1 = get_password
    password_2 = get_password_re_entered
  end
  name = get_name
  phone = get_phone
  email = get_email
  print_preference_option
  city = get_city
  neighborhood = get_neighborhood
  bedrooms = get_bedrooms
  bathrooms = get_bathrooms
  pets = get_pets_has_any
  if pets == 'y'
    pets = true
  else
    pets = false
  end
  lowest_price = get_lowest_price
  highest_price = get_highest_price

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
    update_client_options(client)
  when 4
    client.destroy
    print_client_destroy
    goodbye
  when 5
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

def update_client_options(client)
  print_client_update_options
  option = gets.chomp.to_i
  case option
  when 1
    city = get_city
    client.update(city: city)
    update_client_options(client)
  when 2
    neighborhood = get_neighborhood
    client.update(neighborhood: neighborhood)
    update_client_options(client)
  when 3
    bedrooms = get_bedrooms
    client.update(bedrooms: bedrooms)
    update_client_options(client)
  when 4
    bathrooms = get_bathrooms
    client.update(bathrooms: bathrooms)
    update_client_options(client)
  when 5
    lowest_price = get_lowest_price
    client.update(lowest_price: lowest_price)
    update_client_options(client)
  when 6
    highest_price = get_highest_price
    client.update(highest_price: highest_price)
    update_client_options(client)
  when 7
    pets = get_pets_has_any
    if pets == 'y'
      pets = true
    else
      pets = false
    end
    client.update(pets: pets)
    show_client_options(client)
  when 8
    show_client_options(client)
  else
    print_invalid_client_option_update
    update_client_options(client)
  end

end
