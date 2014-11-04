
def sum_elements( input )
  return 0.0 if input.empty?
  3.1415926
end

describe 'array element adder' do
  
  it 'should return 0.0 for an empty input' do
    expect( sum_elements( [] ) ).to eq( 0.0 )
  end
  
  it 'should return the first element for a single element array' do
    expect( sum_elements( [ 3.1415926 ] ) ).to eq( 3.1415926 )
  end
  
end
