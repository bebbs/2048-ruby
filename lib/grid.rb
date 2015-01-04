class Grid

  def initialize
    @game_grid = {}
    setup_grid
  end

  attr_reader :game_grid, :cell

  def setup_grid
    [*"A".."D"].each do |letter|
      [*1..4].each do |number|
        @game_grid["#{letter}#{number}".to_sym] = Cell.new
      end
    end
  end

  def row(position)
    case position
      when 1 then [game_grid[:A1], game_grid[:B1], game_grid[:C1], game_grid[:D1]]
      when 2 then [game_grid[:A2], game_grid[:B2], game_grid[:C2], game_grid[:D2]]
      when 3 then [game_grid[:A3], game_grid[:B3], game_grid[:C3], game_grid[:D3]]
      when 4 then [game_grid[:A4], game_grid[:B4], game_grid[:C4], game_grid[:D4]]
    end
  end

  def column(position)
    case position
      when 1 then [game_grid[:A1], game_grid[:A2], game_grid[:A3], game_grid[:A4]]
      when 2 then [game_grid[:B1], game_grid[:B2], game_grid[:B3], game_grid[:B4]]
      when 3 then [game_grid[:C1], game_grid[:C2], game_grid[:C3], game_grid[:C4]]
      when 4 then [game_grid[:D1], game_grid[:D2], game_grid[:D3], game_grid[:D4]]
    end
  end



end