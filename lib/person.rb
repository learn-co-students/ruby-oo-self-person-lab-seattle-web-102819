
class Person
    attr_reader :name
    attr_writer :happiness, :hygiene
	attr_accessor :bank_account

	def initialize(name)
		@name = name
		@bank_account = 25
		@happiness = 8
		@hygiene = 8
	end

    def happiness
        @happiness.clamp(0, 10)
    end

    def hygiene
        @hygiene.clamp(0, 10)
    end


	def clean?
		if @hygiene > 7 
			return true
		else 
			return false
		end
	end

	def happy?
		if @happiness > 7 
			return true
		else 
			return false
		end
	end

	def get_paid(salary)
		@bank_account += salary
		return "all about the benjamins"
	end

	def take_bath
		self.hygiene += 4
		return "♪ Rub-a-dub just relaxing in the tub ♫"
	end

	def work_out 
        self.happiness += 2
        self.hygiene -= 3
     
		return "♪ another one bites the dust ♫"
	end

	def call_friend(friend)
		friend.happiness += 3
		self.happiness += 3
		limit(friend)
		limit(self)
		return "Hi #{friend.name}! It's #{self.name}. How are you?"
	end

	def start_conversation(person, topic)
		if topic == "politics"
			person.happiness -=2
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

    # def change(thing, number, person = nil, thing2 = nil, number2 = nil)
	# 	self.change_thing(thing, number)
	# 	if (thing2 && number2)
	# 		self.change_thing(thing2, number2)
	# 	end
	# 	if person
	# 		person.change_thing(thing, number)
	# 		if (thing2 && number2)
	# 			person.change_thing(thing2, number2)
	# 		end
	# 	end
	# end

	# def change_thing(thing, number)
	# 	if thing == happiness
	# 		@happiness += number
	# 		limit(self)
	# 	elsif thing == hygiene
	# 		@hygiene += number
	# 		limit(self)
	# 	end
	# end


	def limit(person)
		if person.happiness > 10 
			person.happiness = 10
		end
		if person.happiness < 0 
			person.happiness = 0
		end
		if person.hygiene > 10
			person.hygiene = 10
		end
		if person.hygiene < 0
			person.hygiene = 0
		end
    end

    
end

john = Person.new("John")
friend = Person.new("Friend")
