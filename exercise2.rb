#The Cat's Meow

class Cat

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def meal_time
    if @meal_time < 12
      puts "#{@name} needs to eat at #{@meal_time}am"
    elsif @meal_time-12==0
      puts "#{@name} is high-maintenance and wants food at 12am"
    else
      puts "Feed #{@name} at #{@meal_time - 12}pm "
    end
  end

  def meow
    puts "I'm #{@name} and I eat #{@preferred_food} at #{@meal_time} O'clock"
  end

end

dizzy = Cat.new("dizzy", "tuna", 13)
lucky = Cat.new("lucky", "chicken", 6)
watson = Cat.new("watson", "shrimp", 12)

puts dizzy.meow
dizzy.meal_time
puts lucky.meow
lucky.meal_time
puts watson.meow
watson.meal_time
