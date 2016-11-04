Rails.logger.info "==============================================="
Rails.logger.info "Creating Sections"
Rails.logger.info "==============================================="

@famous_people = Section.create!(name: "Famous People")
@six_pietri = Section.create!(name: "6 Pietri")
@six_trillin = Section.create!(name: "6 Trillin")

Rails.logger.info "==============================================="
Rails.logger.info "Creating Users"
Rails.logger.info "==============================================="

walt_disney = User.new(
	first_name: "Walt",
	last_name: "Disney",
	photo: "walt-disney.jpg",
	role: "student",
	section: @famous_people
)

charles_darwin = User.new(
	first_name: "Charles",
	last_name: "Darwin",
	photo: "charles-darwin.jpg",
	role: "student",
	section: @famous_people
)

harland_sanders = User.new(
	first_name: "Harland",
	last_name: "Sanders",
	photo: "harland-sanders.jpg",
	role: "student",
	section: @famous_people
)

harrison_ford = User.new(
	first_name: "Harrison",
	last_name: "Ford",
	photo: "harrison-ford.jpg",
	role: "student",
	section: @famous_people
)

jay_z = User.new(
	first_name: "Shawn",
	last_name: "Carter",
	photo: "jay-z.jpg",
	role: "student",
	section: @famous_people
)

jk_rowling = User.new(
	first_name: "Joanne",
	last_name: "Rowling",
	photo: "jk-rowling.jpg",
	role: "student",
	section: @famous_people
)

lady_gaga = User.new(
	first_name: "Lady",
	last_name: "Gaga",
	photo: "lady-gaga.jpg",
	role: "student",
	section: @famous_people
)

oprah_winfrey = User.new(
	first_name: "Oprah",
	last_name: "Winfrey",
	photo: "oprah-winfrey.jpg",
	role: "student",
	section: @famous_people
)

rowland_macy = User.new(
	first_name: "Rowland",
	last_name: "Macy",
	photo: "rowland-macy.jpg",
	role: "student",
	section: @famous_people
)

sidney_poitier = User.new(
	first_name: "Sidney",
	last_name: "Poitier",
	photo: "sidney-poitier.jpg",
	role: "student",
	section: @famous_people
)

isaac_newton = User.new(
	first_name: "Isaac",
	last_name: "Newton",
	photo: "sir-isaac-newton.jpg",
	role: "student",
	section: @famous_people
)

lucille_ball = User.new(
	first_name: "Lucille",
	last_name: "Ball",
	photo: "lucille-ball.jpg",
	role: "student",
	section: @famous_people
)

james_dyson = User.new(
	first_name: "James",
	last_name: "Dyson",
	photo: "sir-james-dyson.jpg",
	role: "student",
	section: @famous_people
)

soichiro_hondas = User.new(
	first_name: "Soichiro",
	last_name: "Hondas",
	photo: "soichiro-hondas.jpg",
	role: "student",
	section: @famous_people
)

stephen_king = User.new(
	first_name: "Stephen",
	last_name: "King",
	photo: "stephen-king.jpg",
	role: "student",
	section: @famous_people
)

steven_spielberg = User.new(
	first_name: "Steven",
	last_name: "Spielberg",
	photo: "steven-spielberg.jpg",
	role: "student",
	section: @famous_people
)

theodor_geisel = User.new(
	first_name: "Theodor",
	last_name: "Geisel",
	photo: "theodor-seuss-geisel.jpg",
	role: "student",
	section: @famous_people
)

thomas_edison = User.new(
	first_name: "Thomas",
	last_name: "Edison",
	photo: "thomas-edison.jpg",
	role: "student",
	section: @famous_people
)

vera_wang = User.new(
	first_name: "Vera",
	last_name: "Wang",
	photo: "vera-wang.jpg",
	role: "student",
	section: @famous_people
)

vincent_van_gogh = User.new(
	first_name: "Vincent",
	last_name: "van Gogh",
	photo: "vincent-van-gogh.jpg",
	role: "student",
	section: @famous_people
)

famous_people = [
	charles_darwin,
	harland_sanders,
	harrison_ford,
	jay_z,
	jk_rowling,
	lady_gaga,
	lucille_ball,
	oprah_winfrey,
	rowland_macy,
	sidney_poitier,
	isaac_newton,
	james_dyson,
	soichiro_hondas,
	stephen_king,
	steven_spielberg,
	theodor_geisel,
	thomas_edison,
	vera_wang,
	vincent_van_gogh,
	walt_disney
]

famous_people.each do |person|
	if person.save
		Rails.logger.info "#{person.first_name} saved."
	else
		Rails.logger.info "ERROR: #{person.first_name} not saved."
	end
end

amanda = User.new(
	first_name: "Amanda",
	photo: "amanda.jpg",
	role: "student",
	section: @six_trillin
)

alexis = User.new(
	first_name: "Alexis",
	photo: "alexis.jpg",
	role: "student",
	section: @six_trillin
)

christopher = User.new(
	first_name: "Christopher",
	photo: "christopher.jpg",
	role: "student",
	section: @six_trillin
)

christian = User.new(
	first_name: "Christian",
	photo: "christian.jpg",
	role: "student",
	section: @six_trillin
)

daniela = User.new(
	first_name: "Daniela",
	photo: "daniela.jpg",
	role: "student",
	section: @six_trillin
)

delvin = User.new(
	first_name: "Delvin",
	photo: "delvin.jpg",
	role: "student",
	section: @six_trillin
)

elijah = User.new(
	first_name: "Elijah",
	photo: "elijah.jpg",
	role: "student",
	section: @six_trillin
)

evelyn = User.new(
	first_name: "Evelyn",
	photo: "evelyn.jpg",
	role: "student",
	section: @six_trillin
)

ezekial = User.new(
	first_name: "Ezekial",
	photo: "ezekial.jpg",
	role: "student",
	section: @six_trillin
)

franklin = User.new(
	first_name: "Franklin",
	photo: "franklin.jpg",
	role: "student",
	section: @six_trillin
)

jorge = User.new(
	first_name: "Jorge",
	photo: "jorge.jpg",
	role: "student",
	section: @six_trillin
)

leonardo = User.new(
	first_name: "Leonardo",
	photo: "leonardo.jpg",
	role: "student",
	section: @six_trillin
)

liyah = User.new(
	first_name: "Liyah",
	photo: "liyah.jpg",
	role: "student",
	section: @six_trillin
)

nyah = User.new(
	first_name: "Nyah",
	photo: "nyah.jpg",
	role: "student",
	section: @six_trillin
)

olga = User.new(
	first_name: "Olga",
	photo: "olga.jpg",
	role: "student",
	section: @six_trillin
)

roselyn = User.new(
	first_name: "Roselyn",
	photo: "roselyn.jpg",
	role: "student",
	section: @six_trillin
)

yolanda = User.new(
	first_name: "Yolanda",
	photo: "yolanda.jpg",
	role: "student",
	section: @six_trillin
)

ehsa_six_trillin = [
	alexis,
	amanda,
	christian,
	christopher,
	daniela,
	delvin,
	elijah,
	evelyn,
	ezekial,
	franklin,
	jorge,
	leonardo,
	liyah,
	nyah,
	olga,
	roselyn,
	yolanda
]

ehsa_six_trillin.each do |person|
	if person.save
		Rails.logger.info "#{person.first_name} saved."
	else
		Rails.logger.info "ERROR: #{person.first_name} not saved."
	end
end

abraham = User.new(
	first_name: "Abraham",
	photo: "abraham.jpg",
	role: "student",
	section: @six_pietri
)

angel = User.new(
	first_name: "Angel",
	photo: "angel.jpg",
	role: "student",
	section: @six_pietri
)

ashlee = User.new(
	first_name: "Ashlee",
	photo: "ashlee.jpg",
	role: "student",
	section: @six_pietri
)

ashley = User.new(
	first_name: "Ashley",
	photo: "ashley.jpg",
	role: "student",
	section: @six_pietri
)

caitlin = User.new(
	first_name: "Caitlin",
	photo: "caitlin.jpg",
	role: "student",
	section: @six_pietri
)

dario = User.new(
	first_name: "Dario",
	photo: "dario.jpg",
	role: "student",
	section: @six_pietri
)

eileen = User.new(
	first_name: "Eileen",
	photo: "eileen.jpg",
	role: "student",
	section: @six_pietri
)

jaheim = User.new(
	first_name: "Jaheim",
	photo: "jaheim.jpg",
	role: "student",
	section: @six_pietri
)

jayden = User.new(
	first_name: "Jayden",
	photo: "jayden.jpg",
	role: "student",
	section: @six_pietri
)

leonardo = User.new(
	first_name: "Leonardo",
	photo: "leonardo.jpg",
	role: "student",
	section: @six_pietri
)

marcell = User.new(
	first_name: "Marcell",
	photo: "marcell.jpg",
	role: "student",
	section: @six_pietri
)

meghan = User.new(
	first_name: "Meghan",
	photo: "meghan.jpg",
	role: "student",
	section: @six_pietri
)

milton = User.new(
	first_name: "Milton",
	photo: "milton.jpg",
	role: "student",
	section: @six_pietri
)

monika = User.new(
	first_name: "Monika",
	photo: "monika.jpg",
	role: "student",
	section: @six_pietri
)

orion = User.new(
	first_name: "Orion",
	photo: "orion.jpg",
	role: "student",
	section: @six_pietri
)

richard = User.new(
	first_name: "Richard",
	photo: "richard.jpg",
	role: "student",
	section: @six_pietri
)

ronnie = User.new(
	first_name: "Ronnie",
	photo: "ronnie.jpg",
	role: "student",
	section: @six_pietri
)

shane = User.new(
	first_name: "Shane",
	photo: "shane.jpg",
	role: "student",
	section: @six_pietri
)

shaylynn = User.new(
	first_name: "Shaylynn",
	photo: "shaylynn.jpg",
	role: "student",
	section: @six_pietri
)

warren = User.new(
	first_name: "Warren",
	photo: "warren.jpg",
	role: "student",
	section: @six_pietri
)

ehsa_six_pietri = [
	abraham,
	angel,
	ashlee,
	ashley,
	caitlin,
	dario,
	eileen,
	jaheim,
	leonardo,
	marcell,
	milton,
	monika,
	orion,
	richard,
	ronnie,
	shaylynn,
	warren
]

ehsa_six_pietri.each do |person|
	if person.save
		Rails.logger.info "#{person.first_name} saved."
	else
		Rails.logger.info "ERROR: #{person.first_name} not saved."
	end
end
