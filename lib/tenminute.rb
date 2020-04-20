class TenMinuteWalk

  def checking(array)
    array.count
  end

  def direction_correct?(array)
    raise "Incorrect No. of elements" if checking(array) != 10
    collect_nw(array) == collect_se(array) ? true : false
  end

 def collect_nw(array)
   array_nw = []
   array.each do |letter|
     if letter == "n" || letter == "w"
       array_nw.push(letter)
     end
   end
   checking(array_nw)
 end

 def collect_se(array)
   array_se = []
   array.each do |letter|
     if letter == "s" || letter == "e"
       array_se.push(letter)
     end
   end
   checking(array_se)
 end

end
