#CLI Controller

class CityPop::CLI
    
    def call
        puts "Here is a list of the most populated cities in Nevada in order:"
        list_cities
        menu
        goodbye
    end

    def list_cities
        #get city name
        @cities = CityPop::Scaper.all
        @cities.each.with_index(1) do |city, i|
            puts "#{i}. #{city.name}"
        end
    end


    def menu
        input = nil

        while input != 'exit'
            puts "Select a city to see the estimated population by entering the number or to see the list again type 'list' or if you'd like to exit type 'exit':"
            input = gets.strip.downcase

            if input.to_i > 0
                the_pop = @cities[input.to_i-1]
                puts "#{the_pop.name}"
            elsif input == "list"
                puts
                list_cities
            else
                puts "You look lost. Type 'list' to review your options:"
            end
        end
    end

    def goodbye
        puts "See you later alligator!"
    end

end