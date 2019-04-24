# !/usr/bin/env ruby
require "pry"
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
	puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
	songs.each_with_index do |song, i|
			puts "#{i+1}. #{song}"
	end
end

def play(songs)
	puts "Please enter a song name or number:"
	user_response = gets.chomp
	
	songs.each_with_index do |song, i|
		if song == (user_response) || user_response.to_i == i+1
			puts "Playing #{song}"
		else
			puts "Invalid input, please try again"
		end
	end
end

def exit_jukebox
	puts "Goodbye"
end

def run(something)
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

