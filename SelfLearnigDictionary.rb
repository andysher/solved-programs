class Dictionary
	
	def initialize
		@dicHash = Hash.new 
		if !File.exist?("dict")
		@dicHash = { "car" => "four-wheeled automobile", "bike" => "two-wheeled automobile"} 
		end
	end
	
	def includes?(str)
		@dicHash.member?(str) 
	end
	
	def findMeaning(str)
		@dicHash.fetch(str) 
	end
	
	def addWord(str)
		printf " meaning for '#{str}' => " 
		@dicHash[str] = gets.chomp 
		@dicHash.keys.sort.each { |k| @dicHash[k] = @dicHash.delete k } 
		p "Yay!!! Learnt a new word '#{str}'... Thanks to You!!!" 
	end
	
	def to_s
		str = "" 
		@dicHash.each.map { |key,value| str.concat("\n\t#{key}\t=>\t#{value}")  }
		str + "\n" 
	end
	
end

#------MainCode------
engDic = Dictionary.new
if File.exist?("dict")
	engDic = Marshal.load(File.read('dict')) 
end
printf "\nWelcome to the Self-Learning Dictionary!!!!";
while(1) do
printf "\nPlz enter a word => " 
word = gets.chop.downcase 

if engDic.includes?(word)
	printf "meaning := " + engDic.findMeaning(word) + "\n" 
else
	printf "Oops!! word not found... Add to the Dictionary? (y/n)  : " 
	c = gets.chomp 
  if(c == 'y')
	engDic.addWord(word) 
	end
end

printf "\nExit??(y/n) : " 
ch = gets.chomp 
if(ch == 'y')
 break 
end
end
printf "\n_______________________________________________\n" 
printf "\t\t    WordList" 
printf "\n-----------------------------------------------" 
p engDic 

File.open('dict', 'w') {|f| f.write(Marshal.dump(engDic)) }

#-------ProgramEnd--------
