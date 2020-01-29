# your code goes here
class Person

    attr_reader :name, :happiness

    attr_accessor :hygiene, :bank_account

    def initialize(name, bank_account= 25)
        @name = name
        @bank_account = bank_account
        @happiness = 8
        @hygiene = 8
    end

    def happiness= (happiness)
        @happiness = happiness #set the passed in value to your instance variable
        
        if @happiness < 0
            @happiness = 0
        elsif @happiness > 10
            @happiness = 10
        elsif @happiness = (1..10)
            @happiness = happiness
        end
    end

    def hygiene= (hygiene)
        @hygiene = hygiene #set the passed in value to your instance variable
        
        if @hygiene < 0
            @hygiene = 0
        elsif @hygiene > 10
            @hygiene = 10
        elsif @hygiene = (1..10)
            @hygiene = hygiene
        end
    end

    # OPTIONAL SOLUTION
    # @hygiene = hygiene
    # @hygiene = 10 if @hygiene > 10
    # @hygiene = 0 if @hygiene < 0


    def clean?
        if @hygiene > 7
        end
    end

    def happy?
        if @happiness > 7
            return true
        else
            return false
        end
    end

    def clean?
        if @hygiene > 7
            return true
        else
            return false
        end
    end

    def take_bath
        self.hygiene= (@hygiene +=4) #passed in increment value and checked if it's within 1-10
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene= (@hygiene -=3)
        self.happiness= (@happiness +=2)
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            person.happiness -= 2
            self.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            person.happiness += 1
            self.happiness += 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

end