class Paperboy

  def initialize(name)
    @name         = name
    @experience   = 0
    @earnings     = 0
    @quota        = (@experience/2) + 50

  end

  def deliver(start_address, last_address)
  papers = last_address - start_address
    @earnings = (papers) * 0.25
    @experience = papers
    if papers<50
      @earnings = (papers*0.25) - 2
    end
    if papers>50
      @earnings = (50 * 0.25) + (papers - 50) * 0.25
    end
  end

  def quota
    @quota = (@experience/2) + 50
    puts "Your quota for your next deliery is #{@quota}"
  end

  def report
    puts "I'm #{@name}, I've delivered #{@experience} papers and I've earned $#{@earnings}"
  end

end
#
amanda = Paperboy.new("amanda")
puts amanda.inspect

amanda.deliver(25, 75)
puts amanda.inspect
puts amanda.quota
puts amanda.inspect
puts amanda.deliver(30, 40)
puts amanda.quota
puts amanda.inspect
puts amanda.report
