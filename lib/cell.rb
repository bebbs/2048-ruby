class Cell

  def initialize
    @state = :blank
    @content = nil
  end

  attr_reader :state
  attr_accessor :content

  def place(num)
    self.content = num
  end


end