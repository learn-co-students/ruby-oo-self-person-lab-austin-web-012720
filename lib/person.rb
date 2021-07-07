class Person
  attr_reader :name, :hygiene, :happiness
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end 

  def happy?
    if self.happiness <= 7
      return false
    else
      return true
    end 
  end 

  def clean?
    if self.hygiene <= 7
      return false
    else 
      return true
    end 
  end 

  def get_paid(salary)
    self.bank_account += salary
    "all about the benjamins"
  end 

  def hygiene=(num)
    @hygiene = num
    if self.hygiene < 0
      self.hygiene = 0
    elsif self.hygiene > 10
      self.hygiene = 10
    end 
  end 

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end 

  def happiness=(num)
    @happiness = num
    if self.happiness < 0
      self.happiness = 0
    elsif self.happiness > 10
      self.happiness = 10
    end 
  end 

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end 

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness -= 2
      person.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      person.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah" 
    end 
  end 

end 