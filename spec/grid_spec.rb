require 'grid'

describe Grid do

  let(:grid){Grid.new}
  
  it 'should have a grid of 16 squares' do
    expect(grid.game_grid.length).to eq 16
  end

  it 'each square should hold a cell object' do
    expect(grid.game_grid.first).to respond_to(:state)
  end

end