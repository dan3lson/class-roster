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
	photo: "#{ENV['FAMOUS']}/#{@failures.folder_name}/walt-disney.jpg",
	role: "student",
	section: @failures
)

charles_darwin = User.new(
	first_name: "Charles",
	last_name: "Darwin",
	photo: "#{ENV['FAMOUS']}/#{@failures.folder_name}/charles-darwin.jpg",
	role: "student",
	section: @failures
)

harland_sanders = User.new(
	first_name: "Harland",
	last_name: "Sanders",
	photo: "#{ENV['FAMOUS']}/#{@failures.folder_name}/harland-sanders.jpg",
	role: "student",
	section: @failures
)

harrison_ford = User.new(
	first_name: "Harrison",
	last_name: "Ford",
	photo: "#{ENV['FAMOUS']}/#{@failures.folder_name}/harrison-ford.jpg",
	role: "student",
	section: @failures
)

jay_z = User.new(
	first_name: "Shawn",
	last_name: "Carter",
	photo: "#{ENV['FAMOUS']}/#{@failures.folder_name}/jay-z.jpg",
	role: "student",
	section: @failures
)

jk_rowling = User.new(
	first_name: "Joanne",
	last_name: "Rowling",
	photo: "#{ENV['FAMOUS']}/#{@failures.folder_name}/jk-rowling.jpg",
	role: "student",
	section: @failures
)

lady_gaga = User.new(
	first_name: "Lady",
	last_name: "Gaga",
	photo: "#{ENV['FAMOUS']}/#{@failures.folder_name}/lady-gaga.jpg",
	role: "student",
	section: @failures
)

oprah_winfrey = User.new(
	first_name: "Oprah",
	last_name: "Winfrey",
	photo: "#{ENV['FAMOUS']}/#{@failures.folder_name}/oprah-winfrey.jpg",
	role: "student",
	section: @failures
)

rowland_macy = User.new(
	first_name: "Rowland",
	last_name: "Macy",
	photo: "#{ENV['FAMOUS']}/#{@failures.folder_name}/rowland-macy.jpg",
	role: "student",
	section: @failures
)

sidney_poitier = User.new(
	first_name: "Sidney",
	last_name: "Poitier",
	photo: "#{ENV['FAMOUS']}/#{@failures.folder_name}/sidney-poitier.jpg",
	role: "student",
	section: @failures
)

isaac_newton = User.new(
	first_name: "Isaac",
	last_name: "Newton",
	photo: "#{ENV['FAMOUS']}/#{@failures.folder_name}/sir-isaac-newton.jpg",
	role: "student",
	section: @failures
)

lucille_ball = User.new(
	first_name: "Lucille",
	last_name: "Ball",
	photo: "#{ENV['FAMOUS']}/#{@failures.folder_name}/lucille-ball.jpg",
	role: "student",
	section: @failures
)

james_dyson = User.new(
	first_name: "James",
	last_name: "Dyson",
	photo: "#{ENV['FAMOUS']}/#{@failures.folder_name}/sir-james-dyson.jpg",
	role: "student",
	section: @failures
)

soichiro_hondas = User.new(
	first_name: "Soichiro",
	last_name: "Hondas",
	photo: "#{ENV['FAMOUS']}/#{@failures.folder_name}/soichiro-hondas.jpg",
	role: "student",
	section: @failures
)

stephen_king = User.new(
	first_name: "Stephen",
	last_name: "King",
	photo: "#{ENV['FAMOUS']}/#{@failures.folder_name}/stephen-king.jpg",
	role: "student",
	section: @failures
)

steven_spielberg = User.new(
	first_name: "Steven",
	last_name: "Spielberg",
	photo: "#{ENV['FAMOUS']}/#{@failures.folder_name}/steven-spielberg.jpg",
	role: "student",
	section: @failures
)

theodor_geisel = User.new(
	first_name: "Theodor",
	last_name: "Geisel",
	photo: "#{ENV['FAMOUS']}/#{@failures.folder_name}/theodor-seuss-geisel.jpg",
	role: "student",
	section: @failures
)

thomas_edison = User.new(
	first_name: "Thomas",
	last_name: "Edison",
	photo: "#{ENV['FAMOUS']}/#{@failures.folder_name}/thomas-edison.jpg",
	role: "student",
	section: @failures
)

vera_wang = User.new(
	first_name: "Vera",
	last_name: "Wang",
	photo: "#{ENV['FAMOUS']}/#{@failures.folder_name}/vera-wang.jpg",
	role: "student",
	section: @failures
)

vincent_van_gogh = User.new(
	first_name: "Vincent",
	last_name: "van Gogh",
	photo: "#{ENV['FAMOUS']}/#{@failures.folder_name}/vincent-van-gogh.jpg",
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
	photo: "#{ENV['EHSA']}/#{@five_navarro.folder_name}/aiden.jpg",
	role: "student",
	section: @five_navarro
)

aliza = User.create!(
	first_name: "Aliza",
	photo: "#{ENV['EHSA']}/#{@five_navarro.folder_name}/aliza.jpg",
	role: "student",
	section: @five_navarro
)

dalani = User.create!(
	first_name: "Dalani",
	photo: "#{ENV['EHSA']}/#{@five_navarro.folder_name}/dalani.jpg",
	role: "student",
	section: @five_navarro
)

garvey = User.create!(
	first_name: "Garvey",
	photo: "#{ENV['EHSA']}/#{@five_navarro.folder_name}/garvey.jpg",
	role: "student",
	section: @five_navarro
)

jahzeel = User.create!(
	first_name: "Jahzeel",
	photo: "#{ENV['EHSA']}/#{@five_navarro.folder_name}/jahzeel.jpg",
	role: "student",
	section: @five_navarro
)

jhojan = User.create!(
	first_name: "Jhojan",
	photo: "#{ENV['EHSA']}/#{@five_navarro.folder_name}/jhojan.jpg",
	role: "student",
	section: @five_navarro
)

jonari = User.create!(
	first_name: "Jonari",
	photo: "#{ENV['EHSA']}/#{@five_navarro.folder_name}/jonari.jpg",
	role: "student",
	section: @five_navarro
)

julieni = User.create!(
	first_name: "Julieni",
	photo: "#{ENV['EHSA']}/#{@five_navarro.folder_name}/julieni.jpg",
	role: "student",
	section: @five_navarro
)

kayla = User.create!(
	first_name: "Kayla",
	photo: "#{ENV['EHSA']}/#{@five_navarro.folder_name}/kayla.jpg",
	role: "student",
	section: @five_navarro
)

kelvin = User.create!(
	first_name: "Kelvin",
	photo: "#{ENV['EHSA']}/#{@five_navarro.folder_name}/kelvin.jpg",
	role: "student",
	section: @five_navarro
)

lkai = User.create!(
	first_name: "L kai",
	photo: "#{ENV['EHSA']}/#{@five_navarro.folder_name}/lkai.jpg",
	role: "student",
	section: @five_navarro
)

makayla = User.create!(
	first_name: "Makayla",
	photo: "#{ENV['EHSA']}/#{@five_navarro.folder_name}/makayla.jpg",
	role: "student",
	section: @five_navarro
)

matthew = User.create!(
	first_name: "Matthew",
	photo: "#{ENV['EHSA']}/#{@five_navarro.folder_name}/matthew.jpg",
	role: "student",
	section: @five_navarro
)

mia = User.create!(
	first_name: "Mia",
	photo: "#{ENV['EHSA']}/#{@five_navarro.folder_name}/mia.jpg",
	role: "student",
	section: @five_navarro
)

nyesha = User.create!(
	first_name: "Nyesha",
	photo: "#{ENV['EHSA']}/#{@five_navarro.folder_name}/nyesha.jpg",
	role: "student",
	section: @five_navarro
)

nykarra = User.create!(
	first_name: "Nykarra",
	photo: "#{ENV['EHSA']}/#{@five_navarro.folder_name}/nykarra.jpg",
	role: "student",
	section: @five_navarro
)

rosalynn = User.create!(
	first_name: "Rosalynn",
	photo: "#{ENV['EHSA']}/#{@five_navarro.folder_name}/rosalynn.jpg",
	role: "student",
	section: @five_navarro
)

thomas = User.create!(
	first_name: "Thomas",
	photo: "#{ENV['EHSA']}/#{@five_navarro.folder_name}/thomas.jpg",
	role: "student",
	section: @five_navarro
)

tyler = User.create!(
	first_name: "Tyler",
	photo: "#{ENV['EHSA']}/#{@five_navarro.folder_name}/tyler.jpg",
	role: "student",
	section: @five_navarro
)

# 5 Van Pelt

alberto = User.create!(
	first_name: "Alberto",
	photo: "#{ENV['EHSA']}/#{@five_van_pelt.folder_name}/alberto.jpg",
	role: "student",
	section: @five_van_pelt
)

arthur = User.create!(
	first_name: "Arthur",
	photo: "#{ENV['EHSA']}/#{@five_van_pelt.folder_name}/arthur.jpg",
	role: "student",
	section: @five_van_pelt
)

bladimir = User.create!(
	first_name: "Bladimir",
	photo: "#{ENV['EHSA']}/#{@five_van_pelt.folder_name}/bladimir.jpg",
	role: "student",
	section: @five_van_pelt
)

deon = User.create!(
	first_name: "Deon",
	photo: "#{ENV['EHSA']}/#{@five_van_pelt.folder_name}/deon.jpg",
	role: "student",
	section: @five_van_pelt
)

diego = User.create!(
	first_name: "Diego",
	photo: "#{ENV['EHSA']}/#{@five_van_pelt.folder_name}/diego.jpg",
	role: "student",
	section: @five_van_pelt
)

emilio = User.create!(
	first_name: "Emilio",
	photo: "#{ENV['EHSA']}/#{@five_van_pelt.folder_name}/emilio.jpg",
	role: "student",
	section: @five_van_pelt
)

evelyn = User.create!(
	first_name: "Evelyn",
	photo: "#{ENV['EHSA']}/#{@five_van_pelt.folder_name}/evelyn.jpg",
	role: "student",
	section: @five_van_pelt
)

habiba = User.create!(
	first_name: "Habiba",
	photo: "#{ENV['EHSA']}/#{@five_van_pelt.folder_name}/habiba.jpg",
	role: "student",
	section: @five_van_pelt
)

iyana = User.create!(
	first_name: "Iyana",
	photo: "#{ENV['EHSA']}/#{@five_van_pelt.folder_name}/iyana.jpg",
	role: "student",
	section: @five_van_pelt
)

jayden = User.create!(
	first_name: "Jayden",
	photo: "#{ENV['EHSA']}/#{@five_van_pelt.folder_name}/jayden.jpg",
	role: "student",
	section: @five_van_pelt
)

justin = User.create!(
	first_name: "Justin",
	photo: "#{ENV['EHSA']}/#{@five_van_pelt.folder_name}/justin.jpg",
	role: "student",
	section: @five_van_pelt
)

kymaysa = User.create!(
	first_name: "KymAsya",
	photo: "#{ENV['EHSA']}/#{@five_van_pelt.folder_name}/kymasya.jpg",
	role: "student",
	section: @five_van_pelt
)

leo = User.create!(
	first_name: "Leo",
	photo: "#{ENV['EHSA']}/#{@five_van_pelt.folder_name}/leo.jpg",
	role: "student",
	section: @five_van_pelt
)

mariciana = User.create!(
	first_name: "Mariciana",
	photo: "#{ENV['EHSA']}/#{@five_van_pelt.folder_name}/mariciana.jpg",
	role: "student",
	section: @five_van_pelt
)

naima = User.create!(
	first_name: "Naima",
	photo: "#{ENV['EHSA']}/#{@five_van_pelt.folder_name}/naima.jpg",
	role: "student",
	section: @five_van_pelt
)

naomi = User.create!(
	first_name: "Naomi",
	photo: "#{ENV['EHSA']}/#{@five_van_pelt.folder_name}/naomi.jpg",
	role: "student",
	section: @five_van_pelt
)

nierra = User.create!(
	first_name: "Nierra",
	photo: "#{ENV['EHSA']}/#{@five_van_pelt.folder_name}/nierra.jpg",
	role: "student",
	section: @five_van_pelt
)

trevon = User.create!(
	first_name: "Trevon",
	photo: "#{ENV['EHSA']}/#{@five_van_pelt.folder_name}/trevon.jpg",
	role: "student",
	section: @five_van_pelt
)

veronica = User.create!(
	first_name: "Veronica",
	photo: "#{ENV['EHSA']}/#{@five_van_pelt.folder_name}/veronica.jpg",
	role: "student",
	section: @five_van_pelt
)

yuridia = User.create!(
	first_name: "Yuridia",
	photo: "#{ENV['EHSA']}/#{@five_van_pelt.folder_name}/yuridia.jpg",
	role: "student",
	section: @five_van_pelt
)

# 6 Trillin

amanda = User.new(
	first_name: "Amanda",
	photo: "#{ENV['EHSA']}/#{@six_trillin.folder_name}/amanda.jpg",
	role: "student",
	section: @six_trillin
)

amanda2 = User.new(
	first_name: "Amanda",
	photo: "#{ENV['EHSA']}/#{@six_trillin.folder_name}/amanda2.jpg",
	role: "student",
	section: @six_trillin
)

alexis = User.new(
	first_name: "Alexis",
	photo: "#{ENV['EHSA']}/#{@six_trillin.folder_name}/alexis.jpg",
	role: "student",
	section: @six_trillin
)

christopher = User.new(
	first_name: "Christopher",
	photo: "#{ENV['EHSA']}/#{@six_trillin.folder_name}/christopher.jpg",
	role: "student",
	section: @six_trillin
)

christian = User.new(
	first_name: "Christian",
	photo: "#{ENV['EHSA']}/#{@six_trillin.folder_name}/christian.jpg",
	role: "student",
	section: @six_trillin
)

daniela = User.new(
	first_name: "Daniela",
	photo: "#{ENV['EHSA']}/#{@six_trillin.folder_name}/daniela.jpg",
	role: "student",
	section: @six_trillin
)

delvin = User.new(
	first_name: "Delvin",
	photo: "#{ENV['EHSA']}/#{@six_trillin.folder_name}/delvin.jpg",
	role: "student",
	section: @six_trillin
)

elijah = User.new(
	first_name: "Elijah",
	photo: "#{ENV['EHSA']}/#{@six_trillin.folder_name}/elijah.jpg",
	role: "student",
	section: @six_trillin
)

evelyn = User.new(
	first_name: "Evelyn",
	photo: "#{ENV['EHSA']}/#{@six_trillin.folder_name}/evelyn.jpg",
	role: "student",
	section: @six_trillin
)

ezekial = User.new(
	first_name: "Ezekial",
	photo: "#{ENV['EHSA']}/#{@six_trillin.folder_name}/ezekial.jpg",
	role: "student",
	section: @six_trillin
)

franklin = User.new(
	first_name: "Franklin",
	photo: "#{ENV['EHSA']}/#{@six_trillin.folder_name}/franklin.jpg",
	role: "student",
	section: @six_trillin
)

ibrahim = User.new(
	first_name: "Ibrahim",
	photo: "#{ENV['EHSA']}/#{@six_trillin.folder_name}/ibrahim.jpg",
	role: "student",
	section: @six_trillin
)

jorge = User.new(
	first_name: "Jorge",
	photo: "#{ENV['EHSA']}/#{@six_trillin.folder_name}/jorge.jpg",
	role: "student",
	section: @six_trillin
)

jose = User.new(
	first_name: "Jose",
	photo: "jose#{ENV['EHSA']}/#{@six_trillin.folder_name}/jose.jpg",
	role: "student",
	section: @six_trillin
)

kinaije = User.new(
	first_name: "Kinaije",
	photo: "#{ENV['EHSA']}/#{@six_trillin.folder_name}/kinaije.jpg",
	role: "student",
	section: @six_trillin
)

lamek = User.new(
	first_name: "Lamek",
	photo: "#{ENV['EHSA']}/#{@six_trillin.folder_name}/lamek.jpg",
	role: "student",
	section: @six_trillin
)

leonardo = User.new(
	first_name: "Leonardo",
	photo: "#{ENV['EHSA']}/#{@six_trillin.folder_name}/leonardo.jpg",
	role: "student",
	section: @six_trillin
)

liliann = User.new(
	first_name: "Liliann",
	photo: "#{ENV['EHSA']}/#{@six_trillin.folder_name}/liliann.jpg",
	role: "student",
	section: @six_trillin
)

liyah = User.new(
	first_name: "Liyah",
	photo: "#{ENV['EHSA']}/#{@six_trillin.folder_name}/liyah.jpg",
	role: "student",
	section: @six_trillin
)

nyah = User.new(
	first_name: "Nyah",
	photo: "nyah#{ENV['EHSA']}/#{@six_trillin.folder_name}/nyah.jpg",
	role: "student",
	section: @six_trillin
)

olga = User.new(
	first_name: "Olga",
	photo: "olga#{ENV['EHSA']}/#{@six_trillin.folder_name}/olga.jpg",
	role: "student",
	section: @six_trillin
)

roselyn = User.new(
	first_name: "Roselyn",
	photo: "#{ENV['EHSA']}/#{@six_trillin.folder_name}/roselyn.jpg",
	role: "student",
	section: @six_trillin
)

yolanda = User.new(
	first_name: "Yolanda",
	photo: "#{ENV['EHSA']}/#{@six_trillin.folder_name}/yolanda.jpg",
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
	photo: "#{ENV['EHSA']}/#{@six_pietri.folder_name}/abraham.jpg",
	role: "student",
	section: @six_pietri
)

angel = User.new(
	first_name: "Angel",
	photo: "#{ENV['EHSA']}/#{@six_pietri.folder_name}/angel.jpg",
	role: "student",
	section: @six_pietri
)

ashley = User.new(
	first_name: "Ashley",
	photo: "#{ENV['EHSA']}/#{@six_pietri.folder_name}/ashley.jpg",
	role: "student",
	section: @six_pietri
)

ashlee = User.new(
	first_name: "Ashlee",
	photo: "#{ENV['EHSA']}/#{@six_pietri.folder_name}/ashlee.jpg",
	role: "student",
	section: @six_pietri
)

caitlin = User.new(
	first_name: "Caitlin",
	photo: "#{ENV['EHSA']}/#{@six_pietri.folder_name}/caitlin.jpg",
	role: "student",
	section: @six_pietri
)

dario = User.new(
	first_name: "Dario",
	photo: "#{ENV['EHSA']}/#{@six_pietri.folder_name}/dario.jpg",
	role: "student",
	section: @six_pietri
)

eileen = User.new(
	first_name: "Eileen",
	photo: "#{ENV['EHSA']}/#{@six_pietri.folder_name}/eileen.jpg",
	role: "student",
	section: @six_pietri
)

jaheim = User.new(
	first_name: "Jaheim",
	photo: "#{ENV['EHSA']}/#{@six_pietri.folder_name}/jaheim.jpg",
	role: "student",
	section: @six_pietri
)

jayden = User.new(
	first_name: "Jayden",
	photo: "#{ENV['EHSA']}/#{@six_pietri.folder_name}/jayden.jpg",
	role: "student",
	section: @six_pietri
)

leonardo = User.new(
	first_name: "Leonardo",
	photo: "#{ENV['EHSA']}/#{@six_pietri.folder_name}/leonardo.jpg",
	role: "student",
	section: @six_pietri
)

marcell = User.new(
	first_name: "Marcell",
	photo: "#{ENV['EHSA']}/#{@six_pietri.folder_name}/marcell.jpg",
	role: "student",
	section: @six_pietri
)

meghan = User.new(
	first_name: "Meghan",
	photo: "#{ENV['EHSA']}/#{@six_pietri.folder_name}/meghan.jpg",
	role: "student",
	section: @six_pietri
)

milton = User.new(
	first_name: "Milton",
	photo: "#{ENV['EHSA']}/#{@six_pietri.folder_name}/milton.jpg",
	role: "student",
	section: @six_pietri
)

monika = User.new(
	first_name: "Monika",
	photo: "#{ENV['EHSA']}/#{@six_pietri.folder_name}/monika.jpg",
	role: "student",
	section: @six_pietri
)

orion = User.new(
	first_name: "Orion",
	photo: "#{ENV['EHSA']}/#{@six_pietri.folder_name}/orion.jpg",
	role: "student",
	section: @six_pietri
)

richard = User.new(
	first_name: "Richard",
	photo: "#{ENV['EHSA']}/#{@six_pietri.folder_name}/richard.jpg",
	role: "student",
	section: @six_pietri
)

ronnie = User.new(
	first_name: "Ronnie",
	photo: "#{ENV['EHSA']}/#{@six_pietri.folder_name}/ronnie.jpg",
	role: "student",
	section: @six_pietri
)

shane = User.new(
	first_name: "Shane",
	photo: "#{ENV['EHSA']}/#{@six_pietri.folder_name}/shane.jpg",
	role: "student",
	section: @six_pietri
)

shaylynn = User.new(
	first_name: "Shaylynn",
	photo: "#{ENV['EHSA']}/#{@six_pietri.folder_name}/shaylynn.jpg",
	role: "student",
	section: @six_pietri
)

warren = User.new(
	first_name: "Warren",
	photo: "#{ENV['EHSA']}/#{@six_pietri.folder_name}/warren.jpg",
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
	photo: "#{ENV['EHSA']}/#{@six_wright.folder_name}/alyssa.jpg",
	role: "student",
	section: @six_wright
)

amarie = User.create!(
	first_name: "Amarie",
	photo: "#{ENV['EHSA']}/#{@six_wright.folder_name}/amarie.jpg",
	role: "student",
	section: @six_wright
)

emily = User.create!(
	first_name: "Emily",
	photo: "#{ENV['EHSA']}/#{@six_wright.folder_name}/emily.jpg",
	role: "student",
	section: @six_wright
)

evan = User.create!(
	first_name: "Evan",
	photo: "#{ENV['EHSA']}/#{@six_wright.folder_name}/evan.jpg",
	role: "student",
	section: @six_wright
)

gabrielle = User.create!(
	first_name: "Gabrielle",
	photo: "#{ENV['EHSA']}/#{@six_wright.folder_name}/gabrielle.jpg",
	role: "student",
	section: @six_wright
)

hailie = User.create!(
	first_name: "Hailie",
	photo: "#{ENV['EHSA']}/#{@six_wright.folder_name}/hailie.jpg",
	role: "student",
	section: @six_wright
)

hamza = User.create!(
	first_name: "Hamza",
	photo: "#{ENV['EHSA']}/#{@six_wright.folder_name}/hamza.jpg",
	role: "student",
	section: @six_wright
)

isaiah = User.create!(
	first_name: "Isaiah",
	photo: "#{ENV['EHSA']}/#{@six_wright.folder_name}/isaiah.jpg",
	role: "student",
	section: @six_wright
)

kenny = User.create!(
	first_name: "Kenny",
	photo: "#{ENV['EHSA']}/#{@six_wright.folder_name}/kenny.jpg",
	role: "student",
	section: @six_wright
)

michael = User.create!(
	first_name: "Michael",
	photo: "#{ENV['EHSA']}/#{@six_wright.folder_name}/michael.jpg",
	role: "student",
	section: @six_wright
)

myles = User.create!(
	first_name: "Myles",
	photo: "#{ENV['EHSA']}/#{@six_wright.folder_name}/myles.jpg",
	role: "student",
	section: @six_wright
)

pablo = User.create!(
	first_name: "Pablo",
	photo: "#{ENV['EHSA']}/#{@six_wright.folder_name}/pablo.jpg",
	role: "student",
	section: @six_wright
)

raelynn = User.create!(
	first_name: "Raelynn",
	photo: "#{ENV['EHSA']}/#{@six_wright.folder_name}/raelynn.jpg",
	role: "student",
	section: @six_wright
)

serenity = User.create!(
	first_name: "serenity",
	photo: "#{ENV['EHSA']}/#{@six_wright.folder_name}/serenity.jpg",
	role: "student",
	section: @six_wright
)
