class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize(name)
    @bank_account = 25
    @name = name
    @hygiene = 8
    @happiness = 8
  end

  def happiness=(val)
    if val > 10
      @happiness = 10
    elsif val < 0
      @happiness = 0
    else
      @happiness = val
    end
  end

  def hygiene=(val)
    if val > 10
      @hygiene = 10
    elsif val < 0
      @hygiene = 0
    else
      @hygiene = val
    end
  end

  def clean?
    @hygiene > 7
  end
  def happy?
    @happiness > 7
  end

  def get_paid(salary)
    @bank_account += salary
    'all about the benjamins'
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

  def call_friend(friend)
    friend.happiness += 3
    self.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    result = ""
    if topic == "politics"
      result = "blah blah partisan blah lobbyist"
      person.happiness -= 2
      self.happiness -= 2
    elsif topic == "weather"
      result = "blah blah sun blah rain"
      person.happiness += 1
      self.happiness += 1
    else
      result = "blah blah blah blah blah"
    end
    result
  end
end
