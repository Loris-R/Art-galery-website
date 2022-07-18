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
  email: "loris.reynaud@gmail.com", password: "azerty", admin: true
)
User.create!(
  email: "fonsecarika@gmail.com", password: "1234567890", admin: true
)
puts "Lolo & Rika created !"

#create Partner

partner = Partner.create!(
  description: "A few of the Hôtel La Louisiane, our main partner\r\nOften compared to the Chelsea Hotel in New York by its residents and loyal guests, La Louisiane has been active since 1823 in the heart of Saint-Germain-des-Près, keeping alive a good part of the neighborhood's memory. Its walls have grown thicker with both the artistic and literary activity they have hosted since the stay of Verlaine and Rimbaud.\r\nIn 1943 Jean-Paul Sartre and Simone de Beauvoir settled in the hotel, and with them it became the headquarters of Existentialism. Just as them, numerous writers, painters, visual artists, filmmakers, and photographers have passed through the rooms of La Louisiane; the likes of Juliette Gréco, Miles Davis, Nan Goldin, Lucian Freud, the members of Pink Floyd,\r\nand Quentin Tarantino, among others.\r\nThere are countless historical examples that show how creative activity has been an ongoing privilege of the hotel: Picasso encouraged the young César there, Dali joined him with Amanda Lear, Giacometti and Takis offered their works to Albert Cossery in exchange for paying for their rooms, Michael Leiris developed his reflections on art there, Keith Haring drew on its napkins; Nam June Paik enjoyed the absence of televisions in the rooms, and even Cy Twombly went so far as to state that he felt better at La Louisiane than at the Ritz. These and many others have contributed during each decade to shaping the hotel's legendary status.\r\n\r\nOther partners :\r\nArtviewer\r\nDaizylaizy\r\nAXA"
)
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

ArtFairExhibitor.create!(
  art_fair_id: art_fair.id,
  artist_name: "Loris",
  description: "Photographe basé à Marseille",
  url: "lorisreynaud.com"
)

DesignExhibitor.create!(
  design_id: design.id,
  artist_name: "Rika",
  description: "Sculptrice métal",
  url: "erikaki.com"
)

puts "1 Art Fair & 1 Design exhibitors created"

puts "Seeds terminated !"
