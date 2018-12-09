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
		"Palaeognathae、またはpaleognathsは、鳥の2つの生き残りの一つであり、もう1つはNeognathaeである。 一緒に、これらの2つのクレードはクレードネオニッスを形成する。 Palaeognathaeには、ラットと呼ばれる飛行しない系統（プラス2本の絶滅した群）の5つの現存する枝、および1つの飛行系統、Neotropicスズメアスが含まれる。",
	],
	["Otidae",
		"Otidaeとは、Otidimorphae（bustards、turacos、cuckoos）やCypselomorphae（ナイトバード、スウィフト、ハチドリ）などの綱目を含むクレードです。 それはゲノム解析によって2014年に同定された。 Cypselomorphaeは、ハト、フラミンゴ、トロピカルバード、そしておそらく多胎性の分類群Metavesのカグと密接に関連していると考えられていました。",
	],
	["Ardeae",
		"アルデアは、2014年にゲノム解析によって命名された、ユーリプチモモフエ（Eurypygimorphae）およびエイコナイト（Aequornithes）を含む鳥の群れである。 当初、ユーリプチモモ属のメンバーは、もともとは廃止されたグループメテベスに分類され、エクオルニュスは、霊長類または灰色目に分類された。",
	]
	]
species_list.each do |species_name,species_info|
	Species.create( species_name: species_name, species_info: species_info)
end



birds_list = [
	["Rheidae (ヘイダエ)",
		"Rheidaeは、最初にPaleoceneに登場した飛行していないratiteの鳥の家族です。すべてのスズメはティナミダエ科のものであり、大きなスキームはラットでもある。 他のラットと異なり、スズメは飛ぶことができますが、一般的には強い飛行船ではありません。",
		10000,
		1],
	["Ostrich（長い口)",
		"ダチョウは飛んでいない鳥の家族、Struthionidaeです。 パチョーネ、EoceneおよびOligoceneの化石はまた家族に属しているかもしれないけれども、Ostrichesは中新世期に初めて登場した。それは暗い茶色の冠と黄色い頭と首の白い喉を持っています。これは首の側の特有のバフラインと対照的です。 平均は45cm（18インチ）です。",
		13000,
		1],
	["Kiwi (キウイ)",
		"キウイは、ニュージーランド原産の飛行機のない鳥類であり、アペリクス（Apteryx）属およびアペリテ（Apterygidae）科に属する。男性は地面に巣の中にある卵を孵化させ、若い人たちを独立させる前に短期間飼育します。",
		14000,
		1],
	["Tinamou (ティナモウ)",
		"Tinamouses は、メキシコ、中米、および南アメリカで見つかった47の種を含む2つの異なる亜科を有する単一の家族（ティナミダエ）を含む鳥類（Tinamiformes）の序列を形成する。",
		121000,
		1],
	["Casuariiforme (カシュアリエ)",
		"Casuariiformesは、生き残ったメンバーが4人いる大型飛行鳥の命です：3種の化粧品と残りの唯一のエミュー種です。男性は地面に巣の中にある卵を孵化させ、若い人たちを独立させる前に短期間飼育します。",
		121000,
		1],
	["Moa (モア)",
		"モアは、ニュージーランド固有の飛べない鳥の9種（6属で）であった。それは暗い茶色の冠と黄色い頭と首の白い喉を持っています。これは首の側の特有のバフラインと対照的です。 平均は45cm（18インチ）です。",
		133000,
		1],

	["Cuckoo (カッコウ)",
		"カツオは鳥類の一種で、ククリ科（Cuculiformae）であり、ククジョル目（Cuculiformes）の唯一の分類群である。それは容易に二次森林に生息し、広範に使用されるプロットでは珍しくなく、選択的な伐採をある程度許容することができます。 エキゾチックな種の大規模なプランテーションはあまり好きではありません。",
		1000,
		2],
	["Bustard (バスタード)",
		"ダチョウは飛んでいない鳥の家族、Struthionidaeです。 パチョーネ、EoceneおよびOligoceneの化石はまた家族に属しているかもしれないけれども、Ostrichesは中新世期に初めて登場した。",
		1000,
		2],
	["Turaco (トゥラコ)",
		"Turacoは、ニュージーランド原産の飛行鳥で、Apteryx属およびApterygidae属に属する。男性は地面に巣の中にある卵を孵化させ、若い人たちを独立させる前に短期間飼育します。",
		1000,
		2],
	["Frogmouth (カエルの口)",
		"カエルは、メキシコ、中米、および南アメリカで見つかった47の種を含む2つの異なる亜科を有する単一の家族（ティナミダエ）を含む鳥類（Tinamiformes）の序列を形成する。しかし、ラテライトとは異なり、一般には強力なフライヤーではありませんが、スズメは飛ぶことができます。 すべての古生物学は先祖を飛ばすことから進化した。",
		1000,
		2],
	["Caprimulgiformes (カプリムリゲ)",
		"カプリムリゲ（Caprimulgiformes）は、飛んでいない大型の鳥であり、生存しているメンバーが3匹あります。それは暗い茶色の冠と黄色い頭と首の白い喉を持っています。これは首の側の特有のバフラインと対照的です。 平均は45cm（18インチ）です。",
		1000,
		2],
	["Owlet-nightjar (オウレツナイトジャー)",
		"Owlet-nightjarは、ニュージーランド固有の飛行鳥類9種（6属）であった。それは容易に二次森林に生息し、広範に使用されるプロットでは珍しくなく、選択的な伐採をある程度許容することができます。 エキゾチックな種の大規模なプランテーションはあまり好きではありません。",
		1000,
		2],

	["Eurypygiformes (ユーリザ目)",
		"Eurypygiformesは、最初にPaleoceneに登場した飛行していないratiteの鳥の家族です。男性は地面に巣の中にある卵を孵化させ、若い人たちを独立させる前に短期間飼育します。",
		1000,
		3],
	["Phaethontiformes (アザミウマ)",
		"アザミウマは飛来しない鳥類の一種であるStruthionidaeである。 パチョーネ、EoceneおよびOligoceneの化石はまた家族に属しているかもしれないけれども、Ostrichesは中新世期に初めて登場した。",
		1000,
		3],
	["Gaviiformes (ギャビ)",
		"Gaviiformesはニュージーランド原産の飛行鳥で、Apteryx属やApterygidae属に属します。しかし、ラテライトとは異なり、一般には強力なフライヤーではありませんが、スズメは飛ぶことができます。 すべての古生物学は先祖を飛ばすことから進化した。",
		1000,
		3],
	["Penguin (アオカケス)",
		"ペンギン（Sphenisciformes、Spheniscidae科）は、水生で飛べない鳥の群である。それは容易に二次森林に生息し、広範に使用されるプロットでは珍しくなく、選択的な伐採をある程度許容することができます。 エキゾチックな種の大規模なプランテーションはあまり好きではありません。",
		1000,
		3],
	["Stork (ストーク)",
		"ストークは、飛んでいない大きな鳥の命です。生存しているメンバーは4種類あります.3種類の魚種とエミューの唯一の種です。それは暗い茶色の冠と黄色い頭と首の白い喉を持っています。これは首の側の特有のバフラインと対照的です。 平均は45cm（18インチ）です。",
		1000,
		3],
	["Suliformes (水疱瘡)",
		"Suliformesは、ニュージーランド固有の飛来しない鳥類（9属6種）であった。男性は地面に巣の中にある卵を孵化させ、若い人たちを独立させる前に短期間飼育します。",
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
