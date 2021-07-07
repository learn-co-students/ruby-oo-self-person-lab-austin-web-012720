require 'clamp'

class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8   
        @hygiene = 8
    end

    def happiness
        @happiness.clamp(0,10)
    end

    def hygiene
        @hygiene.clamp(0,10)
    end

    def happy?
        if happiness > 7
            true
        else
            false
        end
    end
    
    def clean?
        if hygiene > 7
            true
        else
            false
        end
    end

    def get_paid(salary)
        self.bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(person)
        self.happiness += 3
        person.happiness += 3
        "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)

        talking_point = ""

        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            talking_point = "blah blah partisan blah lobbyist"
        end

        if topic == "weather"
            self.happiness += 1
            person.happiness += 1
            talking_point = "blah blah sun blah rain"
        end

        if topic == "programming"
            talking_point = "blah blah blah blah blah"
        end
        
        talking_point
        
    end

end