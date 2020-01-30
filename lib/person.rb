class Person

  attr_reader :name, :happiness
  attr_accessor :bank_account

def initialize(name)
  @name = name
  @bank_account = 25
  @happiness = 8
  @hygiene = 8

end

def happiness=(value)
  @happiness = value
  @happiness = 10 if value > 10
  @happiness = 0 if value < 0
end

def hygiene
  @hygiene.clamp(0,10)
end

def hygiene=(hygiene)
  @hygiene = hygiene
end

def happy?
  if self.happiness > 7
    true
  else
    false
  end
end

def clean?
  if self.hygiene > 7
    true
  else
    false
  end
end

def get_paid(num)
  @bank_account += num
  "all about the benjamins"
end

def take_bath
  self.hygiene += 4   ### doesn't work with @@
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
  return "Hi #{person.name}! It's #{@name}. How are you?"
end

def start_conversation(person, topic)
  if topic == "politics"
    self.happiness -= 2
    person.happiness = (person.happiness - 2)
    'blah blah partisan blah lobbyist'
  elsif topic == 'weather'
    self.happiness += 1
    person.happiness= (person.happiness + 1)
    'blah blah sun blah rain'
  else
    'blah blah blah blah blah'
  end
end


end
