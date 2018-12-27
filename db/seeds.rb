#clean Database
User.destroy_all
Game.destroy_all
Ownership.destroy_all
puts "Destroy all user, game, ownerships"

puts "Seeding Users..."
#Static User Start
tony = User.create(email: "tonyjlum@gmail.com", password: "greentea", age: 29, username: "Mumbles", profile_img: "https://yt3.ggpht.com/a-/AN66SAxPCaupIFF2bzXdkTMhOgP9G-RyGrwut6nEAw=s900-mo-c-c0xffffffff-rj-k-no")

sean = User.create(email: "spyearwood@yahoo.com", password: "yearwood", age: 29, username: "SeanWhy", profile_img: "https://lh4.googleusercontent.com/-jBslN031COg/AAAAAAAAAAI/AAAAAAAAACM/037Hr2Z_9Uw/photo.jpg")

#faker Users Start
200.times do
  password = ""
  password = Faker::Hacker.ingverb until password.length > 6
  User.create(
    email: Faker::Internet.email,
    password: password,
    age: (19..99).to_a.sample,
    username: "#{Faker::Cat.name}_#{Faker::Dog.name}",
    profile_img: "http://clipart-library.com/images/6Tp5ebz6c.png"
  )
end

puts "Seeding Games..."
#static Games start
r6 = Game.create(name: "Rainbow Six Siege", platform: "PC", max_players: 12, description: "TMaster the art of destruction and gadgetry in Tom Clancy’s Rainbow Six Siege. Face intense close quarters combat, high lethality, tactical decision making, team play and explosive action within every moment. Experience a new era of fierce firefights and expert strategy born from the rich legacy of past Tom Clancy's Rainbow Six games. Engage in a brand-new style of assault using an unrivaled level of destruction and gadgetry. On defense, coordinate with your team to transform your environments into strongholds. Trap, fortify and create defensive systems to prevent being breached by the enemy. On attack, lead your team through narrow corridors, barricaded doorways and reinforced walls. Combine tactical maps, observation drones, rappelling and more to plan, attack and defuse every situation. Choose from dozens of highly trained, Special Forces operators from around the world. Deploy the latest technology to track enemy movement. Shatter walls to open new lines of fire. Breach ceilings and floors to create new access points. Employ every weapon and gadget from your deadly arsenal to locate, manipulate and destroy your enemies and the environment around them. Experience new strategies and tactics as Rainbow Six Siege evolves over time. Change the rules of Siege with every update that includes new operators, weapons, gadgets and maps. Evolve alongside the ever-changing landscape with your friends and become the most experienced and dangerous operators out there. Compete against others from around the world in ranked match play. Grab your best squad and join the competitive community in weekly tournaments or watch the best professional teams battle it out in the Rainbow Six Siege Pro League.", logo: "https://i.ibb.co/yqKCSpk/R6S.jpg")

Game.create(name: "Destiny 2", platform: "PC", max_players: 6, description: "Destiny 2 is a first-person shooter game that incorporates role-playing and massively multiplayer online game elements. The original Destiny includes on-the-fly matchmaking that allowed players to communicate only with other players with whom they were matched by the game. Destiny 2 features a more optimal way of matchmaking called Guided Games, which allows players to search for clans who may need additional players for activities, such as strikes or raids. Activities in Destiny 2 are divided among player versus environment  and player versus player  game types.", logo: "https://i.ibb.co/mtBNDKZ/Destiny2.jpg")

Game.create(name: "Dota2", platform: "PC", max_players: 10 , description: "Every day, millions of players worldwide enter battle as one of over a hundred Dota heroes. And no matter if it's their 10th hour of play or 1,000th, there's always something new to discover. With regular updates that ensure a constant evolution of gameplay, features, and heroes, Dota 2 has truly taken on a life of its own. When it comes to diversity of heroes, abilities, and powerful items, Dota boasts an endless array—no two games are the same. Any hero can fill multiple roles, and there's an abundance of items to help meet the needs of each game. Dota doesn't provide limitations on how to play, it empowers you to express your own style. Competitive balance is Dota's crown jewel, and to ensure everyone is playing on an even field, the core content of the game—like the vast pool of heroes—is available to all players. Fans can collect cosmetics for heroes and fun add-ons for the world they inhabit, but everything you need to play is already included before you join your first match. Dota is deep, and constantly evolving, but it's never too late to join. Learn the ropes playing co-op vs. bots. Sharpen your skills in the hero demo mode. Jump into the behavior- and skill-based matchmaking system that ensures you'll
be matched with the right players each game.", logo: "https://i.ibb.co/m4Ck3YH/Dota2.jpg")

Game.create(name: "Overwatch", platform: "PC", max_players: 12 , description: "Overwatch features a number of different game modes, principally designed around squad-based combat with two opposing teams of six players each. Players select one of over two dozen pre-made hero characters from one of three class types: Damage heroes that deal most of the damage to attack or defend control points, Tank heroes that can absorb a large amount of damage, and Support heroes that provide healing or other buffs for their teammates. Each hero has a unique skill kit, defining their intrinsic attributes like health points and running speed, their primary attacks, several active and passive skills, and an ultimate ability that can only be used after it has been charged through dealing damage. Players can change their hero during the course of a match, as a goal of Overwatch's design was to encourage dynamic team compositions that adapt to the situation. The game's genre has been described by some journalists as a hero shooter, due to its design around specific heroes and classes.", logo: "https://i.ibb.co/wKYyvWZ/Overwatch.jpg")

Game.create(name: "PlayerUnknown BattleGrounds", platform: "PC", max_players: 4, description: "PLAYERUNKNOWN'S BATTLEGROUNDS is a battle royale shooter that pits 100 players against each other in a struggle for survival. Gather supplies and outwit your opponents to become the last person standing.
PLAYERUNKNOWN, aka Brendan Greene, is a pioneer of the battle royale genre and the creator of the battle royale game modes in the ARMA series and H1Z1: King of the Kill. At PUBG Corp., Greene is working with a veteran team of developers to make PUBG into the world's premiere battle royale experience.
", logo: "https://i.ibb.co/zxVD4WS/Pubg.jpg")

Game.create(name: "Star Craft 2", platform: "PC", max_players: 8, description: "StarCraft II: Wings of Liberty features the return of the three species from the original game: Protoss, Terran, and Zerg. In the Terran campaign, the original StarCraft briefing room is replaced with an interactive version of the battlecruiser Hyperion, with Jim Raynor, now a bitter and hard-drinking mercenary captain, as the central character. In a departure from previous Blizzard games, the campaign is non-linear, with Raynor taking jobs for money and using that money to buy additional units and upgrades. Although each play through will vary, the end result remains consistent, keeping the storyline linear. Blizzard's Vice President Rob Pardo stressed that each campaign will function very differently. The Terran campaign, Wings of Liberty, places players in a mercenary-style campaign, as Terran rebel group Raynor's Raiders raise funds by taking assignments from outside groups. The second release, Heart of the Swarm, is Zerg-focused and has role-playing elements. Kerrigan is the focus of the campaign, and the story revolves around the possibility of her redemption. The Protoss-themed Legacy of the Void is the final expansion, with the Protoss Artanis attempting to reunite the Protoss tribes in order to stop Amon, a fallen Xel'Naga.", logo: "https://i.ibb.co/z7NQyQs/Sc2.png")

Game.create(name: "Rocket League", platform: "PC", max_players: 8 , description: "Soccer meets driving once again in the long-awaited, physics-based sequel to the beloved arena classic, Supersonic Acrobatic Rocket-Powered Battle-Cars. A futuristic Sports-Action game, Rocket League, equips players with booster-rigged vehicles that can be crashed into balls for incredible goals or epic saves across multiple, highly-detailed arenas. Using an advanced physics system to simulate realistic interactions, Rocket League® relies on mass and momentum to give players a complete sense of intuitive control in this unbelievable, high-octane re-imagining of association football.
", logo: "https://i.ibb.co/9WPKp1B/RL.jpg")

puts "Seeding Ownerships..."
#static Ownership Start
Ownership.create(user_id: 1, game_id: 1)
Ownership.create(user_id: 1, game_id: 2)
Ownership.create(user_id: 1, game_id: 3)
Ownership.create(user_id: 1, game_id: 4)
Ownership.create(user_id: 1, game_id: 5)
Ownership.create(user_id: 1, game_id: 6)
Ownership.create(user_id: 1, game_id: 7)
Ownership.create(user_id: 2, game_id: 1)
Ownership.create(user_id: 2, game_id: 3)
Ownership.create(user_id: 2, game_id: 5)

#faker Ownership start
1000.times do
  gameid, userid = 1, 1
  until Ownership.find_by(game_id: gameid, user_id: userid).nil?
    gameid = Game.all.map {|g|g.id}.sample
    userid = User.all.map {|u|u.id}.sample
  end
  Ownership.create(game_id: gameid, user_id: userid)
end


puts "Seeded: User, Game, & Ownership!"
