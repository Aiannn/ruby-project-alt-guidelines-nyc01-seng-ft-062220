Tournament.destroy_all
FootballClub.destroy_all
Player.destroy_all
TournamentFootballClub.destroy_all
TournamentPlayer.destroy_all


# Tournaments 
champions_league = Tournament.create(name: "Champions League")
la_liga = Tournament.create(name: "La Liga")
epl = Tournament.create(name: "EPL")


# Football teams
chelsea = FootballClub.create(name: "Chelsea")
man_united = FootballClub.create(name: "Man_United")
arsenal = FootballClub.create(name: "Arsenal")
real = FootballClub.create(name: "Real Madrid")
barcelona = FootballClub.create(name: "Barcelona")
atletico = FootballClub.create(name: "Atletico")

# Players
hazard = Player.create(name: "Eden Hazard", age: 29, football_club_id: chelsea.id)
pulisic = Player.create(name: "Christian Pulisic", age: 21, football_club_id: chelsea.id)

messi = Player.create(name: "Leo Messi", age: 33, football_club_id: barcelona.id)
suarez = Player.create(name: "Luis Suarez", age: 33, football_club_id: barcelona.id)

griezmann = Player.create(name: "Antoinne Griezmann", age: 30, football_club_id: atletico.id)
oblak = Player.create(name: "Yan Oblak", age: 28, football_club_id: atletico.id) 

rashford = Player.create(name: "Marcus Rashford", age: 22, football_club_id: man_united.id)
martial = Player.create(name: "Antoni Martial", age: 24, football_club_id: man_united.id)

ozil = Player.create(name: "Mesut Ozil", age: 31, football_club_id: arsenal.id)
xhaka = Player.create(name: "Granit Xhaka", age: 27, football_club_id: arsenal.id)

benzema = Player.create(name: "Karim Benzema", age: 31, football_club_id: real.id)
modric = Player.create(name: "Luca Modric", age: 33, football_club_id: real.id)

#Tournament-FootballClub
tfc1 = TournamentFootballClub.create(football_club_id: chelsea.id, tournament_id: champions_league.id)
tfc2 = TournamentFootballClub.create(football_club_id: chelsea.id, tournament_id: epl.id)

tfc3 = TournamentFootballClub.create(football_club_id: man_united.id, tournament_id: champions_league.id)
tfc4 = TournamentFootballClub.create(football_club_id: man_united.id, tournament_id: epl.id)

tfc5 = TournamentFootballClub.create(football_club_id: arsenal.id, tournament_id: champions_league.id)
tfc6 = TournamentFootballClub.create(football_club_id: arsenal.id, tournament_id: epl.id)

tfc7 = TournamentFootballClub.create(football_club_id: real.id, tournament_id: champions_league.id)
tfc8 = TournamentFootballClub.create(football_club_id: real.id, tournament_id: la_liga.id)

tfc9 = TournamentFootballClub.create(football_club_id: barcelona.id, tournament_id: champions_league.id)
tfc10 = TournamentFootballClub.create(football_club_id: barcelona.id, tournament_id: la_liga.id)

tfc11 = TournamentFootballClub.create(football_club_id: atletico.id, tournament_id: champions_league.id)
tfc12 = TournamentFootballClub.create(football_club_id: atletico.id, tournament_id: la_liga.id)

#Tournament-Player
tp1 = TournamentPlayer.create(tournament_id: champions_league.id, player_id: hazard.id, player_goals: 10, player_assists: 5)
tp2 = TournamentPlayer.create(tournament_id: champions_league.id, player_id: ozil.id, player_goals: 2, player_assists: 7)
tp3 = TournamentPlayer.create(tournament_id: champions_league.id, player_id: modric.id, player_goals: 4, player_assists: 1)
tp4 = TournamentPlayer.create(tournament_id: champions_league.id, player_id: rashford.id, player_goals: 11, player_assists: 1)