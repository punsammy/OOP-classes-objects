class Player

  def initialize
    @gold_coins     = 0
    @health_points  = 10
    @lives          = 5
    @damage         = 1
  end

  def level_up
    @lives += 1
  end

  def collect_treasure
    @gold_coins += 1
    if @gold_coins % 10 == 0
      level_up
    end
  end

  def restart
    @gold_coins     = 0
    @health_points  = 10
    @lives          = 5
    return "Reset Gold Coins = #{@gold_coins}, Health Points = #{@health_points}, and Lives = #{@lives}"
  end

  def do_battle(damage)
    @health_points - damage
  if @health_points<1
    then
      @lives - damage,
      @health_points = 10
    return
  # if @lives == 0
  #     restart "you died, but you can start over now"
  #   end
  end
  # Your class should have an instance method called do_battle that accepts one damage argument and subtracts it from the player's health_points. If health_points falls below one, subtract one from lives and reset health_points to ten. If you have run out of lives, this method should run another method called restart (see below).
  # The restart instance method should set all attributes back to their starting values (5, 0, and 10).


end
