class CityPop::City

    attr_accessor :name, :population, :nickname, :url


    def self.all
        # I should return instances of cities
        # Scrape and return values
        self.scrape_pop
    end

    def self.scrape_pop
        #Go to URL, find the value
        #Extract value
        populations = []

        city_1 = self.new 
        city_1.name = "New York, NY"
        city_1.population = "8,601,186"
        city_1.nickname = "(The Big Apple)"
        city_1.url = "https://www.moving.com/tips/the-top-10-largest-us-cities-by-population/"

        city_2 = self.new
        city_2.name = "Los Angeles, CA"
        city_2.population = "4,057,841"
        city_2.nickname = "(City of Angels)"
        city_2.url = "https://www.moving.com/tips/the-top-10-largest-us-cities-by-population/"
        
        city_3 = self.new
        city_3.name = "Chicago, IL"
        city_3.population = "2,679,044"
        city_3.nickname = "(The Windy City)"
        city_3.url = "https://www.moving.com/tips/the-top-10-largest-us-cities-by-population/"
        
        city_4 = self.new 
        city_4.name = "Houston, TX"
        city_4.population = "2,359,480"
        city_4.nickname = "(H Town)"
        city_4.url = "https://www.moving.com/tips/the-top-10-largest-us-cities-by-population/"

        city_5 = self.new
        city_5.name = "Phoenix, AZ"
        city_5.population = "1,711,356"
        city_5.nickname = "(The Valley of the Sun)"
        city_5.url = "https://www.moving.com/tips/the-top-10-largest-us-cities-by-population/"
    

        [city_1, city_2, city_3, city_4, city_5]
    end


end
