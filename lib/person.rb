# your code goes here
#Pair programmed with Taylor Coons

class Person
    attr_reader :name
    attr_accessor :happiness, :hygiene, :bank_account
    
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def limit(variable)
        if variable > 10
            @variable = 10
        elsif variable < 0
            @variable = 0
        else
            @variable = variable
        end
    end

    def happiness
        @happiness
    end

    def happiness=(happiness)
        @happiness = limit(happiness)
    end

    def hygiene=(hygiene)
        @hygiene = limit(hygiene)

        # if hygiene > 10
        #     @hygiene = 10
        # elsif hygiene < 0
        #     @hygiene = 0
        # else
        #     @hygiene = hygiene
        # end
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

    def get_paid(salary_amount)
        @bank_account += salary_amount
        return "all about the benjamins"
    end

    def take_bath
        limit(self.hygiene += 4)
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end


    def work_out
       limit(self.happiness += 2)
       limit(self.hygiene -=3)
        return "♪ another one bites the dust ♫"
    end


    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3

        limit(self.happiness)
        limit(friend.happiness)

        return "Hi #{friend.name}! It's #{@name}. How are you?"
    end


    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end
end



