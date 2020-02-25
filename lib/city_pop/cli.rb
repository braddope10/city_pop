#CLI Controller

class CityPop::CLI
    
    def call
        # Call on the scrape_info method in the Scraper class to retrieve the objects
        CityPop::Scraper.scrape_info
        puts "Here is a list of the most populated cities in Nevada in order:"
        list_cities
        menu
        goodbye
    end

    
    def list_cities # Call on the all method in the City class and iterate through them using each_with_index
            CityPop::City.all.each_with_index do |city, num|
            puts "#{num+1}. #{city.name}"
            #       0 + 1    "Las Vegas"
        end
        
        puts "Select a city to see the estimated population by entering the number or to see the list again type 'list' or if you'd like to exit type 'exit':"

    end

    def current_city_info # Using dot notation gather the name value and population value from the intsance variable @current_city
        puts "#{@current_city.name} - #{@current_city.population}"
    end

    def menu
        self
        input = nil

        # If the input equals 'exit' you will not enter the loop
        while input != 'exit'

              input = gets.strip.downcase
            
            if (1..CityPop::City.all.size).include?(input.to_i) # Call on the all method in City class, retrieve the correct element using brackets, and set it equal to an instance variable
                @current_city = CityPop::City.all[input.to_i-1]
                current_city_info

            elsif input == "list"
                list_cities

            else
                puts "You look lost. Type 'list' to review your options:"

            end
        end
    end

    # def menu
    #     self
    #     input = nil

    #     # If the input equals 'exit' you will not enter the loop
    #     while input != 'exit'

    #           input = gets.strip.downcase
            
    #         if input == "1" # Call on the all method in City class, retrieve the correct element using brackets, and set it equal to an instance variable
    #             @current_city = CityPop::City.all[0]
    #             current_city_info
            
    #         elsif input == "2"
    #             @current_city = CityPop::City.all[1]
    #             current_city_info

    #         elsif input == "3"
    #             @current_city = CityPop::City.all[2]
    #             current_city_info
                
    #         elsif input == "4"
    #             @current_city = CityPop::City.all[3]
    #             current_city_info

    #         elsif input == "5" 
    #             @current_city = CityPop::City.all[4]
    #             current_city_info

    #         elsif input == "list"
    #             list_cities

    #         else
    #             puts "You look lost. Type 'list' to review your options:"

    #         end
    #     end
    # end
    
    def goodbye
        puts "See you later alligator!"
    end

end