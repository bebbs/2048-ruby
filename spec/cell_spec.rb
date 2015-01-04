require 'cell'

describe Cell do
  
  let(:cell){Cell.new}

  it 'should have a blank state when initialised' do
    expect(cell.state).to eq :blank
  end

  it 'should be able to have a number placed on it' do
    cell.place(2)
    expect(cell.content).to eq 2
  end

end