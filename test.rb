class X

attr_accessor  :n

  def initialize
    @n = 4
  end

  def func
    puts @n
  end

end
  
  
class Y < X

  def initialize
    super
    n = 5
   
    m=2
    
  
  
  end
    
end



y = Y.new

y.func


