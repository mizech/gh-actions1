require 'time'

def add_thirty_days(strs)
  results = []
  strs.each do |str|
    curr_time = Time.strptime(str, '%m**%d**%Y')
    updated_time = curr_time + (60 * 60 * 24 * 30)
    results << updated_time.strftime('%m**%d**%Y')
  end
  results
end
