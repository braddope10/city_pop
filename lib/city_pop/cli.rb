#CLI Controller

class CityPop::CLI
    
    def call
        puts "Here is a list of the most populated cities in Nevada in order:"
        list_cities
        menu
        goodbye
    end

    def list_cities # list cities 
        CityPop::Scraper.all.each_with_index do |name, num|
            puts "#{num+1}. #{name[:name]}"
            #       0 + 1      "Las Vegas"
        end

        puts "Select a city to see the estimated population by entering the number or to see the list again type 'list' or if you'd like to exit type 'exit':"

    end

    def current_city_info # DRY
        puts "#{@current_city.name} - #{@current_city.population}"
    end

    def menu
        
        input = nil

        # If the input equals 'exit' you will not enter the loop
        while input != 'exit'

              input = gets.strip.downcase
            
            if input == "1" 
                @current_city = CityPop::City.new(CityPop::Scraper.scrape_vegas)
                current_city_info
            
            elsif input == "2"
                @current_city = CityPop::City.new(CityPop::Scraper.scrape_henderson)
                current_city_info

            elsif input == "3"
                @current_city = CityPop::City.new(CityPop::Scraper.scrape_reno)
                current_city_info
                
            elsif input == "4"
                @current_city = CityPop::City.new(CityPop::Scraper.scrape_north)
                current_city_info

            elsif input == "5" 
                @current_city = CityPop::City.new(CityPop::Scraper.scrape_sparks)
                current_city_info

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