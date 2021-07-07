# your code goes here
require "pry"
class Person
  attr_accessor :bank_account
  attr_reader :name
  def initialize(name, happiness = 8, hygiene = 8)
    @name = name
    @bank_account = 25
    @happiness = happiness
    @hygiene = hygiene
  end

  def happiness  #reader
    @happiness.clamp(0,10)
  end
  def happiness=(happiness) #setter
    @happiness = happiness
  end

  def hygiene  #reader
    @hygiene.clamp(0,10)
  end
  def hygiene=(hygiene) #setter
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

  def get_paid(salary)
    self.bank_account += salary
    return "all about the benjamins"

  end

  def  take_bath
    self.hygiene += 4

    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    return "♪ another one bites the dust ♫"
  end

  def call_friend(hm)
    self.happiness += 3
    hm.happiness += 3
    return "Hi #{hm.name}! It's #{self.name}. How are you?"


  end

  def start_conversation(person, topic)
    if topic == 'politics'
      person.happiness -= 2
      self.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif topic == 'weather'
      person.happiness += 1
      self.happiness += 1
      return "blah blah sun blah rain"
    else

      return "blah blah blah blah blah"
    end
  end








end
