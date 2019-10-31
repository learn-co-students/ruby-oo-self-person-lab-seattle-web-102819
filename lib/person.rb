# your code goes here



class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene
   
 def initialize(name)
      @name = name
      @hygiene = 8
      @happiness=8
      @bank_account=25
    end

    # def bank_account
    #     @bank_account
    # end

    # def bank_account=(new_bank_account)
    #     @bank_account = new_bank_account
    # end
  def happiness=(happiness)
    @happiness=happiness
    if @happiness>10 
    @happiness=10
    elsif @happiness < 0
    @happiness = 0
   end 
 end 
 def hygiene=(hygiene)
    @hygiene=hygiene
    if @hygiene>10 
    @hygiene=10
    elsif @hygiene < 0
    @hygiene = 0
   end 
 end 


 def clean?
  
      if @hygiene > 7
          true
         else 
    
         false
        end
    end 
 def happy?
  
        if @happiness > 7
              true
        else 
        
           false
        end
            
    end

  def get_paid(salary)
     @bank_account+=salary
     return "all about the benjamins"
  end 

  
  def take_bath
   @hygiene += 4
   self.hygiene=(@hygiene)
   "♪ Rub-a-dub just relaxing in the tub ♫"
 end
  
 def work_out
   @hygiene -= 3
   @happiness += 2
   self.hygiene=(@hygiene)
   self.happiness=(@happiness)
   "♪ another one bites the dust ♫"
 end

   
 def call_friend(friend)
   self.happiness += 3
   friend.happiness += 3
   "Hi #{friend.name}! It's #{self.name}. How are you?"
 end

 def start_conversation(friend, topic)
   if topic == "politics"
     friend.happiness -= 2
     self.happiness -=2
     "blah blah partisan blah lobbyist"
   elsif topic == "weather"
     friend.happiness += 1
     self.happiness += 1
     "blah blah sun blah rain"
   else
     "blah blah blah blah blah"
   end
 end

    

end 

