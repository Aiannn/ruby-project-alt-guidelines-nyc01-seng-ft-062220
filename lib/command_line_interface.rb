class CommandLineInterface 
   
    #read
    def list_of_players
        puts "** Would you like to see list of players? **"
        puts "* Enter a Football club to get started: *"
        a = STDIN.gets.chomp 
        output = FootballClub.find_by(name: a) #nil or instance
        
        if output != nil 
            show = output.players.map do |player|
                "#{player.name}, #{player.age} years old"
            end
        else 
            puts "There is no such FC's"
            list_of_players #recursion (IDK how use it, just guessing) Now mastered!
        end  

        puts show  
        startCLI
    end 

    def list_of_tournaments
        puts "** Would you like to see list of Tournaments where FC takes part? **"
        puts "* Enter a Football Club to get started: *"
        enter_club_name = STDIN.gets.chomp                              #entering my fc name
        club_instance = FootballClub.find_by(name: enter_club_name)     #assign my entered name to club instance
        
        if club_instance != nil 
    
            to = TournamentFootballClub.where(football_club_id: club_instance.id).pluck(:tournament_id) #it's array
            
            a=[]
            i = 0
            while i < to.length                                     #iterate through "to" array to get the tournament's names
                a << Tournament.where(id: to[i]).pluck(:name)       #and push names to new array
                i+=1
            end 
        else 
            puts "There is no such FC's"
            list_of_tournaments 
        end 
    
        puts "#{enter_club_name} takes part in #{a.join(', ')} tournaments"
        startCLI 
    end 

    def score_info 
        puts "** Would you like to see the score info? **"
        puts "---Enter the Tournament:"
        tourn = STDIN.gets.chomp 
        tourn_instance = Tournament.find_by(name: tourn)
        if tourn_instance != nil
            tp = TournamentPlayer.where(tournament_id: tourn_instance.id).pluck(:player_id, :player_goals, :player_assists)
            ##tp is array of arrays 
        else 
            puts "There is no such a Tournament!"
            score_info 
        end 
        
        a = []
        i=0
        while i < tp.length 
            a << "#{Player.find_by(id: tp[i][0]).name}, #{tp[i][1]} goals, #{tp[i][2]} assists"
            i+=1
        end  

        puts "#{a}"
        startCLI
    end 
    
    #create
    def create_player 
        puts "** Would you like to create a new player? **"
        
        puts "---Enter the name:"
        player_name = STDIN.gets.chomp 
        puts "---Enter the age:"
        player_age = STDIN.gets.chomp 
        puts "---Enter the FC:"
        player_fc = STDIN.gets.chomp 
        a = FootballClub.all.find_by(name: player_fc)
        
        if a != nil 
            player = Player.create(name: player_name, age: player_age, football_club_id: a.id)
        else 
            puts "There is no such football club"
            create_player
        end 
        puts player 
        puts "Done!"
        startCLI 
    end 

    
    def create_fc 
        puts "** Would you like to create a new Football Club? **"
        
        puts "---Enter the name:"
        fc_name = STDIN.gets.chomp
        puts "---Enter the tournament:"
        tour = STDIN.gets.chomp 
        tourr = Tournament.find_by(name: tour) #instance of Tournament
        
        if tourr != nil 
            fc = FootballClub.create(name: fc_name)
            TournamentFootballClub.create(football_club_id: fc.id, tournament_id: tourr.id)
        else 
            puts "There is no such a Tournament"
            create_fc
        end 
        puts "#{fc.name} && #{tourr.name}" 
        puts "Done!"
        startCLI
    end 

    def create_tournament
        puts "** Would you like to create new Tournament? **"
        puts "---Enter the name:"
        t_name = STDIN.gets.chomp

        t = Tournament.create(name: t_name)
        puts "#{t_name} has created!"
        puts "Done!"
        startCLI 
    end 

    #update
    def update_player
        puts "** Would you like to update player stats? **"
        puts "---Enter the player name:"
        p_name = STDIN.gets.chomp 
        p = Player.find_by(name: p_name)

        if p != nil 

            puts "#{p.name} && #{p.age}"
            puts "How much turned #{p.name}?"
            p_age = STDIN.gets.chomp 
            
            p.update(age: p_age.to_i) 
        else
            puts "The is no such player"
            update_player 
        end 

        puts "#{p.name} && #{p.age}"
        puts "Done!"
        startCLI 
    end 

    #delete 
    def delete_player 
        puts "** Would you like to delete player? **"
        puts "---Enter the player name:"
        p_name = STDIN.gets.chomp

        p = Player.find_by(name: p_name)
        if p != nil 
            f = FootballClub.find_by(id: p.football_club_id)
        else 
            puts "There is no such players!"
            delete_player
        end 
        puts "#{p.name}, #{p.age}, #{f.name}"

        p.destroy

        TournamentPlayer.where(player_id: p.id).destroy_all

        puts "You've deleted #{p_name}"
        startCLI 
    end 

    def delete_football_club 
        puts "** Would you like to delete FC? **"
        puts "---Enter the FC name:"
        fc_name = STDIN.gets.chomp 

        fc = FootballClub.find_by(name: fc_name)
        if fc != nil 
            puts "You have chosen #{fc_name}" 
            fc.destroy
        else 
            puts "There is no such FootbClubs!"
            delete_football_club
        end 


        TournamentFootballClub.where(football_club_id: fc.id).destroy_all
        Player.where(football_club_id: fc.id).destroy_all

        puts "You've deleted #{fc_name}"
        startCLI
    end 


end 