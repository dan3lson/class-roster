Rails.logger.info "==============================================="
Rails.logger.info "Creating Orgs"
Rails.logger.info "==============================================="

@ehsa = Org.create!(name: "East Harlem Scholars Academy")
@famous_people = Org.create!(name: "Famous People")

Rails.logger.info "==============================================="
Rails.logger.info "Creating Sections"
Rails.logger.info "==============================================="

@failures = Section.create!(name: "Failures", org: @famous_people)
@five_van_pelt = Section.create!(name: "5 Van Pelt", org: @ehsa)
@five_navarro = Section.create!(name: "5 Navarro", org: @ehsa)
@six_pietri = Section.create!(name: "6 Pietri", org: @ehsa)
@six_trillin = Section.create!(name: "6 Trillin", org: @ehsa)
@six_wright = Section.create!(name: "6 Wright", org: @ehsa)

Rails.logger.info "==============================================="
Rails.logger.info "Creating Users"
Rails.logger.info "==============================================="

walt_disney = User.new(
	first_name: "Walt",
	last_name: "Disney",
	photo: "walt-disney.jpg",
	role: "student",
	section: @failures
)

charles_darwin = User.new(
	first_name: "Charles",
	last_name: "Darwin",
	photo: "charles-darwin.jpg",
	role: "student",
	section: @failures
)

harland_sanders = User.new(
	first_name: "Harland",
	last_name: "Sanders",
	photo: "harland-sanders.jpg",
	role: "student",
	section: @failures
)

harrison_ford = User.new(
	first_name: "Harrison",
	last_name: "Ford",
	photo: "harrison-ford.jpg",
	role: "student",
	section: @failures
)

jay_z = User.new(
	first_name: "Shawn",
	last_name: "Carter",
	photo: "jay-z.jpg",
	role: "student",
	section: @failures
)

jk_rowling = User.new(
	first_name: "Joanne",
	last_name: "Rowling",
	photo: "jk-rowling.jpg",
	role: "student",
	section: @failures
)

lady_gaga = User.new(
	first_name: "Lady",
	last_name: "Gaga",
	photo: "lady-gaga.jpg",
	role: "student",
	section: @failures
)

oprah_winfrey = User.new(
	first_name: "Oprah",
	last_name: "Winfrey",
	photo: "oprah-winfrey.jpg",
	role: "student",
	section: @failures
)

rowland_macy = User.new(
	first_name: "Rowland",
	last_name: "Macy",
	photo: "rowland-macy.jpg",
	role: "student",
	section: @failures
)

sidney_poitier = User.new(
	first_name: "Sidney",
	last_name: "Poitier",
	photo: "sidney-poitier.jpg",
	role: "student",
	section: @failures
)

isaac_newton = User.new(
	first_name: "Isaac",
	last_name: "Newton",
	photo: "sir-isaac-newton.jpg",
	role: "student",
	section: @failures
)

lucille_ball = User.new(
	first_name: "Lucille",
	last_name: "Ball",
	photo: "lucille-ball.jpg",
	role: "student",
	section: @failures
)

james_dyson = User.new(
	first_name: "James",
	last_name: "Dyson",
	photo: "sir-james-dyson.jpg",
	role: "student",
	section: @failures
)

soichiro_hondas = User.new(
	first_name: "Soichiro",
	last_name: "Hondas",
	photo: "soichiro-hondas.jpg",
	role: "student",
	section: @failures
)

stephen_king = User.new(
	first_name: "Stephen",
	last_name: "King",
	photo: "stephen-king.jpg",
	role: "student",
	section: @failures
)

steven_spielberg = User.new(
	first_name: "Steven",
	last_name: "Spielberg",
	photo: "steven-spielberg.jpg",
	role: "student",
	section: @failures
)

theodor_geisel = User.new(
	first_name: "Theodor",
	last_name: "Geisel",
	photo: "theodor-seuss-geisel.jpg",
	role: "student",
	section: @failures
)

thomas_edison = User.new(
	first_name: "Thomas",
	last_name: "Edison",
	photo: "thomas-edison.jpg",
	role: "student",
	section: @failures
)

vera_wang = User.new(
	first_name: "Vera",
	last_name: "Wang",
	photo: "vera-wang.jpg",
	role: "student",
	section: @failures
)

vincent_van_gogh = User.new(
	first_name: "Vincent",
	last_name: "van Gogh",
	photo: "vincent-van-gogh.jpg",
	role: "student",
	section: @failures
)

failures = [
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

failures.each do |person|
	if person.save
		Rails.logger.info "#{person.first_name} saved."
	else
		Rails.logger.info "ERROR: #{person.first_name} not saved."
	end
end

# 5 Navarro

aiden = User.create!(
	first_name: "Aiden",
	photo: "aiden.jpg",
	role: "student",
	section: @five_navarro
)

aliza = User.create!(
	first_name: "Aliza",
	photo: "aliza.jpg",
	role: "student",
	section: @five_navarro
)

dalani = User.create!(
	first_name: "Dalani",
	photo: "dalani.jpg",
	role: "student",
	section: @five_navarro
)

garvey = User.create!(
	first_name: "Garvey",
	photo: "garvey.jpg",
	role: "student",
	section: @five_navarro
)

jahzeel = User.create!(
	first_name: "Jahzeel",
	photo: "jahzeel.jpg",
	role: "student",
	section: @five_navarro
)

jhojan = User.create!(
	first_name: "Jhojan",
	photo: "jhojan.jpg",
	role: "student",
	section: @five_navarro
)

jonari = User.create!(
	first_name: "Jonari",
	photo: "jonari.jpg",
	role: "student",
	section: @five_navarro
)

julieni = User.create!(
	first_name: "Julieni",
	photo: "julieni.jpg",
	role: "student",
	section: @five_navarro
)

kayla = User.create!(
	first_name: "Kayla",
	photo: "kayla.jpg",
	role: "student",
	section: @five_navarro
)

kelvin = User.create!(
	first_name: "Kelvin",
	photo: "kelvin.jpg",
	role: "student",
	section: @five_navarro
)

lkai = User.create!(
	first_name: "L kai",
	photo: "lkai.jpg",
	role: "student",
	section: @five_navarro
)

makayla = User.create!(
	first_name: "Makayla",
	photo: "makayla.jpg",
	role: "student",
	section: @five_navarro
)

matthew = User.create!(
	first_name: "Matthew",
	photo: "matthew.jpg",
	role: "student",
	section: @five_navarro
)

mia = User.create!(
	first_name: "Mia",
	photo: "mia.jpg",
	role: "student",
	section: @five_navarro
)

nyesha = User.create!(
	first_name: "Nyesha",
	photo: "nyesha.jpg",
	role: "student",
	section: @five_navarro
)

nykarra = User.create!(
	first_name: "Nykarra",
	photo: "nykarra.jpg",
	role: "student",
	section: @five_navarro
)

rosalynn = User.create!(
	first_name: "Rosalynn",
	photo: "rosalynn.jpg",
	role: "student",
	section: @five_navarro
)

thomas = User.create!(
	first_name: "Thomas",
	photo: "thomas.jpg",
	role: "student",
	section: @five_navarro
)

tyler = User.create!(
	first_name: "Tyler",
	photo: "tyler.jpg",
	role: "student",
	section: @five_navarro
)

# 5 Van Pelt

alberto = User.create!(
	first_name: "Alberto",
	photo: "alberto.jpg",
	role: "student",
	section: @five_van_pelt
)

arthur = User.create!(
	first_name: "Arthur",
	photo: "arthur.jpg",
	role: "student",
	section: @five_van_pelt
)

bladimir = User.create!(
	first_name: "Bladimir",
	photo: "bladimir.jpg",
	role: "student",
	section: @five_van_pelt
)

deon = User.create!(
	first_name: "Deon",
	photo: "deon.jpg",
	role: "student",
	section: @five_van_pelt
)

diego = User.create!(
	first_name: "Diego",
	photo: "diego.jpg",
	role: "student",
	section: @five_van_pelt
)

emilio = User.create!(
	first_name: "Emilio",
	photo: "emilio.jpg",
	role: "student",
	section: @five_van_pelt
)

evelyn = User.create!(
	first_name: "Evelyn",
	photo: "evelyn.jpg",
	role: "student",
	section: @five_van_pelt
)

habiba = User.create!(
	first_name: "Habiba",
	photo: "habiba.jpg",
	role: "student",
	section: @five_van_pelt
)

iyana = User.create!(
	first_name: "Iyana",
	photo: "iyana.jpg",
	role: "student",
	section: @five_van_pelt
)

jayden = User.create!(
	first_name: "Jayden",
	photo: "jayden.jpg",
	role: "student",
	section: @five_van_pelt
)

justin = User.create!(
	first_name: "Justin",
	photo: "justin.jpg",
	role: "student",
	section: @five_van_pelt
)

kymaysa = User.create!(
	first_name: "KymAsya",
	photo: "kymasya.jpg",
	role: "student",
	section: @five_van_pelt
)

leo = User.create!(
	first_name: "Leo",
	photo: "leo.jpg",
	role: "student",
	section: @five_van_pelt
)

mariciana = User.create!(
	first_name: "Mariciana",
	photo: "mariciana.jpg",
	role: "student",
	section: @five_van_pelt
)

naima = User.create!(
	first_name: "Naima",
	photo: "naima.jpg",
	role: "student",
	section: @five_van_pelt
)

naomi = User.create!(
	first_name: "Naomi",
	photo: "naomi.jpg",
	role: "student",
	section: @five_van_pelt
)

nierra = User.create!(
	first_name: "Nierra",
	photo: "nierra.jpg",
	role: "student",
	section: @five_van_pelt
)

trevon = User.create!(
	first_name: "Trevon",
	photo: "trevon.jpg",
	role: "student",
	section: @five_van_pelt
)

veronica = User.create!(
	first_name: "Veronica",
	photo: "veronica.jpg",
	role: "student",
	section: @five_van_pelt
)

yuridia = User.create!(
	first_name: "Yuridia",
	photo: "yuridia.jpg",
	role: "student",
	section: @five_van_pelt
)

# 6 Trillin

amanda = User.new(
	first_name: "Amanda",
	photo: "amanda.jpg",
	role: "student",
	section: @six_trillin
)

amanda2 = User.new(
	first_name: "Amanda",
	photo: "amanda2.jpg",
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

ibrahim = User.new(
	first_name: "Ibrahim",
	photo: "ibrahim.jpg",
	role: "student",
	section: @six_trillin
)

jorge = User.new(
	first_name: "Jorge",
	photo: "jorge.jpg",
	role: "student",
	section: @six_trillin
)

jose = User.new(
	first_name: "Jose",
	photo: "jose.jpg",
	role: "student",
	section: @six_trillin
)

kinaije = User.new(
	first_name: "Kinaije",
	photo: "kinaije.jpg",
	role: "student",
	section: @six_trillin
)

lamek = User.new(
	first_name: "Lamek",
	photo: "lamek.jpg",
	role: "student",
	section: @six_trillin
)

leonardo = User.new(
	first_name: "Leonardo",
	photo: "leonardo.jpg",
	role: "student",
	section: @six_trillin
)

liliann = User.new(
	first_name: "Liliann",
	photo: "liliann.jpg",
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
	amanda2,
	christian,
	christopher,
	daniela,
	delvin,
	elijah,
	evelyn,
	ezekial,
	franklin,
	ibrahim,
	jorge,
	jose,
	kinaije,
	lamek,
	leonardo,
	liliann,
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

# 6 Pietri

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

ashley = User.new(
	first_name: "Ashley",
	photo: "ashley.jpg",
	role: "student",
	section: @six_pietri
)

ashlee = User.new(
	first_name: "Ashlee",
	photo: "ashlee.jpg",
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

# 6 Wright

alyssa = User.create!(
	first_name: "Alyssa",
	photo: "alyssa.jpg",
	role: "student",
	section: @six_wright
)

amarie = User.create!(
	first_name: "Amarie",
	photo: "amarie.jpg",
	role: "student",
	section: @six_wright
)

emily = User.create!(
	first_name: "Emily",
	photo: "emily.jpg",
	role: "student",
	section: @six_wright
)

evan = User.create!(
	first_name: "Evan",
	photo: "evan.jpg",
	role: "student",
	section: @six_wright
)

gabrielle = User.create!(
	first_name: "Gabrielle",
	photo: "gabrielle.jpg",
	role: "student",
	section: @six_wright
)

hailie = User.create!(
	first_name: "Hailie",
	photo: "hailie.jpg",
	role: "student",
	section: @six_wright
)

hamza = User.create!(
	first_name: "Hamza",
	photo: "hamza.jpg",
	role: "student",
	section: @six_wright
)

isaiah = User.create!(
	first_name: "Isaiah",
	photo: "isaiah.jpg",
	role: "student",
	section: @six_wright
)

kenny = User.create!(
	first_name: "Kenny",
	photo: "kenny.jpg",
	role: "student",
	section: @six_wright
)

michael = User.create!(
	first_name: "Michael",
	photo: "michael.jpg",
	role: "student",
	section: @six_wright
)

myles = User.create!(
	first_name: "Myles",
	photo: "myles.jpg",
	role: "student",
	section: @six_wright
)

pablo = User.create!(
	first_name: "Pablo",
	photo: "pablo.jpg",
	role: "student",
	section: @six_wright
)

raelynn = User.create!(
	first_name: "Raelynn",
	photo: "raelynn.jpg",
	role: "student",
	section: @six_wright
)

serenity = User.create!(
	first_name: "serenity",
	photo: "serenity.jpg",
	role: "student",
	section: @six_wright
)
