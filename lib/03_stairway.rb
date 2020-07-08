marche = 0
tour = 0

while marche < 10
    tour += 1
    print "(Tour " + tour.to_s + ") "
    dice = rand(6) + 1
    puts "Le résultat du dé : " + dice.to_s
    if dice == 5 || dice == 6
        marche += 1
        puts "Tu as avancé d'une marche, tu es maintenant à la marche " + marche.to_s
    elsif dice == 1
        marche -= 1
        puts "Tu as reculé d'une marche, tu es maintenant à la marche " + marche.to_s
    else
        puts "Rien ne se passe, tu es encore à la marche " + marche.to_s
    end
end

puts "Gagné !!!!"