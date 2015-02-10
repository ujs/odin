#implementation of caesar cipher method using arrays
def c_c (a,b)
     alpha=('a'..'z').to_a
     array=a.split("")

     for i in 0...array.length

          if ('a'..'z').all?{|j| array[i] != j}

               array[i]= array[i]

          else

               position = alpha.index(array[i])
               new_position = position.to_i + b
         


               if new_position >26
                    new_position = (new_position % 26)
               end

               array[i] = alpha[new_position]
          end
         
     end

p array.join

end

c_c("!acz!",2700)


