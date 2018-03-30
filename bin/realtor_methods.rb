def prompt_realtor_username
  user_name = get_username

  while Realtor.all.find_by(user_name: user_name) == nil
    print_invalid_username
    user_name = gets.chomp
  end
  user_name
end

def prompt_realtor_password(user_name)
  password = get_password
  while Realtor.all.find_by(user_name: user_name).password != password
    print_invalid_password
    password = gets.chomp
  end
  password
end

def show_realtor_options(realtor)
  print_realtor_options
  option = gets.chomp.to_i
  do_realtor_option(option, realtor)
end

def do_realtor_option(option, realtor)
  case option
  when 1
    realtor.view_all_listings
    show_realtor_options(realtor)
  when 2
    if realtor.get_your_clients.count == 0
      print_no_clients
    else
      realtor.view_all_clients
    end
    show_realtor_options(realtor)
  when 3
    name = get_name_of_client_for_listings
    available_clients = realtor.get_your_clients
    if !Client.find_by(name: name)
      print_client_not_found
    elsif available_clients.count == 0
      print_no_clients
    else
      client_listings = realtor.get_listings_for_client_by_name(name)
      if client_listings.count == 0
        print_no_match_for_client
      else
        print_client_listings(name, client_listings)
      end
    end
    show_realtor_options(realtor)
  when 4
    realtor.aquire_client
    show_realtor_options(realtor)
  when 5
    name = get_name_of_client_to_drop
    realtor.drop_client_by_name(name)
    show_realtor_options(realtor)
  when 6
    realtor.create_listing
    show_realtor_options(realtor)
  when 7
    drop_address = get_address_of_listing_to_drop
    realtor.drop_listing_by_address(drop_address)
    show_realtor_options(realtor)
  when 8
    client = get_name_of_client_for_deal
    address = get_address_of_listing_for_deal
    possible_address = Listing.all.map do |listing|
      listing.address
    end
    your_clients = realtor.get_your_clients.map do |client|
      client.name
    end

    if your_clients.include?(client) && possible_address.include?(address)
      realtor.close_deal(client, address)
      print_close_deal(realtor)
    else
      print_deal_error
    end
    show_realtor_options(realtor)
  when 9
    goodbye
  else
    print_invalid_realtor_input
    show_realtor_options(realtor)
  end
end

def create_realtor
  company_password_input = get_company_password
  if company_password_input != "HelloWorld"
    print_invalid_company_password
    main_program
  end
  user_name = get_username
  while Realtor.all.find_by(user_name: user_name)
    print_invalid_username_taken
    user_name = gets.chomp
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
  user = Realtor.create(name: name, user_name: user_name, password: password_1, phone: phone, email: email)
end
