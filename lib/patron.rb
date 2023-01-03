class Patron
    attr_reader :name,
                :age,
                :spending_money,
                :interests
    def initialize(name, age, spending_money = 20)
        @name = name
        @age = age
        @spending_money = spending_money
        @interests = []
    end

    def add_interest(exhibit)
        interests << exhibit
    end
end