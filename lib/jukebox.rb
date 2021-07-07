# Add your code here

def help()
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  i = 0
  while i < songs.length() do
    puts "#{i+1}. #{songs[i]}"
    i += 1
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  if input.to_i.between?(1,9)
    puts "Playing #{songs[input.to_i-1]}"
  elsif songs.include?(input)
    puts "Playing #{input}"
  else
    puts "Invalid input, please try again."
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  selection = ''
  while selection != 'exit' do
    puts "Please enter a command:"
    selection = gets.strip
    if selection == 'list'
      list(songs)
    elsif selection == "play"
      play(songs)
    elsif selection == "help"
      help
    elsif selection == "exit"
      exit_jukebox
      break
    end
  end
end
  
    
  
  
  