puts "\n\n****MatchStick Game****\n\n"
printf "Enter number of matchsticks : "
n = gets.to_i

while true
 
 while true
  puts "\nRemaining matchsticks : #{n}"
  printf "Player-1 pick 1/2/3 matchsticks : "
  p1=gets.to_i
  if p1>0 and p1<4
   n=n-p1
   break   
  else
   puts "Invalid Input!!!! Please choose 1/2/3 matchsticks only....Try again!!!"
  end
 end
 
 if n==1
  puts "\nPlayer-2 has to pick last matchstick...\nPlayer-1 wins..... Congratulations!!!!"
  break
 end
  
 while true
  puts "\nRemaining matchsticks : #{n}"
  printf "Player-2 pick 1/2/3 matchsticks : "
  p2=gets.to_i
  if p2>0 and p2<4
   n=n-p2
   break   
  else
   puts "Invalid Input!!!! Please choose 1/2/3 matchsticks only....Try again!!!"
  end
 end
 
 if n==1
  puts "\nPlayer-2 has to pick last matchstick...\nPlayer-1 wins..... Congratulations!!!!"
  break
 end
 
end
