#CLI Controller

class CityPop::CLI
    
    def call
        puts "Here is a list of the largest US cities in terms of population in order:"
        list_cities
        menu
        goodbye
    end

    def list_cities
        #get city names

        #Use here doc ,   gsub helps take off indentation
        puts <<-DOC.gsub /^\s*/, ''
        1. New York, NY has a population of 8,398,748
        2. Los Angeles, CA has a population of 3,990,456
        3. Chicago, IL has a population of
        4. Houston, TX
        5. Phoenix, AZ
        DOC
    
    end


    def menu
        input = nil

        while input != 'exit'
            puts "Select a city to see the estimated population by entering the number or to see the list again type 'list' or if you'd like to exit type 'exit':"
            input = gets.strip.downcase
            case input
            when "1"
                puts "New York, NY has an estimated population of 8,398,748."
            when "2"
                puts "Los Angeles, CA has an estimated population of 3,990,456."
            when "3"
                puts "Chicago, IL has an estimated population of 2,705,994."
            when "4"
                puts "Houston, TX has an estimated population of 2,325,502."
            when "5" 
                puts "Phoenix, AZ has an estimated population of 1,660,272."
            when "list"
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