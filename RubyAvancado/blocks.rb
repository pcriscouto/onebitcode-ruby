5.times { puts "Executando..." }


sum =  0 
numbers = [ 5, 10, 5]
numbers.each { |n| sum += n}
puts sum

foo = {2 => 3, 4 => 5}
 
foo.each do |key, value|
 puts "key = #{key}"
 puts "value = #{value}"
 puts "key * value = #{key * value}"
 puts '---'
end


def foo
    # Call the block
    yield
    yield
   end
    
   foo { puts "Exec the block"}