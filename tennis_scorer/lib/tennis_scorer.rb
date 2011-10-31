class Score

  attr_accessor :srv, :cl

  def initialize
    @srv = 0
    @cl = 0
  end

  def to_s
    "#{srv}-#{cl}"
  end
end

class TennisScorer
  attr_accessor :score

  def initialize
    @score = Score.new
  end

  def score
    @score
  end

  def cl_win
    if @score.cl == 30
      @score.cl = @score.cl + 10  
    else
      @score.cl = @score.cl + 15
    end
  end

  def srv_win
    if @score.srv == 30
      @score.srv = @score.srv + 10 
    else
      @score.srv = @score.srv + 15
    end
  end
end