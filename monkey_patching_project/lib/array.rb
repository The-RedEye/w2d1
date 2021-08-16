# Monkey-Patch Ruby's existing Array class to add your own custom methods

require "byebug"
class Array
  


def span

  return nil if self ==[]  

  self.max - self.min
end

def average 
  return nil if self ==[]  
   (0.0 + self.sum) / self.length
end

def median 


  return nil if self ==[]  
  
  if self.length.odd?
    return self.sort[(self.length/2)]
  end

  ( 0.0 + self.sort[(self.length/2)] + self.sort[(self.length/2)-1] ) /2.0
end

def counts 
  hsh = Hash.new (0)

  self.each do |ele|
    hsh[ele] +=1
  end

  hsh
end


#------------------Part 2----------

def my_count (val)
  count = 0
  self.each do |ele|
    if val == ele
      count +=1
    end
  end

  count
end

def my_index (val)
  (0...self.length).each do |i|
    if val == self[i]
      return i 
    end
  end
  
  nil
end

def my_uniq
  dupeless = []

  self.each do |ele|
    if !dupeless.include?(ele)
      dupeless << ele
    end
  end

    
  dupeless
end

def my_transpose
 new_arr= []

  (0...self.length).each do |x|
    sub_arr = []
    (0...self[0].length).each do |y|
     #debugger
      sub_arr [y] = self[y][x]
    end
    new_arr<<sub_arr
  end

  new_arr
  #debugger
end


end #end of class
