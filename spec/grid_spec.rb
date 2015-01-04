require 'grid'

describe Grid do

  let(:grid){Grid.new}
  
  it 'should have a grid of 16 squares' do
    expect(grid.game_grid.length).to eq 16
  end

end