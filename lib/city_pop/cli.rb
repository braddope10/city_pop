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
        #@cities = []
        #puts "1. Las Vegas"
        #puts "2. Henderson"
        #puts CityPop::Scraper..scrape_vegas
        #binging.pry

        CityPop::City.new(CityPop::Scraper.all)
        
        puts @current_city.name

        binding.pry
        
    end


    def menu
        input = nil

        while input != 'exit'
            puts "Select a city to see the estimated population by entering the number or to see the list again type 'list' or if you'd like to exit type 'exit':"
            input = gets.strip.downcase
            # if user input == 1 scraper.get_pop(1)
            if input == "1"
                @current_city = CityPop::City.new(CityPop::Scraper.scrape_vegas)
                puts "#{@current_city.name} - #{@current_city.population}"
            
            elsif input == "2"
                @current_city = CityPop::City.new(CityPop::Scraper.scrape_henderson)
                puts "#{@current_city.name} - #{@current_city.population}"

            elsif input == "3"
                @current_city = CityPop::City.new(CityPop::Scraper.scrape_reno)
                puts "#{@current_city.name} - #{@current_city.population}"

            elsif input == "4"
                @current_city = CityPop::City.new(CityPop::Scraper.scrape_north)
                puts "#{@current_city.name} - #{@current_city.population}"

            elsif input == "5"
                @current_city = CityPop::City.new(CityPop::Scraper.scrape_sparks)
                puts "#{@current_city.name} - #{@current_city.population}"

            #binding.pry
            # @the_pop = @cities[input.to_i-1]
            # puts "#{@the_pop} - #{@population}"
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