class Paperboy

attr_reader :name, :experience, :earnings

def initialize(name)
  @name = name
  @experience = 0
  @earnings = 0
end

def quota
  base = 50
  new_quota = base + @experience/2
end

def deliver(start_address, end_address)
  base_pay = 0.25
  extra_pay = 0.50
  num_delivered = (end_address - start_address) + 1
  over_quota = num_delivered - self.quota

  if num_delivered == self.quota
    new_earning = num_delivered * base_pay
  elsif num_delivered > (self.quota)
    new_earning  = num_delivered * base_pay + over_quota * extra_pay
  else
    new_earning  =  num_delivered * base_pay - 2
  end
  @earnings = @earnings + new_earning
  @experience = num_delivered
  return new_earning
end

def report
  "I'm #{@name}, I've delivered #{@experience} papers and I've earned $#{@earnings} so far!"
end

end
