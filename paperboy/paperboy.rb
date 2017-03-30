class Paperboy

attr_reader :name, :experience, :earnings

def initialize(name, experience, earnings)
  @name = name
  @experience = experience
  @earnings = earnings
end

def quota
  base = 50
  quota = base + @experience/2
  "Quota is #{quota}"
end





end
