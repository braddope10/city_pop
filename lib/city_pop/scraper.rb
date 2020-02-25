class CityPop::Scraper

    attr_accessor :name, :population
    
    # DRY
    @doc = Nokogiri::HTML(open("https://www.worldatlas.com/articles/the-10-biggest-cities-in-nevada.html"))

    def self.scrape_info
        #Go to URL and send all the hashes(values) through
        
        CityPop::City.new(self.scrape_vegas)
        CityPop::City.new(self.scrape_henderson)
        CityPop::City.new(self.scrape_reno)
        CityPop::City.new(self.scrape_north)
        CityPop::City.new(self.scrape_sparks)

    end

    def self.scrape_vegas # Create a hash with the known location of city name and population using Nokogiri

        {name:  @doc.css("#artReg-table td").children[1].text,
        population: @doc.css("#artReg-table td").children[3].text}

    end

    def self.scrape_henderson

        {name: @doc.css("#artReg-table td").children[9].text,
        population: @doc.css("#artReg-table td").children[11].text}

    end

    def self.scrape_reno
        
        {name: @doc.css("#artReg-table td").children[17].text,
        population: @doc.css("#artReg-table td").children[19].text}
        
    end

    def self.scrape_north

        {name: @doc.css("#artReg-table td").children[25].text,
        population: @doc.css("#artReg-table td").children[27].text}

    end

    def self.scrape_sparks

        {name: @doc.css("#artReg-table td").children[33].text,
        population: @doc.css("#artReg-table td").children[35].text}

    end

end

    # def self.scrape_paragraphs
    #     doc = Nokogiri::HTML(open("https://www.worldatlas.com/articles/the-10-biggest-cities-in-nevada.html"))

    #     paragraphs = doc.css("content-mainTxt p")

    #     paragraphs.map do |paragraph|
    #         binding.pry
    #         # @paragraph = 
    #     end

    # end

