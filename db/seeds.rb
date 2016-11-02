Rails.logger.info "==============================================="
Rails.logger.info "Creating Sections"
Rails.logger.info "==============================================="

@famous_people = Section.create!(name: "Famous People")
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

amanda_rodriguez = User.new(
	first_name: "Amanda",
	last_name: "Rodriguez",
	photo: "amanda-rodriguez.jpg",
	role: "student",
	section: @six_trillin
)

leonardo_pila = User.new(
	first_name: "Leonardo",
	last_name: "Pila",
	photo: "leonardo-pila.jpg",
	role: "student",
	section: @six_trillin
)

yolanda_de_leon = User.new(
	first_name: "Yolanda",
	last_name: "de Leon",
	photo: "yolanda-de-leon.jpg",
	role: "student",
	section: @six_trillin
)

roselyn_crisostomo = User.new(
	first_name: "Roselyn",
	last_name: "Crisostomo",
	photo: "roselyn-crisostomo.jpg",
	role: "student",
	section: @six_trillin
)

ehsa_six_trillin = [
	amanda_rodriguez,
	leonardo_pila,
	yolanda_de_leon
]

ehsa_six_trillin.each do |person|
	if person.save
		Rails.logger.info "#{person.first_name} saved."
	else
		Rails.logger.info "ERROR: #{person.first_name} not saved."
	end
end
