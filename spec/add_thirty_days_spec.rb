require_relative './../add_thirty_days'
describe 'Testing add_thirty_days' do
  it 'Count of results' do
    results = add_thirty_days(['05**28**2023', '09**12**1991', '02**08**2002'])
    expect(results.size).to be_equal(3)
  end

  it 'Check value of first item' do
    results = add_thirty_days(['05**28**2023', '09**12**1991', '02**08**2002'])
    expect(results.first).to eq('06**27**2023')
  end
end
