def say_hello(first_name)
  puts "Bonjour " + first_name
end

def ask_first_name
  puts "Ton prénom ? "
  print "> "
  first_name = gets.chomp
  return first_name
end

first_name = ask_first_name
say_hello first_name