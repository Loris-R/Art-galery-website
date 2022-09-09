puts "Seeds start"
# destroy datas if development

User.destroy_all if Rails.env.development?
Partner.destroy_all if Rails.env.development?
ArtFairExhibitor.destroy_all if Rails.env.development?
ArtFair.destroy_all if Rails.env.development?
DesignExhibitor.destroy_all if Rails.env.development?
Design.destroy_all if Rails.env.development?
puts "destroyed datas if development environment"

#create users
User.create!(
  email: "loris.reynaud@gmail.com", password: "azerty!5", admin: true
)
User.create!(
  email: "fonsecarika@gmail.com", password: "1234567890!5", admin: true
)
User.create!(
  email: "olivier@bienvenue.art", password: "Olivier?75", admin: true
)
puts "Olivier, Lolo & Rika created !"


#create Partner

partner = Partner.new(
  description: "A few of the Hôtel La Louisiane, our main partner\r\nOften compared to the Chelsea Hotel in New York by its residents and loyal guests, La Louisiane has been active since 1823 in the heart of Saint-Germain-des-Près, keeping alive a good part of the neighborhood's memory. Its walls have grown thicker with both the artistic and literary activity they have hosted since the stay of Verlaine and Rimbaud.\r\nIn 1943 Jean-Paul Sartre and Simone de Beauvoir settled in the hotel, and with them it became the headquarters of Existentialism. Just as them, numerous writers, painters, visual artists, filmmakers, and photographers have passed through the rooms of La Louisiane; the likes of Juliette Gréco, Miles Davis, Nan Goldin, Lucian Freud, the members of Pink Floyd,\r\nand Quentin Tarantino, among others.\r\nThere are countless historical examples that show how creative activity has been an ongoing privilege of the hotel: Picasso encouraged the young César there, Dali joined him with Amanda Lear, Giacometti and Takis offered their works to Albert Cossery in exchange for paying for their rooms, Michael Leiris developed his reflections on art there, Keith Haring drew on its napkins; Nam June Paik enjoyed the absence of televisions in the rooms, and even Cy Twombly went so far as to state that he felt better at La Louisiane than at the Ritz. These and many others have contributed during each decade to shaping the hotel's legendary status.\r\n\r\nOther partners :\r\nArtviewer\r\nDaizylaizy\r\nAXA"
)
file = URI.open("https://i0.wp.com/revelateurphoceen.com/bienvenue/partner_photo_juliette.jpg")
partner.photos.attach(io: file, filename: "juliette.jpg", content_type: "image/jpg")
partner.save!
puts "Partner test created !"

# create categories

art_fair = ArtFair.create!(
  description: "BIENVENUE ART FAIR is an independent contemporary art fair created in 2018 at the Cité internationale des arts by Olivier Robert, gallery owner. He was joined in 2021 by Domenico De Chericho and Marialuisa Pasto, associate curators of the project.\r\nThe fair brings together about twenty art galleries and is intended to be held two to three times a year; in October, December and late March. Since 2021, Bienvenue has taken up residence at the Hotel La Louisiane in Saint-Germain-des-Prés.\r\n\r\nLOCATION\r\nHôtel La Louisiane,\r\n60 Rue de Seine, Paris 6.\r\n\r\nBIENVENUE ART FAIR TEAM\r\n\r\n",
  programm: "PRESS & VIP PREVIEW\r\nThursday, 20 October – 2:00 PM > 6:00 PM\r\n\r\nThe Press & VIP preview opening is a “by invitation” event, where a digital invitation will be extended to Bienvenue’s press partners, contacts, as well as exhibitor’s guests suggested via the submission of a contact list.\r\n\r\nOPENING (DIGITAL INVITATION)\r\nThursday, 20 October – 6:00 PM > 10:00 PM\r\n\r\nPUBLIC SCHEDULE (FREE ENTRANCE)\r\nFriday, 21 October – 12:00 PM > 8:00 PM\r\nSaturday, 22 October – 12:00 PM > 8:00 PM\r\nSunday, 23 October – 12:00 PM > 7:00 PM\r\n\r\nEXHIBITORS’ PARTY\r\nFriday, 21 October – 8:00 PM > 12:00 AM\r\nBIENVENUE will welcome its exhibitors and their guests in a festive and musical atmosphere. Access will be granted upon presentation a digital invitation sent by the Bienvenue team to the contacts provided by the exhibitors.",
  coordinates: "FOUNDER\r\nOlivier Robert\r\nolivier@bienvenue.art\r\n\r\nCOORDINATOR & LIAISONS GALERIES\r\nReynaldo Gomez Vesga\r\nreynaldo@bienvenue.art\r\n\r\nASSOCIATE CURATORS\r\nDomenico De Chirico\r\ndomenico@bienvenue.art\r\nMarialuisa Pastò\r\nmarialuisa@bienvenue.art\r\n\r\nHÔTEL LA LOUISIANE\r\nCharlotte Saliou\r\ncharlotte@hotellalouisiane.com\r\n\r\nGENERAL INQUIRIES & PRESS\r\n+33 6 40 82 25 70\r\ninfo@bienvenue.art"
)
puts "Art Fair created"
design = Design.create!(
  description: "BIENVENUE DESIGN will gaher design galleries and design studios at the Hotel La Louisiane in the Saint-Germain-des-Prés district, Paris and thus gives its exhibitors the opportunity to reinvent the hotel room space.\r\nFounded in 2021 by Olivier Robert, contemporary art gallery owner and Jean-François Declercq.\r\nJean-François has been invigorating the contemporary design scene for more than a decade. In 2015, he founded Atelier Jespers, a non-profit art center occupying the premises of the iconic modernist atelier of Oscar Jespers, to highlight contemporary designers within a landmark of architecture. More recently, he founded La Bocca de la Verita gallery, creating a unique space to give young designers the opportunity to exhibit their work. Jean-François has accompanied nearly 150 designers and collaborated with dozens of international galleries.\r\nThey were joined in 2022 by Marie Godfrain. Marie is a freelance journalist specialized in design, decorative arts, crafts and architecture. She writes weekly for M, the magazine of Le Monde, and also collaborates with IDEAT and Le Quotidien de l'Art. She teaches the history of design at the ENSCI and has recently published a biography of the ceramist Frédéric Gautier with Actes Sud.\r\n\r\nLOCATION\r\nHôtel La Louisiane,\r\n60 Rue de Seine, Paris 6.\r\n\r\nTHE TEAM\r\n\r\n",
  programm: "PRESS & VIP PREVIEW\r\nThursday, 8 September – 2:00 PM > 6:00 PM\r\nThe Press & VIP preview opening is a “by invitation” event,\r\n\r\nOPENING\r\nThursday, 8 September – 6:00 PM > 10:00 PM\r\n\r\nPUBLIC SCHEDULE (FREE ENTRANCE)\r\nFriday, 9 September – 12:00 PM > 8:00 PM\r\nSaturday, 10 September – 12:00 PM > 8:00 PM\r\nSunday, 11 September – 12:00 PM > 7:00 PM\r\n\r\nEXHIBITORS’ PARTY\r\nFriday, 9 September – 8:00 PM > 12:00 AM\r\nBIENVENUE will welcome its exhibitors and their guests in a festive and\r\nmusical atmosphere. Access will be granted upon presentation a digital\r\ninvitation sent by the Bienvenue team to the contacts provided by the\r\nexhibitors.",
  coordinates: "FOUNDER\r\nOlivier Robert\r\nolivier@bienvenue.art\r\n\r\nBIENVENUE MANAGER\r\nReynaldo Gomez\r\nreynaldo@bienvenue.art\r\n\r\nCO/FOUNDER\r\nJean François Declercq\r\njf@atelierjespers.com\r\nMarie Godfrain\r\nmarie.godfrain@gmail.com\r\n\r\nGENERAL INQUIRIES & PRESS\r\n+33 6 40 82 25 70\r\ninfo@bienvenue.art"
)
puts "Art Fair & Design created"

d_exhib = DesignExhibitor.new(
  design_id: art_fair.id,
  artist_name: "Galerie Pradier-Jeauneau\r\n Aurélien Jeauneau et Jeremy Pradier Jeauneau",
  description: "Marché Paul Bert\r\nAllée 6 Stand 93\r\nMobilier\r\nXXe siècle\r\n+33(0)6 50 69 63 89\r\n\r\nLa galerie Pradier-Jeauneau présente à la Louisiane La Chambre de l'écrivain nomade. Sans attache, il vit de chambre d’hôtel en chambre d’hôtel à travers le monde, où il dresse une tente, mi-berbère mi-romaine. Un monde s'y déploie : fauteuils, bureau, et lit de jour où les souvenirs se mêlent aux promesses. Du sol au plafond, la tente sera en velours fushia, couleur vibrante et urbaine. L'installation monumentale vient faire oublier la chambre d'hôtel. A l'image de ce qu'à\r\noffert La Louisiane à ses pensionnaires illustres, notre écrivain nomade est ici chez lui :\r\nun bivouac rempli de son imaginaire pointu, queer et irrévérencieux. Pour cette première participation, Aurélien Jeauneau et Jeremy Pradier-Jeauneau font appel à leur partenaire Vincent Thévenon de la Maison Thévenon. A eux trois, ils ont inventé une couleur \"Louisiane\", flamboyante et hors-temps.\r\nAurélien Jeauneau et Jeremy Pradier-Jeauneau défendent les designers français du XXe. Le binôme s’est rencontré à l’Institut National d’Histoire de l’Art en 2007, et continue ses recherches sur les arts décoratifs de la Reconstruction française à nos jours.\r\nAvec de nombreuses expositions thématiques à son actif et de collaborations prestigieuses la galerie Pradier-Jeauneau développe une expertise autour d’un mobilier d’exception, entre collection, décoration, littérature et cinéma.",
  url: "pradierjeauneau@gmail.com"
)
file1 = URI.open("https://i0.wp.com/revelateurphoceen.com/bienvenue/BIENVENUE%20DESIGN_PradierJeauneau-Thevenon_cr%C3%A9dit%20est%20M%C3%A9lodie%20Descours.jpg")
file2 = URI.open("https://i0.wp.com/revelateurphoceen.com/bienvenue/BIENVENUE%20DESIN_AUR%C3%89LIEN%20%26%20JEREMY_cr%C3%A9dit%20Yann%20Morrison.1%20%281%29.jpg")
file3 = URI.open("https://i0.wp.com/revelateurphoceen.com/bienvenue/BIENVENUE%20DESIN_AUR%C3%89LIEN%20%26%20JEREMY_cr%C3%A9dit%20Yann%20Morrison.jpg")
d_exhib.photos.attach(io: file1, filename: "pradier-jeauneau1.jpg", content_type: "image/jpg")
d_exhib.photos.attach(io: file2, filename: "pradier-jeauneau2.jpg", content_type: "image/jpg")
d_exhib.photos.attach(io: file3, filename: "pradier-jeauneau3.jpg", content_type: "image/jpg")
d_exhib.save!
puts "#{d_exhib.artist_name} Design exhibitors created"

d_exhib = DesignExhibitor.new(
  design_id: art_fair.id,
  artist_name: "Paf atelier\r\n Pollet Agathe Designer",
  description: "36 Boulevard de la Bastille, 75012 Paris\r\n+33 (0)6 32 29 24 22 / +\r\n33 (0)9 75 49 46 76\r\n\r\nInstallé à Paris, Paf est un atelier de conception d’architecture et de scénographie.\r\nAnimé par l’expérimentation, la recherche en architecture et l’art, Christopher Dessus, Architecte DE, scénographe, commissaire d’exposition et directeur de l’association Pli (Éditions et Workshop) crée l’atelier en 2017. Ce dernier permet de remettre en question les conditions de la pratique de l’architecture, de la création à la production. Chaque projet signé par l’atelier est une recherche mesurée entre savoir et savoir–faire, réfexion et création, où l’ensemble de la conception et de la production ne peuvent être envisagés de manière dissociée.",
  url: "www.pafatelier.com"
)
file1 = URI.open("https://i0.wp.com/revelateurphoceen.com/bienvenue/paf1.png")
file2 = URI.open("https://i0.wp.com/revelateurphoceen.com/bienvenue/paf2.jpg")
file3 = URI.open("https://i0.wp.com/revelateurphoceen.com/bienvenue/paf3.jpg")
d_exhib.photos.attach(io: file1, filename: "paf1.png", content_type: "image/png")
d_exhib.photos.attach(io: file2, filename: "paf2.jpg", content_type: "image/jpg")
d_exhib.photos.attach(io: file3, filename: "paf2.jpg", content_type: "image/jpg")
d_exhib.save!
puts "#{d_exhib.artist_name} Design exhibitors created"

puts "Seeds terminated !"
