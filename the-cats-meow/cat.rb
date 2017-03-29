class  Cat
  attr_reader :name, :preferred_food, :meal_time

   def initialize(name, preferred_food, meal_time)
           @name = name
           @preferred_food = preferred_food
           @meal_time = meal_time
   end

   Zooloo = Cat.new("Zoozoo", "Salmon", 10)
   Tifa = Cat.new("Tifa", "Turkey", 21)

   def eats_at

      if (@meal_time <= 11) && (@meal_time >= 0)
        time = @meal_time.to_s + " AM"
      else
        time = @meal_time.to_s + " PM"
      end
      return time
   end



end
