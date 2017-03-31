class Player

  def initialize
    @gold_coins     = 0
    @health_points  = 10
    @lives          = 5
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
      @health_points = @health_points - damage
    if @health_points<1
      @lives = @lives - damage
      @health_points = 10
    end
    if @lives == 0
      restart
      puts "you died, but you can start over now"
    end
  end
end

amanda = Player.new
puts amanda.do_battle(5)
puts amanda.inspect
puts amanda.do_battle(5)
puts amanda.inspect
puts amanda.level_up
puts amanda.inspect
