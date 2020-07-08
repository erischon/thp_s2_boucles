def half_pyramid

    nb_floors = 0

    while nb_floors < 1 || nb_floors > 25
      puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (entre 1 et 25)"
      print "> "
      nb_floors = gets.chomp.to_i
    end
    
    nb_floors.times do |floor|
      x = nb_floors - 1 - floor
      y = 1 + floor
    
      x.times do
        print " "
      end
    
      y.times do
        print "#"
      end
    
      puts ""
    end

end

def full_pyramid

    nb_floors = 0

    while nb_floors < 1 || nb_floors > 25
      puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (entre 1 et 25)"
      print "> "
      nb_floors = gets.chomp.to_i
    end

    nb_floors.times do |floor| # pour chaque ligne
        nb_diese = floor * 2 + 1
        max_width = (nb_floors - 1) * 2 + 1
        
        length_ligne = max_width - nb_diese
        espaces = length_ligne / 2

        puts ("#" * nb_diese).rjust(nb_diese + espaces)    

    end
end

def wtf_pyramid

  nb_floors = 0

  while nb_floors < 1 || nb_floors > 25 || nb_floors.even?
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (entre 1 et 25 et impair)"
    print "> "
    nb_floors = gets.chomp.to_i
  end

  nb_floors.times do |floor| # pour chaque ligne

      # Si étage est suppérieur ou égal à la moitié : on réduit
      if floor >= (nb_floors.to_f / 2.0).ceil
          nb_diese = (nb_floors - floor - 1) * 2 + 1
      # Si étage est inférieur à la moitié : on augmente
      else
          nb_diese = floor * 2 + 1
      end
      
      max_width = (nb_floors - 1) * 2 + 1

      length_ligne = max_width - nb_diese
      espaces = length_ligne / 2

      puts ("#" * nb_diese).rjust(nb_diese + espaces)

  end
end

wtf_pyramid()


# full_pyramid()
