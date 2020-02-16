class CityPop::Scraper

    attr_accessor :name, :population, :paragraph, :url

    @doc = Nokogiri::HTML(open("https://www.worldatlas.com/articles/the-10-biggest-cities-in-nevada.html"))

    def self.all
        # I should return instances of cities
        # Scrape and return values
        self.scrape_info
    end

    def self.scrape_info
        #Go to URL, find the value
        #Extract value
        information = []

        information << self.scrape_vegas
        information << self.scrape_henderson
        information << self.scrape_reno
        information << self.scrape_north
        information << self.scrape_sparks

        # binding.pry
        information
        ######binding.pry
      
    end

    # def self.scrape_names
    #     # citynames = @doc.css("h3")
    #     citynames = @doc.css("#artReg-table td").children[1]
    #     citynames.map do |name|
    #     # binding.pry
    #         @name = name.text[3..17]
    #         # binding.pry
    #     end
    #     binding.pry
    # end

    def self.scrape_vegas  #(num)

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

