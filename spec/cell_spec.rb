require 'cell'

describe Cell do
  
  let(:cell){Cell.new}
  it 'should have a blank state when initialised' do
    expect(cell.state).to eq :blank
  end

end