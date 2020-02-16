class CityPop::City

    attr_accessor :name, :population

    @@all = []

    def initialize(name, population)
        @name = name
        @population = population
        save
    end

    def save
        @@all << self
    end

end

    # def self.find_by_index(index)
    #     @@all[index]
    # end


