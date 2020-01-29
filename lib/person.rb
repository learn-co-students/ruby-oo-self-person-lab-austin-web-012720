class Person
    attr_reader :name 
    attr_accessor :bank_account, :happiness
    def initialize(name)
        @name = name 
        @bank_account = 25
        @happiness = 8
    end

   def happiness=(happiness_level)
        if happiness_level > 10
            @happiness = 10 
        elsif happiness_level < 0
            @happiness = 0 
        else
            @happiness = happiness_level
        end

   end



end

