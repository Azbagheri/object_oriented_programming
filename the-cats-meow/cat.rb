class  Cat
  attr_reader :name, :preferred_food, :meal_time

   def initialize(name, preferred_food, meal_time)
           @name = name
           @preferred_food = preferred_food
           @meal_time = meal_time
   end



   def eats_at

      if (@meal_time <= 11) && (@meal_time > 0)
        time = @meal_time.to_s + " AM"
      elsif @meal_time == 0
        time = "12 AM"
      else
        time = @meal_time.to_s + " PM"
      end
      return time
   end

    def meow
      puts "My name is #{self.name}, and I eat #{self.preferred_food} at #{self.eats_at}."
    end

end


zooloo = Cat.new("Zooloo", "Salmon", 10)
tifa = Cat.new("Tifa", "Turkey", 21)

puts zooloo.meow
puts tifa.meow
