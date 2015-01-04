class Grid

  def initialize
    @game_grid = []
    setup_grid
  end

  attr_reader :game_grid

  def setup_grid
    16.times {game_grid << Cell.new}
  end

end