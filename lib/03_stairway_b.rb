def average_finish_time

    total_tours = 0
    nb_parties = 100

    nb_parties.times do
        marche = 0
        tour = 0

        while marche < 10
            tour += 1
            dice = rand(6) + 1
            if dice == 5 || dice == 6
                marche += 1
            elsif dice == 1
                marche -= 1
            else

            end
        end

        total_tours += tour
    end

    puts "Moyenne de tours sur " + nb_parties.to_s + " parties : " + (total_tours / nb_parties).to_s
end

average_finish_time()
