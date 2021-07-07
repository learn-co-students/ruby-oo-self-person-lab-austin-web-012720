# your code goes here
class Person
    attr_reader :name, :hygiene, :happiness
    attr_accessor :bank_account

    def initialize (name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def hygiene=(num)
        @hygiene = num
        if self.hygiene > 10
            self.hygiene = 10
        elsif self.hygiene < 0
            self.hygiene = 0
        end
    end

    def happiness=(num)
        @happiness = num
        if self.happiness > 10
            self.happiness = 10
        elsif self.happiness < 0
            self.happiness = 0
        end
    end

    def happy?
        if self.happiness <= 7
            return false
        else return true
        end
    end

    def clean?
        if self.hygiene <= 7
            return false
        else return true
        end
    end

    def get_paid(salary)
        self.bank_account += salary
        p "all about the benjamins"
    end 

    def take_bath
        self.hygiene += 4
        p "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        p "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        p "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(other_person, topic)
        if topic == "politics"
            self.happiness -= 2
            other_person.happiness -= 2
            p "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            other_person.happiness += 1
            p "blah blah sun blah rain"
        else
            p "blah blah blah blah blah"
        end
    end

end

