# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


user_list = [
	["Hung","hung@gmail.com","123456","123456",0,"1996-1-1","male","01234568"],
	["Dat","dat@gmail.com","123456","123456",0,"1996-1-1","male","01234568"],
	["TAnh","TAnh@gmail.com","123456","123456",0,"1996-1-1","male","01234568"],
	["Binh","Binh@gmail.com","123456","123456",0,"1996-1-1","male","01234568"],
	["Quoc","Quoc@gmail.com","123456","123456",0,"1996-1-1","male","01234568"],
	["Admin","admin@gmail.com","123456","123456",1,"1996-1-1","male","01234568"]
]
user_list.each do |name, mail, password, password_confirmation, role, birthday, sex, phone|
	User.create( user_name: name, email: mail, password: password, password_confirmation: password_confirmation,
		user_role: role, birthdate: birthday, sex: sex, phone: phone)
end


species_list = [
	["Palaeognathae",
		"Palaeognathae, or paleognaths, is one of the two living clades of birds – the other being Neognathae.	",
	],
	["Otidae",
		"Otidae is a clade that includes the superorders Otidimorphae (bustards, turacos, and cuckoos) and Cypselomorphae (nightbirds, swifts, and hummingbirds).",
	],
	["Ardeae",
		"Ardeae is a clade that of birds that contains Eurypygimorphae and Aequornithes, named in 2014 by genome analysis.",
	]
	]
species_list.each do |species_name,species_info|
	Species.create( species_name: species_name, species_info: species_info)
end



birds_list = [
	["Rheidae",
		"Rheidae is a family of flightless ratite birds which first appeared in the Paleocene.",
		10000,
		1],
	["Ostrich",
		"The ostriches are a family, Struthionidae, of flightless birds. Ostriches first appeared during the Miocene epoch, though various Paleocene, Eocene and Oligocene fossils may also belong to the family.",
		13000,
		1],
	["Kiwi",
		"Kiwi are flightless birds native to New Zealand, in the genus Apteryx and family Apterygidae. ",
		14000,
		1],
	["Tinamou",
		"Tinamous form an order of birds (Tinamiformes), comprising a single family (Tinamidae) with two distinct subfamilies, containing 47 species found in Mexico, Central America, and South America. ",
		121000,
		1],
	["Casuariiforme",
		"The Casuariiformes is an order of large flightless bird that has four surviving members: the three species of cassowary, and the only remaining species of emu. ",
		121000,
		1],
	["Moa",
		"The moa were nine species (in six genera) of flightless birds endemic to New Zealand.",
		133000,
		1],

	["Cuckoo",
		"The cuckoos are a family of birds, Cuculidae, the sole taxon in the order Cuculiformes.",
		1000,
		2],
	["Bustard",
		"The ostriches are a family, Struthionidae, of flightless birds. Ostriches first appeared during the Miocene epoch, though various Paleocene, Eocene and Oligocene fossils may also belong to the family.",
		1000,
		2],
	["Turaco",
		"Turaco are flightless birds native to New Zealand, in the genus Apteryx and family Apterygidae. ",
		1000,
		2],
	["Frogmouth",
		"Frogmouth form an order of birds (Tinamiformes), comprising a single family (Tinamidae) with two distinct subfamilies, containing 47 species found in Mexico, Central America, and South America. ",
		1000,
		2],
	["Caprimulgiformes",
		"The Caprimulgiformes is an order of large flightless bird that has four surviving members: the three species of cassowary, and the only remaining species of emu. ",
		1000,
		2],
	["Owlet-nightjar",
		"Owlet-nightjar were nine species (in six genera) of flightless birds endemic to New Zealand.",
		1000,
		2],

	["Eurypygiformes",
		"Eurypygiformes is a family of flightless ratite birds which first appeared in the Paleocene.",
		1000,
		3],
	["Phaethontiformes",
		"Phaethontiformes are a family, Struthionidae, of flightless birds. Ostriches first appeared during the Miocene epoch, though various Paleocene, Eocene and Oligocene fossils may also belong to the family.",
		1000,
		3],
	["Gaviiformes",
		"Gaviiformes are flightless birds native to New Zealand, in the genus Apteryx and family Apterygidae. ",
		1000,
		3],
	["Penguin",
		"Penguins (order Sphenisciformes, family Spheniscidae) are a group of aquatic, flightless birds.",
		1000,
		3],
	["Stork",
		"The Stork is an order of large flightless bird that has four surviving members: the three species of cassowary, and the only remaining species of emu. ",
		1000,
		3],
	["Suliformes",
		"The Suliformes were nine species (in six genera) of flightless birds endemic to New Zealand.",
		1000,
		3],
	["Sibia (チメドリ)",
	 "旧大陸の中低緯度（主に熱帯）に生息する。なお、アメリカ西海岸にいるミソサザイモドキ Chamaea は、チメドリ科からダルマエナガ科に移された。",
	 1000,
	 3],
	["Blue Jay (アオカケス)",
	 "森林や農耕地・市街地などに生息する。ペアで縄張りを形成して生活する。英名jayは「ジェイ、ジェイ」と聞こえる鳴き声に由来するが、猛禽類の鳴き声を真似て威嚇などに用いることもある。",
	 1000,
	 3],
	["Lazuli bunting (スズメ目)",
	 "南北アメリカ（ガラパゴス諸島を含む）の熱帯に生息する。雄は色鮮やかな羽色が多いが、雌は地味である。",
	 1000,
	 3],
	]
birds_list.each do |bird_name, bird_info, bird_price, species_id|
	Bird.create( bird_name: bird_name, bird_info: bird_info,
		bird_price: bird_price, species_id: species_id)
end

Bird.where(id:19).update_all(bird_voice:"voice/19.mp3")
Bird.where(id:19).update_all(bird_price:30000)

(1..21).each do |n|
  image = "bird_images/#{n}.jpg"
  bird_id = n
  BirdImage.create(image: image, bird_id: bird_id)
end

sibia_image = [
    "bird_images/19_1.jpg",
		"bird_images/19_2.jpg",
		"bird_images/19_3.jpg",
		"bird_images/19_4.jpg"
]

sibia_image.each do |i|
	BirdImage.create(image: i, bird_id: 19)
end


sibia_reviews = [
	["めっちゃ綺麗なとり~",40,1,19],
	["この鳥の声はユニークですね",45,2,19],
	["まだ、見てる人いまふか？？﻿",30,3,19],
	["この鳥、飼いたいものだ :))",50,5,19],
	]


sibia_reviews.each do |comment, rating, user_id, bird_id|
	Review.create(comment: comment, rating: rating, user_id: user_id, bird_id: bird_id, rating_appearance: rand(max=10)*5,
                rating_voice: rand(max=10)*5,  rating_health: rand(max=10)*5, rating_price: rand(max=10)*5,rating_easy: rand(max=10)*5)
end

random_reviews = [
		["めっちゃ綺麗なとり~",40,4,17],
		["この鳥の声はユニークですね",45,4,18],
		["まだ、見てる人いまふか？？﻿",30,4,19],
		["この鳥、飼いたいものだ :))",50,4,20],
		["めっちゃ綺麗なとり~",40,4,17],
		["この鳥の声はユニークですね",45,4,16],
		["まだ、見てる人いまふか？？﻿",30,4,15],
		["この鳥、飼いたいものだ :))",50,4,14],
]

random_reviews.each do |comment, rating, user_id, bird_id|
	Review.create(comment: comment, rating: rating, user_id: user_id, bird_id: bird_id, rating_appearance: rand(max=10)*5,
                rating_voice: rand(max=10)*5,  rating_health: rand(max=10)*5, rating_price: rand(max=10)*5,rating_easy: rand(max=10)*5)
end
