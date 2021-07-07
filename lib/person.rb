require 'pry'

class Person
    attr_accessor :bank_account
    attr_reader :name, :hygiene, :happiness

    def initialize(name, happiness=8, hygiene=8)
        @name = name
        @bank_account = 25
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(value)
        if value > 10
            @happiness = 10
        elsif value < 0
            @happiness = 0
        else 
            @happiness = value
        end
    end

    def hygiene=(value)
        if value > 10
            @hygiene = 10
        elsif value < 0
            @hygiene = 0
        else 
            @hygiene = value
        end
    end

    def clean?
        self.hygiene > 7
    end

    def happy?
        self.happiness > 7
    end

    def get_paid(salary)
        self.bank_account+=salary
         "all about the benjamins"
    end

    def take_bath
        self.hygiene+=4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness+=2
        self.hygiene-=3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness+=3
        friend.happiness+=3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    
    def start_conversation(friend, topic)
        return_string = ""

        if topic == "politics"
            self.happiness-=2
            friend.happiness-=2
            return_string = "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness+=1
            friend.happiness+=1
            return_string = "blah blah sun blah rain"
        else
            return_string = "blah blah blah blah blah"
        end

        return return_string
    end
end
# your code goes here
