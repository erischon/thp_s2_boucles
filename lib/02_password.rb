def signup
   puts "Quel est le mot de passe que vous souhaitez enregistrer ?" 
   print "> "
   password = gets.chomp
   return password
end

def login(password) # password = mot de passe enregistré lors de l'inscription
  current_password = ""

  while current_password != password
    puts "Mot de passe du coffre fort ?"
    print "> "
    current_password = gets.chomp
  end

  welcome_screen()

end

def welcome_screen
    system "clear"
    puts "Il y a plein de secrets dans le monde et vous allez les connaitre maintenant ! "
    puts "Pour commencer quel est le numéro de votre CB ?"
    5.times do
        puts "..."
    end
    puts "J'attends..."
    4.times do
        puts "..."
    end
end

def perform
    password = signup()

    login(password)
end

perform()