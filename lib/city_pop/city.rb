class CityPop::City

    attr_accessor :name, :population

    @@all = []

    def initialize(attributes)
        attributes.each {|key, value| self.send(("#{key}="), value)}  
        save
    end

    def self.all
        @@all
    end

    def save
        @@all << self
    end

end

    # def self.find_by_index(index)
    #     @@all[index]
    # end


