require "./lib/bowling-game.rb"
require "test/unit"

class TestBowlingGame < Test::Unit::TestCase

  def setup
    @game = BowlingGame.new
  end

  def test_gutter_game
    roll_many 20, 0

    assert_equal 0, @game.score, "Expected game score to be 0 for gutter game"
  end

  def test_all_ones
    roll_many 20, 1

    assert_equal 20, @game.score, "Expected game score to be 20 for all ones"
  end

  def test_one_spare
    roll_spare
    @game.roll 3
    roll_many 17, 0

    assert_equal 16, @game.score, "Expected game score to be 16 for a spare and a 3"
  end

  def test_one_strike
    roll_strike
    @game.roll 3
    @game.roll 4
    roll_many 16, 0

    assert_equal 24, @game.score, "Expected game score to be 24 for a strike, a 3 and a 4"
  end

  def test_perfect_game
    roll_many 12, 10

    assert_equal 300, @game.score, "Expected game score to be 300 for a perfect game"
  end

  def roll_spare()
    @game.roll 5
    @game.roll 5
  end

  def roll_strike()
    @game.roll 10
  end

  def roll_many(count, pins)
    count.times do
      @game.roll(pins)
    end
  end

end
