def comp_picks()
 if $n==2 
  return 1
 elsif $n==3
  return 2
 elsif $n==4
  return 3
 elsif $n>4
  if ($n-6)>5 or ($n-2==7) 
   return 3
  elsif (($n-5)>5 or ($n-1==8))
   return 2
  else
   return 1 
  end
 end
end

puts "\n\n****MatchStick Game****\n\n"
printf "Enter number of matchsticks : "
$n = gets.to_i

while true
 
 while true
  printf "\nHuman-Player pick 1/2/3 matchsticks : "
  p1=gets.to_i
  if p1>0 and p1<4
   $n=$n-p1
   puts "Remaining matchsticks : #{$n}"
   break   
  else
   puts "Invalid Input!!!! Please choose 1/2/3 matchsticks only....Try again!!!"
  end
 end
 
 if $n==1
  puts "\nComputer has to pick last matchstick...\nHuman-Player wins..... Congratulations!!!!"
  break
 end
  
 c1 = comp_picks()
 puts "\nComputer picks : #{c1} "
 $n=$n-c1
 puts "Remaining matchsticks : #{$n}"
 if $n==1
  puts "\nHuman-Player has to pick last matchstick...\nComputer wins..... You lose!!!!"
  break
 end
end
