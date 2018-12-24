User.destroy_all
Game.destroy_all
puts "Destroy all user, game"

User.create(email: "tonyjlum@gmail.com", password: "greentea", age: 29, username: "Mumbles", profile_img: "https://yt3.ggpht.com/a-/AN66SAxPCaupIFF2bzXdkTMhOgP9G-RyGrwut6nEAw=s900-mo-c-c0xffffffff-rj-k-no")

User.create(email: "spyearwood@yahoo.com", password: "yearwood", age: 29, username: "SeanWhy", profile_img: "https://lh4.googleusercontent.com/-jBslN031COg/AAAAAAAAAAI/AAAAAAAAACM/037Hr2Z_9Uw/photo.jpg")

Game.create(name: "Tom Clancy's Rainbow Six Siege", platform: "PC", max_players: 12, description: "Tom Clancy's Rainbow Six Siege is a first-person shooter game, in which players utilize many different operators from the Rainbow team. Different operators have different nationalities, weapons, and gadgets. The game features an asymmetrical structure whereby the teams are not always balanced in their ability choices.", logo: "https://cdn.gamerant.com/wp-content/uploads/Rainbow-Six-Siege-Logo.jpg.optimal.jpg")

Game.create(name: "Destiny 2", platform: "PC", max_players: 6, description: "Destiny 2 is a first-person shooter game that incorporates role-playing and massively multiplayer online game elements. The original Destiny includes on-the-fly matchmaking that allowed players to communicate only with other players with whom they were matched by the game. Destiny 2 features a more optimal way of matchmaking called Guided Games, which allows players to search for clans who may need additional players for activities, such as strikes or raids. Activities in Destiny 2 are divided among player versus environment  and player versus player  game types.", logo: "https://cdn.vox-cdn.com/uploads/chorus_image/image/55064263/Destiny2_Logo_stacked_black_3000px.1496421726.png")

puts "Seeded User, Game"
