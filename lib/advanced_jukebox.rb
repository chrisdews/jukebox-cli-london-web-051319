#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

songs = {
"Go Go GO" => '/Users/dewsy/Development/code/jukebox-cli-london-web-051319/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/Users/dewsy/Development/code/jukebox-cli-london-web-051319/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/Users/dewsy/Development/code/jukebox-cli-london-web-051319/audio/Emerald-Park//03.mp3',
"Guiding Light" => '/Users/dewsy/Development/code/jukebox-cli-london-web-051319/audio/Emerald-Park/04.mp3',
"Wolf" => '/Users/dewsy/Development/code/jukebox-cli-london-web-051319/audio/Emerald-Park/05.mp3',
"Blue" => '/Users/dewsy/Development/code/jukebox-cli-london-web-051319/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/Users/dewsy/Development/code/jukebox-cli-london-web-051319/audio/Emerald-Park/07.mp3'
}

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end




def list(songs)
  songs.each do |song_key, song_file|
      puts song_key
  end
end



def play(songs)
  puts "Please enter a song name:"
  user_response = gets.chomp
  
  songs.each do |song_key, song_file|
    if song_key == user_response
      puts "Playing #{song_key}"
      system "open #{song_file}"

    else
      puts "Invalid input, please try again"
    end
  end
end








  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash


  


def exit_jukebox
puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  user_input = gets.chomp

  while user_input != "exit"
    if user_input == "list"
      list(songs)
      puts "Please enter a command:"
      user_input = gets.chomp
    elsif user_input == "play"
      play(songs)
      puts "Please enter a command:"
      user_input = gets.chomp
    elsif user_input == "help"
      help
      puts "Please enter a command:"
      user_input = gets.chomp
    else
      puts "Please enter a command:"
      user_input = gets.chomp
    end
    
  end
  exit_jukebox
end

run(songs)
