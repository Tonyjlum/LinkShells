#clean Database
User.destroy_all
Game.destroy_all
Ownership.destroy_all
Event.destroy_all
Confirm.destroy_all
puts "Destroy all user, game, ownerships, events, and confirms"

def controller_img_sample
  ["https://i.ibb.co/pzKVBzL/01.png","https://i.ibb.co/1qh9W84/02.png", "https://i.ibb.co/brpgK25/03.png","https://i.ibb.co/Gtx4bB9/04.png", "https://i.ibb.co/pKsD8Fy/05.png", "https://i.ibb.co/gzXrmJ9/06.png", "https://i.ibb.co/tJWKt1m/07.png", "https://i.ibb.co/rvbnPn4/08.png", "https://i.ibb.co/rvbnPn4/08.png", "https://i.ibb.co/FqCRm4D/09.png", "https://i.ibb.co/CWfys3P/10.png", "https://i.ibb.co/MZ0C5mm/11.png", "https://i.ibb.co/MDQFWsp/12.png", "https://i.ibb.co/L9vZ6VV/13.png"].sample
end

puts "Seeding Users..."
#Static User Start
tony = User.create(email: "tonyjlum@gmail.com", password: "greentea", age: 29, username: "Mumbles", profile_img: "https://yt3.ggpht.com/a-/AN66SAxPCaupIFF2bzXdkTMhOgP9G-RyGrwut6nEAw=s900-mo-c-c0xffffffff-rj-k-no")

sean = User.create(email: "spyearwood@yahoo.com", password: "yearwood", age: 29, username: "SeanWhy", profile_img: "https://lh4.googleusercontent.com/-jBslN031COg/AAAAAAAAAAI/AAAAAAAAACM/037Hr2Z_9Uw/photo.jpg")

#faker Users Start
148.times do
  password = ""
  password = Faker::Hacker.ingverb until password.length > 6
  User.create(
    email: Faker::Internet.email,
    password: password,
    age: (19..99).to_a.sample,
    username: "#{Faker::Cat.name}_#{Faker::Dog.name}",
    profile_img: controller_img_sample
  )
end

puts "Seeding Games..."
#static Games start
r6 = Game.create(name: "Rainbow Six Siege", platform: "PC", max_players: 10, description: "TMaster the art of destruction and gadgetry in Tom Clancy’s Rainbow Six Siege. Face intense close quarters combat, high lethality, tactical decision making, team play and explosive action within every moment. Experience a new era of fierce firefights and expert strategy born from the rich legacy of past Tom Clancy's Rainbow Six games. Engage in a brand-new style of assault using an unrivaled level of destruction and gadgetry. On defense, coordinate with your team to transform your environments into strongholds. Trap, fortify and create defensive systems to prevent being breached by the enemy. On attack, lead your team through narrow corridors, barricaded doorways and reinforced walls. Combine tactical maps, observation drones, rappelling and more to plan, attack and defuse every situation. Choose from dozens of highly trained, Special Forces operators from around the world.", logo: "https://i.ibb.co/ngNbkm0/R6S.png")

Game.create(name: "Destiny 2", platform: "PC", max_players: 12, description: "Destiny 2 is a first-person shooter game that incorporates role-playing and massively multiplayer online game elements. The original Destiny includes on-the-fly matchmaking that allowed players to communicate only with other players with whom they were matched by the game. Destiny 2 features a more optimal way of matchmaking called Guided Games, which allows players to search for clans who may need additional players for activities, such as strikes or raids. Activities in Destiny 2 are divided among player versus environment  and player versus player  game types.", logo: "https://i.ibb.co/6FQwpSd/Destiny2.png")

Game.create(name: "Dota2", platform: "PC", max_players: 10 , description: "Every day, millions of players worldwide enter battle as one of over a hundred Dota heroes. And no matter if it's their 10th hour of play or 1,000th, there's always something new to discover. With regular updates that ensure a constant evolution of gameplay, features, and heroes, Dota 2 has truly taken on a life of its own. When it comes to diversity of heroes, abilities, and powerful items, Dota boasts an endless array—no two games are the same. Any hero can fill multiple roles, and there's an abundance of items to help meet the needs of each game. Dota doesn't provide limitations on how to play, it empowers you to express your own style.", logo: "https://i.ibb.co/FhY81gv/Dota2.png")

Game.create(name: "Overwatch", platform: "PC", max_players: 12 , description: "Overwatch features a number of different game modes, principally designed around squad-based combat with two opposing teams of six players each. Players select one of over two dozen pre-made hero characters from one of three class types: Damage heroes that deal most of the damage to attack or defend control points, Tank heroes that can absorb a large amount of damage, and Support heroes that provide healing or other buffs for their teammates. Each hero has a unique skill kit, defining their intrinsic attributes like health points and running speed, their primary attacks, several active and passive skills, and an ultimate ability that can only be used after it has been charged through dealing damage.", logo: "https://i.ibb.co/4MvdSzY/Overwatch.png")

Game.create(name: "PlayerUnknown BattleGrounds", platform: "PC", max_players: 4, description: "PLAYERUNKNOWN'S BATTLEGROUNDS is a battle royale shooter that pits 100 players against each other in a struggle for survival. Gather supplies and outwit your opponents to become the last person standing.
PLAYERUNKNOWN, aka Brendan Greene, is a pioneer of the battle royale genre and the creator of the battle royale game modes in the ARMA series and H1Z1: King of the Kill. At PUBG Corp., Greene is working with a veteran team of developers to make PUBG into the world's premiere battle royale experience.
", logo: "https://i.ibb.co/smdkvSK/Pubg.png")

Game.create(name: "Star Craft 2", platform: "PC", max_players: 8, description: "StarCraft II: Wings of Liberty features the return of the three species from the original game: Protoss, Terran, and Zerg. In the Terran campaign, the original StarCraft briefing room is replaced with an interactive version of the battlecruiser Hyperion, with Jim Raynor, now a bitter and hard-drinking mercenary captain, as the central character. In a departure from previous Blizzard games, the campaign is non-linear, with Raynor taking jobs for money and using that money to buy additional units and upgrades. Although each play through will vary, the end result remains consistent, keeping the storyline linear. ", logo: "https://i.ibb.co/DMnPpKD/Sc2.png")

Game.create(name: "Rocket League", platform: "PC", max_players: 8 , description: "Soccer meets driving once again in the long-awaited, physics-based sequel to the beloved arena classic, Supersonic Acrobatic Rocket-Powered Battle-Cars. A futuristic Sports-Action game, Rocket League, equips players with booster-rigged vehicles that can be crashed into balls for incredible goals or epic saves across multiple, highly-detailed arenas. Using an advanced physics system to simulate realistic interactions, Rocket League® relies on mass and momentum to give players a complete sense of intuitive control in this unbelievable, high-octane re-imagining of association football.
", logo: "https://i.ibb.co/hZvkHP6/RL.png")

Game.create(name: "Monster Hunter world", platform:"PC", max_players: 4 , description: "Monster Hunter: World is an open-world action role-playing game played from a third-person perspective. Similar to previous games in the series, the player takes the role of a player-created character who travels to the New World, an unpopulated land mass filled with monsters, to join the Research Commission that study the land from their central command base of Astera. The Research Commission tasks the Hunter to hunt down and either kill or capture large monsters that roam outside Astera to both protect the Commission and to study the monsters there. The player's character does not have any intrinsic attributes, but instead these are determined by what equipment the character is equipped with. This includes a weapon, selected from the series' fourteen archetypes (such as long sword, bow, or hammer), which then further defines the types of combat moves and abilities the player can use, and pieces of armor, which can lead to beneficial or detrimental combat skills if matched properly.", logo: "https://i.ibb.co/yXXH9S2/Monster-hunter.png")

Game.create(name: "Left 4 Dead 2", platform: "PC", max_players: "8", description: "Left 4 Dead 2 is a first-person shooter with a heavy emphasis on cooperative gameplay. The game presents five new campaigns, each composed of three to five smaller levels. As in the first game, each campaign is presented in menus and loading screens as a film starring the four Survivors; and features, upon completing a campaign, a faux credits screen which acts as the final scoreboard for the players and recaps certain performance statistics for the group.", logo: "https://i.ibb.co/sPjkpfv/left-4-dead-2.png")

Game.create(name: "Super Smash Bros Ultimate", platform: "Switch", max_players: 32, description: "Super Smash Bros. Ultimate is a fighting game in which characters from Nintendo games and from other third-party franchises must try to knock each other out of an arena. Each player has a percentage meter which raises when they take damage, making them easier to launch in the air and out of the arena.", logo: "https://i.ibb.co/1G5ymyQ/Smash-Ultimate.png")

Game.create(name: "MarioKart 8 Deluxe", platform: "Switch", max_players: 12 , description: "Characters from the Mario universe race against each other in go-karts, attempting to hinder their opponents or improve their racing performance using various tools found in item boxes. In addition, the game includes four different difficulties, which can be selected before beginning the race to challenge players. Returning features from previous installments include motorbikes and twelve-player racing from Mario Kart Wii, as well as hang gliders, underwater racing and vehicle customization.", logo: "https://i.ibb.co/kJrtFk6/Mario-Kart-8-Deluxe-logo.png")

Game.create(name: "DragonBall Fighter Z", platform: "PS4", max_players: 16 , description: "The gameplay is inspired by concepts from several other fighting games, namely the control scheme and team mechanics. Players each select three characters to form a team, from an initial roster of 24. One character is controlled and can be switched with one of the other characters at any time. Players can also call one of their other characters to perform an Assist move, allowing simultaneous attacks and combos with the entire team. All three of the opponent's characters must be defeated to win the game.", logo: "https://i.ibb.co/nnL5TVD/Fighter-Z.png")

Game.create(name: "Warframe", platform: "PC", max_players: 4, description: "Warframe is an online action game that includes elements of shooters, RPG and stealth games. The player creates their Tenno character, which includes a basic armor unit called a Warframe which provides the player with special abilities, basic weapons (a melee weapon, guns, and sidearms), and a ship. Through the ship's console, they can select any of the available missions to them. A main storyline set of missions requires players to complete certain missions across planets and moons in the solar system, to be able to access relays that they can progress to other planets or locations.", logo: "https://i.ibb.co/DVcL09P/warframe.png")

Game.create(name: "Battlefield 1", platform: "PC", max_players: 32 , description: "Battlefield 1 is a first-person shooter game that emphasizes teamwork. It is set in the period of World War I, and is inspired by historical events. Players can make use of World War I weapons, including bolt-action rifles, submachine guns, automatic and semi-automatic rifles, artillery, flamethrowers, and mustard gas to combat opponents.Players can take control of various armored vehicles, including light and heavy tanks, armored trucks, cars, torpedo boats, bi- and tri-plane aircraft, an armored train, Reconnaissance vehicles, a Dreadnought and an LZ 30 Airship, as well as ride horses into battle.", logo: "https://i.ibb.co/YcCRbfb/BF1.png")

Game.create(name: "Diablo 3", platform: "PC", max_players: 4, description: "Diablo III is a dungeon crawler action role-playing game. Much like in Diablo and Diablo II, the quality and attributes of equipment are randomized. In addition to base stats, such as damage and attack speed for weapon or armor points on armor, higher-quality items have additional properties, such as extra damage, attribute bonuses, bonuses to critical hit chance, or sockets, which allow items to be upgraded and customized by adding gems for various stat bonuses.", logo: "https://i.ibb.co/hsF2K1G/D3.png")

Game.create(name: "Borderlands 2", platform: "PC", max_players: 4, description: "Borderlands 2 is an action role-playing game played from a first-person perspective. The gameplay revolves around the completion of missions and the collection of randomly generated loot (such as weapons, shields, skins, and other items) with various rarities, statistics, and elemental effects. Four playable character classes are available in the base game, each with their own unique abilities and skill trees: Axton, the Commando, can summon a turret to provide offensive support. Maya, the Siren, can phaselock enemies by trapping them in a sphere of energy for a few seconds. Zer0, the Assassin, can temporarily become invisible and spawn a hologram decoy to distract enemies; an attack delivered in this state provides bonus damage. Salvador, the Gunzerker, can use his titular ability to temporarily dual-wield weapons.", logo: "https://i.ibb.co/Xt4qdbp/Borderlands-2.png")

Game.create(name: "TeamFortress 2", platform: "PC", max_players: 6, description: "Team Fortress 2 has similar gameplay to previous releases in the series due to its focus on two opposing teams competing for a combat-based objective. In the game's fiction, the teams are composed of mercenaries hired by two feuding brothers to protect the company assets belonging to one brother while trying to destroy those of the other; the teams are thus represented by the names of these companies: Reliable Excavation & Demolition (RED) and Builders League United (BLU). Players can choose to play as one of nine character classes in these teams, each with his own unique strengths, weaknesses, and weapons.", logo: "https://i.ibb.co/ssk70GF/tf2.png")

Game.create(name: "Counter Strike Global Offensive", platform: "PC", max_players: 10, description: "Global Offensive, like prior games in the Counter-Strike series, is an objective-based, multiplayer first-person shooter. Two opposing teams, known as the Terrorists and the Counter Terrorists, compete in game modes to complete objectives, such as securing a location to plant or defuse a bomb and rescuing or guarding hostages. At the end of each round, players are rewarded based on their individual performance with in-game currency to spend on more powerful weapons in subsequent rounds. Winning rounds results in more money than losing, and completing objectives such as killing enemy players gives cash bonuses. Uncooperative actions, such as killing teammates, results in a penalty.", logo: "https://i.ibb.co/rfV81pX/csgo.png")


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
600.times do
  gameid, userid = 1, 1
  until Ownership.find_by(game_id: gameid, user_id: userid).nil?
    gameid = Game.all.map {|g|g.id}.sample
    userid = User.all.map {|u|u.id}.sample
  end
  Ownership.create(game_id: gameid, user_id: userid)
end

puts "Seeding Events"
#static event

#Faker Events
def real_game
  Game.find(Game.all.map {|g| g.id}.sample)
end

201.times do
  current_game = real_game
  Event.create(
    game_id: (current_game.id), location: "#{Faker::Address.street_address} #{Faker::Address.zip[0..4]}", max_player: ((4..current_game.max_players).to_a.sample), date: "#{Faker::Date.forward(180)}", user_id:(1..50).to_a.sample)
end
#static confirms
puts "Seeding Confirms"
Confirm.create(event_id: 1, user_id: 1)
Confirm.create(event_id: 2, user_id: 1)
Confirm.create(event_id: 1, user_id: 2)
Confirm.create(event_id: 2, user_id: 3)

800.times do
  eventid, userid = 1,1
  until Confirm.find_by(event_id: eventid, user_id: userid).nil? && Event.find(eventid).max_player > Event.find(eventid).users.count
    eventid = Event.all.map {|e|e.id}.sample
    userid = User.all.map {|u|u.id}.sample
  end
  Confirm.create(event_id: eventid, user_id: userid)
end

puts "Seeded: User, Game, Ownership, Events, & Confirms!"
