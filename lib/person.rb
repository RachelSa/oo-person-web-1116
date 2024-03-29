# your code goes here
class Person
  attr_accessor :happiness, :bank_account, :person, :hygiene


  def initialize(person)
    @person = person
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def name
    @person
  end

  def happiness=(num)
    if num > 10
      @happiness = 10
    elsif num < 0
        @happiness = 0
    else @happiness = num
     end 
  end

   def hygiene=(num)
    if num > 10
      @hygiene = 10
    elsif num < 0
        @hygiene = 0
    else @hygiene = num
     end 
  end

  def happy?
    @happiness > 7 ? true : false
  end

  def clean?
    @hygiene > 7 ? true : false
  end

  def get_paid(salary)
    self.bank_account += salary
    return 'all about the benjamins'
  end

  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    return "♪ another one bites the dust ♫"
  end

  def call_friend(person)
    self.happiness += 3
    person.happiness += 3
    return "Hi #{person.name}! It's #{@person}. How are you?"

  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness -= 2
      person.happiness -= 2
      return 'blah blah partisan blah lobbyist'
     elsif topic == "weather"
      self.happiness += 1
      person.happiness += 1
      return 'blah blah sun blah rain'
   else return 'blah blah blah blah blah' 
   end
 end
         

end
