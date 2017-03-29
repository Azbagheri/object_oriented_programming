class Player

  def initialize
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

  def level_up
    @lives = @lives + 1
    "You now have #{@lives} lives"
  end

  def collect_treasure
    @gold_coins = @gold_coins + 1
    level up if @gold_coins % 10 == 0
    "you have #{@gold_coins} gold coins"
  end

  def do_battle(damage)
    @health_points = @health_points - damage
    if (@health_points < 1)
      @lives = @lives - 1
      @health_points = 10
      restart if @lives == 0
    end

    "You have #{@health_points} health_points"
  end

  def restart
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end
end

azi = Player.new
sahar = Player.new
