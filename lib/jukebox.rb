songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  
  # print "\n## user input => #{input}\n"
  
  song_id = input.to_i != 0 ? input.to_i - 1 : input
  # print "\n--CREATED song_id => #{song_id}\n"
  # pp song_id
  
  if !song_id.is_a?Integer
    song_id = songs.find_index(input) ? songs.find_index(input) : false
    
    # print "\nSONG IS NOT AN INTEGER"
    # print "\nSONG IS NOT IN THE ARRAY" if !song_id
    # print "\n--STRING UPDATED song_id => #{song_id}\n"
    # pp song_id
  else
    song_id = songs[song_id] ? song_id : false
    
    # print "\nSONG IS AN INTEGER"
    # print "\INTEGER IS NOT IN THE ARRAY" if !song_id
    # print "\n--INEGER UPDATED song_id => #{song_id}\n"
    # pp song_id
  end
  
  if song_id == false
    puts "Invalid input, please try again"
    
    # print "\n-- song_id #=> false =>? #{song_id}\n"
    # pp song_id
  else
    puts "Playing #{songs[song_id]}"
  end
end

def list(songs)
  songs.each_with_index do |song,index|
    puts "#{index+1}. #{song}" 
  end
end
  
def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  while true do
    puts "Please enter a command:"
    command = gets.strip
  
    case command
      when "exit"
        exit_jukebox
        break
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "help"
        help
      else
        puts "Error: '#{command}' is not a valid command"
    end #=> END case command
  end #=> END while
end