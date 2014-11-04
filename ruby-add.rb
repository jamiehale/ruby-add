
def sum_elements( input )
  sum = 0.0
  c = 0.0
  input.each do |element|
    y = element - c
    t = sum + y
    c = ( t - sum ) - y
    sum = t
  end
  [ sum, c ]
end

describe 'array element adder' do
  
  it 'should return 0.0 for an empty input' do
    expect( sum_elements( [] ) ).to eq( [ 0.0, 0.0 ] )
  end
  
  it 'should return the first element for a single element array' do
    expect( sum_elements( [ 3.1415926 ] ) ).to eq( [ 3.1415926, 0.0 ] )
  end
  
  it 'should return 10003.14159 and -7.309708394132031e-13 for the first step in the wikipedia example' do
    expect( sum_elements( [ 10000.0, 3.14159 ] ) ).to eq( [ 10003.14159, -7.309708394132031e-13 ] )
  end
  
end
