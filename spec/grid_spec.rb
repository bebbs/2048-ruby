require 'grid'

describe Grid do

  let(:grid){Grid.new}
  let(:sample_row){[grid.game_grid[:A2], grid.game_grid[:B2], grid.game_grid[:C2], grid.game_grid[:D2]]}
  let(:sample_col){[grid.game_grid[:C1], grid.game_grid[:C2], grid.game_grid[:C3], grid.game_grid[:C4]]}



  it 'should have a grid of 16 squares' do
    expect(grid.game_grid.length).to eq 16
  end

  it 'each square should hold a cell object' do
    expect(grid.game_grid[:A1]).to respond_to(:state)
  end

  context 'rows and columns' do

    it 'should have 4 rows of 4 squares.' do
      expect(grid.row(2)).to eq sample_row
    end

    it 'should have 4 columns of 4 squares' do
      expect(grid.column(1).length).to eq 4
    end

  end

end