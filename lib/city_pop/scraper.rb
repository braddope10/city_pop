class CityPop::Scraper

    attr_accessor :name, :population, :paragraph, :url


    def self.all
        # I should return instances of cities
        # Scrape and return values
        self.scrape_info
    end

    def self.scrape_info
        #Go to URL, find the value
        #Extract value
        information = []

        information << self.scrape_names
        binding.pry
        information


    end

    def self.scrape_names
        doc = Nokogiri::HTML(open("https://www.worldatlas.com/articles/the-10-biggest-cities-in-nevada.html"))
        
        citynames = doc.css("h3")
        citynames.map do |name|
        # binding.pry
            @name = name.text[3..17]
            # binding.pry
        end
        
    end

    def self.scrape_pop
        doc = Nokogiri::HTML(open("https://www.worldatlas.com/articles/the-10-biggest-cities-in-nevada.html"))
        # binding.pry
        pop = doc.css("#artReg-table td") 
        
        pop.map do |num|
            # binding.pry
            # @population = 
        end

    end

    def self.scrape_paragraphs
        doc = Nokogiri::HTML(open("https://www.worldatlas.com/articles/the-10-biggest-cities-in-nevada.html"))

        paragraphs = doc.css("content-mainTxt p")

        paragraphs.map do |paragraph|
            binding.pry
            # @paragraph = 
        end

    end

end