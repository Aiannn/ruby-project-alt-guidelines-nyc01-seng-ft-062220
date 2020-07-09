require_relative '../config/environment'
#require 'pry'
#cli = CommandLineInterface.new

def startCLI
    puts "-----Welcome to my app, here you can find a football statistics!-----"
    while true 
        puts "Hello, what would you like to?
                1) Look up statistics 
                2) Add to statistics
                3) Update statistics 
                4) Delete cpecific item
                5) Exit app"
        choice = STDIN.gets.chomp.to_i
        if choice == 1
            puts "You've chosen lookup CLI"
            start_lookup_CLI 
            break #refactoring 
        elsif choice == 2 
            puts "You've chosen add CLI"
            start_add_CLI 
            break 
        elsif choice == 3
            puts "You've chosen update CLI"
            start_update_CLI
            break 
        elsif choice == 4
            puts "You've chosen delete items"
            start_delete_CLI
            break 
        elsif choice == 5
            puts "exit app"
            break 
        else
            puts "Try again"
        end 
    end 
end 

#1
def start_lookup_CLI
    cli = CommandLineInterface.new
    while true 
        puts "---What action would you like to?---
                1) lookup players in specific FC
                2) lookup all FC
                3) lookup best scores table in specific Tournment"
        choice = STDIN.gets.chomp.to_i
        if choice == 1 
            puts "You've chosen lookup players in FC"
            cli.list_of_players
            break #refactoring 
        elsif choice == 2
            puts "You've chosen lookup all FC"
            cli.list_of_clubs
            break 
        elsif choice == 3
            puts "You've chosen lookup scores in Tour"
            cli.best_goalscorers 
            break 
        else 
            puts "Hi"
        end 
    end 
end 

#2
def start_add_CLI
    cli = CommandLineInterface.new
    while true 
        puts "---What action would you like to?---
                1) add player to the Football Club
                2) add Football Club
                3) add Tournament  "
        choice = STDIN.gets.chomp.to_i 
        if choice == 1
            puts "You've chosen to add player"
            cli.create_player 
            break 
        elsif choice == 2
            puts "You've chosen to add Football club"
            cli.create_fc
            break 
        elsif choice == 3
            puts "You've chosen to add Tournament"
            cli.create_tournament
            break 
        else 
            puts "Hi"
        end 
    end  
end 

#3
def start_update_CLI 
    cli = CommandLineInterface.new
    while true 
        puts "What would you like?
                1) Update player"
        choice = STDIN.gets.chomp.to_i 
        if choice == 1 
            cli.update_player
            break 
        else 
            "Try again"
        end 
    end
end 

#4
def start_delete_CLI
    cli = CommandLineInterface.new
    while true 
        puts "What would you like to?
                1) Delete player
                2) Delete FC"
        choice = STDIN.gets.chomp.to_i 
        if choice == 1
            puts "You've chosen delete player"
            cli.delete_player
            break 
        elsif choice == 2
            puts "You've chosen delete FC"
            cli.delete_football_club 
            break 
        else 
            puts "Hi"
        end 
    end 
end 

         
startCLI

#binding.pry 