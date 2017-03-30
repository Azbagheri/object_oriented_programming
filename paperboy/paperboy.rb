class Paperboy

attr_reader :name, :experience, :earnings

def initialize(name)
  @name = name
  @experience = 0
  @earnings = 0
end

def quota
  base = 50
  quota = base + @experience/2
end

def deliver(start_address, end_address)
  num_delivered = (end_address - start_address) + 1
  over_quota = num_delivered - self.quota
  base_pay = 0.25
  extra_pay = 0.50
  @earnings = num_delivered * base_pay + over_quota * extra_pay
  @experience = num_delivered
end



end
