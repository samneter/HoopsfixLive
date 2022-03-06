# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(id: 1, email: "sam@hoopsfix.com", password: '123456', password_confirmation: '123456', created_at: "2021-12-04 05:29:54.514844000 +0000", updated_at: "2022-01-02 07:10:45.591211000 +0000", admin: true)

Organisation.create({"name"=>"Basketball England", "abbreviation"=>"BE", "slug"=>"basketball-england"})
Organisation.create({"name"=>"FIBA", "abbreviation"=>"FIBA", "slug"=>"fiba"})
Organisation.create({"name"=>"Women's British Basketball League", "abbreviation"=>"WBBL", "slug"=>"wbbl"})
Organisation.create({"name"=>"British Basketball League", "abbreviation"=>"BBL", "slug"=>"bbl"})
Organisation.create({"name"=>"British Universities and Colleges Sport", "abbreviation"=>"BUCS", "slug"=>"bucs"})

Competition.create({"name"=>"WBBL Cup", "website"=>"https://www.wbbl.org.uk", "slug"=>"wbbl-cup", "youtube"=>"https://www.youtube.com/channel/UCCCT9UtlzXTDTQR5GFGRUZg", "facebook"=>"https://www.facebook.com/WBBLofficial/", "twitter"=>"https://twitter.com/WBBLofficial", "instagram"=>"https://www.instagram.com/wbblofficial", "tiktok"=>"", "organisation_id"=>3, "season"=>"2021/22"})
Competition.create({"name"=>"WBBL Trophy", "website"=>"https://www.wbbl.org.uk", "slug"=>"wbbl-trophy", "youtube"=>"https://www.youtube.com/channel/UCCCT9UtlzXTDTQR5GFGRUZg", "facebook"=>"https://www.facebook.com/WBBLofficial/", "twitter"=>"https://twitter.com/WBBLofficial", "instagram"=>"https://www.instagram.com/wbblofficial", "tiktok"=>"", "organisation_id"=>3, "season"=>"2021/22"})
Competition.create({"name"=>"WBBL Play-Offs", "website"=>"https://www.wbbl.org.uk", "slug"=>"wbbl-play-offs", "youtube"=>"https://www.youtube.com/channel/UCCCT9UtlzXTDTQR5GFGRUZg", "facebook"=>"https://www.facebook.com/WBBLofficial/", "twitter"=>"https://twitter.com/WBBLofficial", "instagram"=>"https://www.instagram.com/wbblofficial", "tiktok"=>"", "organisation_id"=>3, "season"=>"2021/22"})
Competition.create({"name"=>"Men's National Cup", "website"=>"https://www.basketballengland.co.uk/leagues/nbl/", "slug"=>"men-s-national-cup", "youtube"=>"https://www.youtube.com/channel/UCXQ0-3yGT71KRNfPu7wOVeA", "facebook"=>"https://www.facebook.com/NBLengland", "twitter"=>"https://www.twitter.com/NBLengland", "instagram"=>"https://www.instagram.com/nblengland/", "tiktok"=>"", "organisation_id"=>2, "season"=>"2021/22"})
Competition.create({"name"=>"BBL Cup", "website"=>"", "slug"=>"bbl-cup", "youtube"=>"", "facebook"=>"", "twitter"=>"", "instagram"=>"", "tiktok"=>"", "organisation_id"=>1, "season"=>"2021/22"})
Competition.create({"name"=>"WNBL Division 1", "website"=>"https://www.basketballengland.co.uk/leagues/nbl/", "slug"=>"wnbl", "youtube"=>"https://www.youtube.com/channel/UCXQ0-3yGT71KRNfPu7wOVeA", "facebook"=>"https://www.facebook.com/NBLengland", "twitter"=>"https://www.twitter.com/NBLengland", "instagram"=>"https://www.instagram.com/nblengland/", "tiktok"=>"", "organisation_id"=>2, "season"=>"2021/22"})
Competition.create({"name"=>"BBL Trophy", "website"=>"", "slug"=>"bbl-trophy", "youtube"=>"", "facebook"=>"", "twitter"=>"", "instagram"=>"", "tiktok"=>"", "organisation_id"=>1, "season"=>"2021/22"})
Competition.create({"name"=>"EuroCup Women", "website"=>"https://www.fiba.basketball/eurocupwomen", "slug"=>"eurocup-women", "youtube"=>"https://www.youtube.com/fiba", "facebook"=>"", "twitter"=>"https://twitter.com/eurocupwomen", "instagram"=>"https://www.instagram.com/eurocupwomen/", "tiktok"=>"", "organisation_id"=>4, "season"=>"2021/22"})
Competition.create({"name"=>"WBBL Championship", "website"=>"https://www.wbbl.org.uk", "slug"=>"wbbl", "youtube"=>"https://www.youtube.com/channel/UCCCT9UtlzXTDTQR5GFGRUZg", "facebook"=>"https://www.facebook.com/WBBLofficial/", "twitter"=>"https://twitter.com/WBBLofficial", "instagram"=>"https://www.instagram.com/wbblofficial", "tiktok"=>"", "organisation_id"=>3, "season"=>"2021/22"})
Competition.create({"name"=>"BBL Play-Offs", "website"=>"", "slug"=>"bbl-play-offs", "youtube"=>"", "facebook"=>"", "twitter"=>"", "instagram"=>"", "tiktok"=>"", "organisation_id"=>1, "season"=>"2021/22"})
Competition.create({"name"=>"Women's National Cup", "website"=>"https://www.basketballengland.co.uk/leagues/nbl/", "slug"=>"women-s-national-cup", "youtube"=>"https://www.youtube.com/channel/UCXQ0-3yGT71KRNfPu7wOVeA", "facebook"=>"https://www.facebook.com/NBLengland", "twitter"=>"https://www.twitter.com/NBLengland", "instagram"=>"https://www.instagram.com/nblengland/", "tiktok"=>"", "organisation_id"=>2, "season"=>"2021/22"})
Competition.create({"name"=>"NBL Division 1", "website"=>"https://www.basketballengland.co.uk/leagues/nbl/", "slug"=>"nbl", "youtube"=>"https://www.youtube.com/channel/UCXQ0-3yGT71KRNfPu7wOVeA", "facebook"=>"https://www.facebook.com/NBLengland", "twitter"=>"https://www.twitter.com/NBLengland", "instagram"=>"https://www.instagram.com/nblengland/", "tiktok"=>"", "organisation_id"=>2, "season"=>"2021/22"})
Competition.create({"name"=>"FIBA Europe Cup", "website"=>"https://www.fiba.basketball/europecup/", "slug"=>"fiba-europe-cup", "youtube"=>"https://www.youtube.com/c/FIBA", "facebook"=>"https://www.facebook.com/FIBAEuropeCup", "twitter"=>"https://twitter.com/FIBAEuropeCup", "instagram"=>"https://www.instagram.com/fibaeuropecup/", "tiktok"=>"", "organisation_id"=>4, "season"=>"2021/22"})
Competition.create({"name"=>"BUCS", "website"=>"https://www.bucs.org.uk/sports-page/basketball.html", "slug"=>"bucs", "youtube"=>"https://www.youtube.com/user/BUCSsport", "facebook"=>"https://www.facebook.com/BUCS/", "twitter"=>"https://twitter.com/BUCSsport", "instagram"=>"https://www.instagram.com/bucssport", "tiktok"=>"", "organisation_id"=>5, "season"=>"2021/22"})
Competition.create({"name"=>"EABL", "website"=>"https://www.eabl.org", "slug"=>"eabl", "youtube"=>"https://www.youtube.com/channel/UC7egjV1vaO6j_jJ3yd3E-bg", "facebook"=>"https://www.facebook.com/OfficialEABL/", "twitter"=>"https://twitter.com/OfficialEABL", "instagram"=>"https://www.instagram.com/OfficialEABL/", "tiktok"=>"", "organisation_id"=>2, "season"=>"2021/22"})
Competition.create({"name"=>"Jnr. NBL", "website"=>"https://www.basketballengland.co.uk/leagues/nbl/", "slug"=>"jnr-nbl", "youtube"=>"https://www.youtube.com/channel/UCXQ0-3yGT71KRNfPu7wOVeA", "facebook"=>"https://www.facebook.com/NBLengland/", "twitter"=>"https://twitter.com/NBLengland", "instagram"=>"https://instagram.com/nblengland", "tiktok"=>"", "organisation_id"=>2, "season"=>"2021/22"})
Competition.create({"name"=>"WEABL", "website"=>"https://www.weabl.org", "slug"=>"weabl", "youtube"=>"https://www.youtube.com/channel/UCGGS9kxcFMR26ES0sg66Wxg", "facebook"=>"https://www.facebook.com/WEABL/", "twitter"=>"https://twitter.com/WEABL", "instagram"=>"https://www.instagram.com/weabl/", "tiktok"=>"", "organisation_id"=>2, "season"=>"2021/22"})
Competition.create({"name"=>"FIBA Women's EuroBasket 2023 Qualifiers", "website"=>"https://www.fiba.basketball/womenseurobasket/2023/qualifiers", "slug"=>"fiba-women-s-eurobasket-2023-qualifiers", "youtube"=>"https://www.youtube.com/channel/UCtInrnU3QbWqFGsdKT1GZtg", "facebook"=>"https://www.facebook.com/EuroBasketWomen/", "twitter"=>"https://twitter.com/EuroBasketWomen", "instagram"=>"https://www.instagram.com/eurobasketwomen/", "tiktok"=>"https://www.tiktok.com/@fiba", "organisation_id"=>4, "season"=>"2022/23"})
Competition.create({"name"=>"FIBA Basketball World Cup 2023 Qualifiers", "website"=>"https://www.fiba.basketball", "slug"=>"international", "youtube"=>"https://www.youtube.com/channel/UCtInrnU3QbWqFGsdKT1GZtg", "facebook"=>"https://www.facebook.com/FIBA/", "twitter"=>"https://twitter.com/FIBA", "instagram"=>"https://www.instagram.com/fiba/", "tiktok"=>"https://www.tiktok.com/@fiba", "organisation_id"=>4, "season"=>"2021/22"})
Competition.create({"name"=>"L Lynch Trophy", "website"=>"https://www.basketballengland.co.uk/", "slug"=>"l-lynch-trophy", "youtube"=>"", "facebook"=>"", "twitter"=>"https://twitter.com/lynchtrophy", "instagram"=>"https://www.instagram.com/llynchtrophy/", "tiktok"=>"", "organisation_id"=>2, "season"=>"2021/22"})
Competition.create({"name"=>"BBL Championship", "website"=>"https://www.bbl.org.uk", "slug"=>"bbl-championship", "youtube"=>"https://www.youtube.com/channel/UCMdM4nJ7TJn0ZKwbLG5IPug", "facebook"=>"https://www.facebook.com/BBLofficial/", "twitter"=>"https://twitter.com/BBLofficial", "instagram"=>"https://www.instagram.com/bblofficial", "tiktok"=>"https://www.tiktok.com/@britishbasketballleague", "organisation_id"=>1, "season"=>"2021/22"})

Club.create({"name"=>"Leicester Riders", "website"=>"https://riders.basketball/", "youtube"=>"https://www.youtube.com/user/leicesterriders1", "facebook"=>"https://www.facebook.com/ridersbball/", "twitter"=>"https://twitter.com/ridersbball", "instagram"=>"https://www.instagram.com/ridersbball/", "tiktok"=>"https://www.tiktok.com/@ridersbball", "abbreviation"=>"LEI", "slug"=>"leicester-riders"})
Club.create({"name"=>"London Lions", "website"=>"https://www.thelondonlions.com/", "youtube"=>"https://www.youtube.com/user/LondonBasketball", "facebook"=>"https://www.facebook.com/LondonLions", "twitter"=>"https://twitter.com/LondonLions", "instagram"=>"https://www.instagram.com/londonlions/", "tiktok"=>"https://vm.tiktok.com/ZMJqeJTtH", "abbreviation"=>"LDN", "slug"=>"london-lions"})
Club.create({"name"=>"Sheffield Sharks", "website"=>"https://sheffieldsharks.co.uk/", "youtube"=>"https://www.youtube.com/user/TheSheffieldSharks", "facebook"=>"https://www.facebook.com/SheffieldSharks", "twitter"=>"https://twitter.com/SheffieldSharks", "instagram"=>"https://www.instagram.com/sheffieldsharks/", "tiktok"=>"https://www.tiktok.com/@sheffieldsharks?", "abbreviation"=>"SHE", "slug"=>"sheffield-sharks"})
Club.create({"name"=>"Bristol Flyers", "website"=>"https://www.bristolflyers.co.uk/", "youtube"=>"https://www.youtube.com/user/bristolacademyflyers", "facebook"=>"https://www.facebook.com/BristolFlyers", "twitter"=>"https://twitter.com/BristolFlyers", "instagram"=>"https://www.instagram.com/bristolflyers/", "tiktok"=>"https://www.tiktok.com/@bristolflyers", "abbreviation"=>"BRI", "slug"=>"bristol-flyers"})
Club.create({"name"=>"Cheshire Phoenix", "website"=>"https://cheshirephoenix.com/", "youtube"=>"https://www.youtube.com/channel/UCW9Wcg5SKSzBa-RPR-_ZGBQ", "facebook"=>"https://www.facebook.com/CheshirePhoenix", "twitter"=>"https://twitter.com/cheshirenix", "instagram"=>"https://www.instagram.com/bblcheshirephoenix/", "tiktok"=>"https://www.tiktok.com/@cheshirephoenix", "abbreviation"=>"CHE", "slug"=>"cheshire-phoenix"})
Club.create({"name"=>"Glasgow Rocks", "website"=>"https://glasgowrocks.co.uk/", "youtube"=>"https://www.youtube.com/user/GlasgowRocksTV", "facebook"=>"https://www.facebook.com/GlasgowRocks/", "twitter"=>"https://twitter.com/GlasgowRocks", "instagram"=>"https://www.instagram.com/glasgowrocks/", "tiktok"=>"https://www.tiktok.com/@glasgowrocks", "abbreviation"=>"GLA", "slug"=>"glasgow-rocks"})
Club.create({"name"=>"Manchester Giants", "website"=>"https://www.manchestergiants.com/", "youtube"=>"https://www.youtube.com/channel/UCQNJF2HGVV-UmM0wzea01Yg", "facebook"=>"https://www.facebook.com/mcrgiants", "twitter"=>"https://twitter.com/mcrgiants", "instagram"=>"https://www.instagram.com/mcrgiants/", "tiktok"=>"https://www.tiktok.com/@mcrgiants", "abbreviation"=>"MCR", "slug"=>"manchester-giants"})
Club.create({"name"=>"Cardiff Met Archers", "website"=>"https://cardiffmetarchers.leaguerepublic.com/index.html", "youtube"=>"https://www.youtube.com/user/cardiffmetarchers", "facebook"=>"https://www.facebook.com/archersbasket/", "twitter"=>"https://twitter.com/ArchersBasket", "instagram"=>"https://www.instagram.com/archersbasket", "tiktok"=>"", "abbreviation"=>"CAR", "slug"=>"cardiff-met-archers"})
Club.create({"name"=>"Newcastle Eagles", "website"=>"https://newcastle-eagles.com/", "youtube"=>"https://www.youtube.com/NewcastleEagles", "facebook"=>"https://www.facebook.com/NewcastleEagles", "twitter"=>"https://twitter.com/NewcastleEagle", "instagram"=>"https://www.instagram.com/NewcastleEagles/", "tiktok"=>"https://www.tiktok.com/@newcastleeagles", "abbreviation"=>"NEW", "slug"=>"newcastle-eagles"})
Club.create({"name"=>"Plymouth City Patriots", "website"=>"https://www.plymouthcitypatriots.com/", "youtube"=>"https://www.youtube.com/channel/UCto5GdtQh4neQEfBg8g-dyw", "facebook"=>"https://www.facebook.com/plymouthcitypatriots/", "twitter"=>"https://twitter.com/PlymCityPatriot", "instagram"=>"https://www.instagram.com/plymouthcitypatriots", "tiktok"=>"https://www.tiktok.com/@plymouthcitypatriots", "abbreviation"=>"PLY", "slug"=>"plymouth-city-patriots"})
Club.create({"name"=>"Surrey Scorchers", "website"=>"https://www.surreyscorchers.co.uk/", "youtube"=>"https://www.youtube.com/channel/UCJbNe4IrOSPG07QdR5mtOzg", "facebook"=>"https://www.facebook.com/surreyscorchersbasketball/", "twitter"=>"https://twitter.com/surreyscorchers", "instagram"=>"https://www.instagram.com/scorchersbasketball/", "tiktok"=>"https://www.tiktok.com/@surreyscorchers", "abbreviation"=>"SUR", "slug"=>"surrey-scorchers"})
Club.create({"name"=>"Caledonia Pride", "website"=>"http://caledoniapride.co.uk/", "youtube"=>"https://www.youtube.com/channel/UCQNJF2HGVV-UmM0wzea01Yg", "facebook"=>"https://www.facebook.com/CaledoniaPride/", "twitter"=>"https://twitter.com/Caledonia_Pride", "instagram"=>"https://www.instagram.com/caledonia_pride/", "tiktok"=>"", "abbreviation"=>"CAL ", "slug"=>"caledonia-pride"})
Club.create({"name"=>"Durham Palatinates", "website"=>"https://www.dur.ac.uk/teamdurham/", "youtube"=>"", "facebook"=>"https://www.facebook.com/DurhamPalatinates/", "twitter"=>"https://twitter.com/du_palatinates", "instagram"=>"https://www.instagram.com/durhampalatinateswbbl/", "tiktok"=>"", "abbreviation"=>"DUR", "slug"=>"durham-palatinates"})
Club.create({"name"=>"Essex Rebels", "website"=>"https://www.essexrebels.co.uk/", "youtube"=>"https://www.youtube.com/channel/UCwpHNMiMmz_Zhci2J3QKqPA", "facebook"=>"https://www.facebook.com/EssexRebels", "twitter"=>"https://twitter.com/EssexRebels", "instagram"=>"https://www.instagram.com/essexrebelsbasketball/", "tiktok"=>"https://www.tiktok.com/@essexrebels", "abbreviation"=>"ESX", "slug"=>"essex-rebels"})
Club.create({"name"=>"Gloucester City Queens", "website"=>"https://www.gloucestercitybasketball.co.uk/", "youtube"=>"", "facebook"=>"https://www.facebook.com/gloucestercityqueens", "twitter"=>"https://twitter.com/GlosCityQueens", "instagram"=>"https://www.instagram.com/GlosCityQueens/", "tiktok"=>"", "abbreviation"=>"GLO", "slug"=>"gloucester-city-queens"})
Club.create({"name"=>"Manchester Magic & Mystics", "website"=>"", "youtube"=>"", "facebook"=>"", "twitter"=>"", "instagram"=>"", "tiktok"=>"", "abbreviation"=>"MCR", "slug"=>"manchester-magic-mystics"})
Club.create({"name"=>"Nottingham Wildcats", "website"=>"https://nottinghamwildcats.com/", "youtube"=>"https://www.youtube.com/channel/UCbXSTb3JoDeYyciEosrtRlA", "facebook"=>"https://www.facebook.com/nottinghamwildcats1976/", "twitter"=>"https://twitter.com/NottmWildcats", "instagram"=>"https://www.instagram.com/nottmwildcats/", "tiktok"=>"", "abbreviation"=>"NOT", "slug"=>"nottingham-wildcats"})
Club.create({"name"=>"Oaklands Wolves", "website"=>"https://oaklandswolves.com/", "youtube"=>"https://www.youtube.com/channel/UCY6xelFGK7ftzqu_6kyq6LA", "facebook"=>"https://www.facebook.com/OaklandsballWBBL/", "twitter"=>"https://twitter.com/Oaklandsball", "instagram"=>"https://www.instagram.com/oaklandsball/", "tiktok"=>"", "abbreviation"=>"OAK", "slug"=>"oaklands-wolves"})
Club.create({"name"=>"Sevenoaks Suns", "website"=>"https://www.sevenoakssuns.com/", "youtube"=>"https://www.youtube.com/channel/UC98mEbb7h4RaBcv2rZO0oRw", "facebook"=>"https://www.facebook.com/sevenoakssuns", "twitter"=>"https://twitter.com/SevenoaksSuns", "instagram"=>"https://www.instagram.com/7oakssuns/", "tiktok"=>"", "abbreviation"=>"SEV", "slug"=>"seven"})
Club.create({"name"=>"Sheffield Hatters", "website"=>"http://sheffieldhatters.com/", "youtube"=>"", "facebook"=>"https://www.facebook.com/groups/129803227078351/", "twitter"=>"https://twitter.com/Hatters_BC", "instagram"=>"https://www.instagram.com/hatters_bc/", "tiktok"=>"", "abbreviation"=>"SHE", "slug"=>"sheffield-hatters"})
Club.create({"name"=>"Team Solent Kestrels", "website"=>"http://www.solentkestrels.co.uk/", "youtube"=>"https://www.youtube.com/channel/UCemfyFsoksvKjBb35rKzRFw", "facebook"=>"https://www.facebook.com/TeamSolentKestrels/", "twitter"=>"https://twitter.com/SolentKestrels", "instagram"=>"https://www.instagram.com/solent_kestrels", "tiktok"=>"", "abbreviation"=>"TSK", "slug"=>"team-solent-kestrels"})
Club.create({"name"=>"Worthing Thunder", "website"=>"https://worthingthunder.club/", "youtube"=>"https://www.youtube.com/channel/UCAA4-L4cA_J1_ZPqhKBA5iw", "facebook"=>"https://www.facebook.com/worthingthunder", "twitter"=>"https://twitter.com/WorthingThunder", "instagram"=>"https://www.instagram.com/worthing.thunder.basketball/", "tiktok"=>"", "abbreviation"=>"WOR", "slug"=>"worthing-thunder"})
Club.create({"name"=>"Thames Valley Cavaliers", "website"=>"https://tvc-basketball.com/", "youtube"=>"https://www.youtube.com/channel/UCeF8quD7p0WQOC7-gE8U-zg", "facebook"=>"https://www.facebook.com/ThamesValleyCavaliers/", "twitter"=>"https://twitter.com/ThamesValleyCav", "instagram"=>"https://www.instagram.com/thames_valley_cavaliers", "tiktok"=>"", "abbreviation"=>"TVC", "slug"=>"thames-valley-cavaliers"})
Club.create({"name"=>"Nottingham Hoods", "website"=>"http://www.hoodsbasketball.com/", "youtube"=>"https://www.youtube.com/user/leeenglish1980", "facebook"=>"https://www.facebook.com/hoodsbasketball/", "twitter"=>"https://twitter.com/hoodsbasketball", "instagram"=>"https://www.instagram.com/hoodsbasketball/", "tiktok"=>"", "abbreviation"=>"NOT", "slug"=>"nottingham-hoods"})
Club.create({"name"=>"Derby Trailblazers", "website"=>"https://www.derbytrailblazers.com/", "youtube"=>"", "facebook"=>"https://www.facebook.com/DerbyTrailblazersClub/", "twitter"=>"https://twitter.com/derbyblazers", "instagram"=>"https://www.instagram.com/trailblazersbball/", "tiktok"=>"", "abbreviation"=>"DER", "slug"=>"derby-trailblazers"})
Club.create({"name"=>"Hemel Storm", "website"=>"https://stormbasketball.net/", "youtube"=>"https://www.youtube.com/channel/UCf4ykU9tVcrMMSnfa-oc-ag", "facebook"=>"https://www.facebook.com/hemelstormbasketball", "twitter"=>"https://twitter.com/hemelstorm", "instagram"=>"https://www.instagram.com/hemelstorm/", "tiktok"=>"", "abbreviation"=>"HEM", "slug"=>"hemel-storm"})
Club.create({"name"=>"Team Newcastle University", "website"=>"", "youtube"=>"", "facebook"=>"https://www.facebook.com/teamnewcastlebasketball/", "twitter"=>"https://twitter.com/teamnewcbball", "instagram"=>"https://www.instagram.com/nclbasketball", "tiktok"=>"", "abbreviation"=>"TNU", "slug"=>"team-newcastle-university"})
Club.create({"name"=>"Reading Rockets", "website"=>"https://readingrockets.co.uk/", "youtube"=>"https://www.youtube.com/user/RocketsReading", "facebook"=>"https://www.facebook.com/readingrocketsbasketball", "twitter"=>"https://twitter.com/rocketsreading", "instagram"=>"https://www.instagram.com/rocketsreading/", "tiktok"=>"", "abbreviation"=>"REA", "slug"=>"reading-rockets"})
Club.create({"name"=>"Bradford Dragons", "website"=>"https://www.bradforddragons.co.uk/", "youtube"=>"", "facebook"=>"https://www.facebook.com/bradforddragons", "twitter"=>"https://twitter.com/DragonsBradford", "instagram"=>"https://www.instagram.com/bradforddragonsbasketball/", "tiktok"=>"", "abbreviation"=>"BRA", "slug"=>"bradford-dragons"})
Club.create({"name"=>"Leicester Warriors", "website"=>"https://www.leicesterwarriors.com/", "youtube"=>"", "facebook"=>"https://www.facebook.com/LeicesterWarriors", "twitter"=>"https://twitter.com/Leics_Warriors", "instagram"=>"https://www.instagram.com/leicesterwarriors/", "tiktok"=>"", "abbreviation"=>"LEI", "slug"=>"leicester-warriors"})
Club.create({"name"=>"Southwark Pride", "website"=>"", "youtube"=>"", "facebook"=>"https://facebook.com/COLA-Basketball-Academy-112571304268166/", "twitter"=>"https://twitter.com/CoLABasketball", "instagram"=>"https://www.instagram.com/cola_basketball", "tiktok"=>"", "abbreviation"=>"SOU", "slug"=>"southwark-pride"})
Club.create({"name"=>"Anglia Ruskin University", "website"=>"https://aru.ac.uk/sport/sports/basketball", "youtube"=>"", "facebook"=>"https://www.facebook.com/arubasketball/", "twitter"=>"https://twitter.com/ARU_Basketball", "instagram"=>"https://www.instagram.com/aru_basketball", "tiktok"=>"", "abbreviation"=>"ARU", "slug"=>"anglia-ruskin-university"})
Club.create({"name"=>"Ipswich Basketball", "website"=>"https://www.ipswichbasketball.co.uk/", "youtube"=>"https://www.youtube.com/channel/UCl0sfiH8ywJ0UbrS2cdN5zA", "facebook"=>"https://www.facebook.com/IpswichBasketball/", "twitter"=>"https://twitter.com/IpswichBball", "instagram"=>"https://www.instagram.com/ipswichbball/", "tiktok"=>"", "abbreviation"=>"IPS", "slug"=>"ipswich-basketball"})
Club.create({"name"=>"Worcester Wolves", "website"=>"https://worcesterwolves.org/", "youtube"=>"https://www.youtube.com/worcesterwolvesofficial", "facebook"=>"https://www.facebook.com/NBLWolves", "twitter"=>"https://twitter.com/NBLWolves", "instagram"=>"https://www.instagram.com/nblwolves/", "tiktok"=>"https://www.tiktok.com/@worcesterwolves", "abbreviation"=>"WOR", "slug"=>"worcester-wolves"})
Club.create({"name"=>"GCA Haringey Angels", "website"=>"http://www.haringeyangels.com/", "youtube"=>"", "facebook"=>"https://www.facebook.com/Haringey-Angels-Basketball-102871834621105/", "twitter"=>"https://twitter.com/haringeyangels", "instagram"=>"https://www.instagram.com/haringey_angels_basketball/", "tiktok"=>"", "abbreviation"=>"GCA", "slug"=>"gca-haringey-angels"})
Club.create({"name"=>"Basketball Wales", "website"=>"https://basketball.wales/", "youtube"=>"https://www.youtube.com/channel/UCACzxZbFabEjKB3YDmsGW1w", "facebook"=>"https://www.facebook.com/basketballwales", "twitter"=>"https://twitter.com/BasketballWales", "instagram"=>"https://www.instagram.com/basketballwales/", "tiktok"=>"", "abbreviation"=>"BW", "slug"=>"basketball-wales"})
Club.create({"name"=>"Falkirk Fury", "website"=>"https://www.falkirkfurybasketball.com/", "youtube"=>"", "facebook"=>"http://www.facebook.com/furybball", "twitter"=>"http://www.twitter.com/Furybball1", "instagram"=>"http://www.instagram.com/furybball", "tiktok"=>"", "abbreviation"=>"FLK", "slug"=>"falkirk-fury"})
Club.create({"name"=>"Kent Crusaders", "website"=>"https://www.kentcrusaders.co.uk/", "youtube"=>"", "facebook"=>"https://www.facebook.com/KentCrusadersBB/", "twitter"=>"https://twitter.com/KentCrusadersBB", "instagram"=>"https://www.instagram.com/kentcrusadersbb/", "tiktok"=>"", "abbreviation"=>"KNT", "slug"=>"kent-crusaders"})
Club.create({"name"=>"Sheffield Elite", "website"=>"https://sheffieldelite.co.uk/", "youtube"=>"https://www.youtube.com/c/sheffieldelitebasketballacademy", "facebook"=>"https://www.facebook.com/SheffieldEliteBasketballAcademy/", "twitter"=>"https://twitter.com/SheffElite_BA", "instagram"=>"https://www.instagram.com/sheffield_elite_bball", "tiktok"=>"", "abbreviation"=>"SHE", "slug"=>"sheffield-elite"})
Club.create({"name"=>"Myerscough College", "website"=>"https://myerscoughbasketball.co.uk/", "youtube"=>"https://www.youtube.com/user/Runshawbball", "facebook"=>"https://www.facebook.com/MyerscoughCollegeBasketball/", "twitter"=>"https://twitter.com/my_bball", "instagram"=>"https://www.instagram.com/myerscough_basketball/", "tiktok"=>"", "abbreviation"=>"SCO", "slug"=>"myerscough-college"})
Club.create({"name"=>"Team Birmingham Elite", "website"=>"https://teambirminghamelite.co.uk/", "youtube"=>"https://www.youtube.com/channel/UCvJ_IdoSBOm0VH6Lr71rLNA", "facebook"=>"https://www.facebook.com/team.birmingham.elite", "twitter"=>"https://www.twitter.com/birminghamteam", "instagram"=>"https://www.instagram.com/teambirminghamelite/", "tiktok"=>"", "abbreviation"=>"TBE", "slug"=>"team-birmingham-elite"})
Club.create({"name"=>"The American School in London", "website"=>"https://www.asl.org/", "youtube"=>"", "facebook"=>"https://www.facebook.com/americanschoolinlondon", "twitter"=>"http://www.twitter.com/aslnews", "instagram"=>"http://www.instagram.com/asinlondon", "tiktok"=>"", "abbreviation"=>"ASL", "slug"=>"the-american-school-in-london"})
Club.create({"name"=>"Great Britain", "website"=>"https://gb.basketball/", "youtube"=>"https://www.youtube.com/user/gbbasketball", "facebook"=>"http://www.facebook.com/GBBasketball", "twitter"=>"http://twitter.com/gbbasketball", "instagram"=>"http://instagram.com/gbbasketball", "tiktok"=>"", "abbreviation"=>"GBR", "slug"=>"great-britain"})
Club.create({"name"=>"Castors Braine", "website"=>"https://www.castorsbraine.be/", "youtube"=>"https://www.youtube.com/channel/UCKO2Ip_wXPXrFVnrMCrn2eg", "facebook"=>"https://www.facebook.com/Royal-Castors-Braine-101091776666338", "twitter"=>"https://twitter.com/CastorsBraine", "instagram"=>"https://www.instagram.com/castorsbraine", "tiktok"=>"", "abbreviation"=>"CAS", "slug"=>"castors-braine"})
Club.create({"name"=>"Bourges Basket", "website"=>"https://tangobourgesbasket.com/", "youtube"=>"https://www.youtube.com/user/TangoBourgesBasket", "facebook"=>"https://www.facebook.com/BourgesBasket/", "twitter"=>"https://twitter.com/bourgesbasket", "instagram"=>"https://www.instagram.com/BourgesBasket/", "tiktok"=>"", "abbreviation"=>"BOU", "slug"=>"bourges-basket"})
Club.create({"name"=>"Zabiny Brno", "website"=>"https://www.bkzabiny.cz/", "youtube"=>"https://www.youtube.com/channel/UCiWWQAwBH2U6Al2rqVrwDSA", "facebook"=>"https://www.facebook.com/zabiny", "twitter"=>"http://www.twitter.com/bkzabiny", "instagram"=>"https://www.instagram.com/zabiny/", "tiktok"=>"", "abbreviation"=>"BRN", "slug"=>"zabiny-brno"})
Club.create({"name"=>"Rutronik Stars Keltern", "website"=>"https://rutronik-stars-keltern.reservix.de/events", "youtube"=>"", "facebook"=>"", "twitter"=>"", "instagram"=>"https://www.instagram.com/rutronikstarskelter", "tiktok"=>"", "abbreviation"=>"KLT", "slug"=>"rutronik-stars-keltern"})
Club.create({"name"=>"Gran Canaria", "website"=>"http://www.cbislascanarias.com/", "youtube"=>"", "facebook"=>"https://www.facebook.com/CBIslasCanarias/", "twitter"=>"https://twitter.com/cbislascanarias", "instagram"=>"https://www.instagram.com/cbislascanarias/", "tiktok"=>"", "abbreviation"=>"GC", "slug"=>"gran-canaria"})
Club.create({"name"=>"Stockport Lapwings", "website"=>"", "youtube"=>"", "facebook"=>"https://www.facebook.com/stockportbasketballclub/", "twitter"=>"", "instagram"=>"https://www.instagram.com/stockportlapwingsbasketball/", "tiktok"=>"", "abbreviation"=>"STK", "slug"=>"stockport-lapwings"})
Club.create({"name"=>"Sussex Storm", "website"=>"https://stormbasketballclub.com/", "youtube"=>"", "facebook"=>"", "twitter"=>"https://twitter.com/StormBballClub", "instagram"=>"https://www.instagram.com/stormbballclub/", "tiktok"=>"", "abbreviation"=>"SUS", "slug"=>"sussex-storm"})
Club.create({"name"=>"Richmond Knights", "website"=>"https://knightsbasketball.co.uk/", "youtube"=>"https://www.youtube.com/user/KnightsTVUK", "facebook"=>"https://en-gb.facebook.com/Knights-Basketball-293218347420952/", "twitter"=>"http://twitter.com/knightsbball09", "instagram"=>"https://www.instagram.com/knightsbball09/", "tiktok"=>"", "abbreviation"=>"RIC", "slug"=>"richmond-knights"})
Club.create({"name"=>"Islington Panthers", "website"=>"https://islingtonpanthers.co.uk/", "youtube"=>"", "facebook"=>"", "twitter"=>"", "instagram"=>"https://www.instagram.com/islingtonpanthers/", "tiktok"=>"", "abbreviation"=>"ISL", "slug"=>"islington-panthers"})
Club.create({"name"=>"University of East London", "website"=>"", "youtube"=>"", "facebook"=>"", "twitter"=>"", "instagram"=>"", "tiktok"=>"", "abbreviation"=>"UEL", "slug"=>"university-of-east-london"})
Club.create({"name"=>"Donar Groningen", "website"=>"", "youtube"=>"", "facebook"=>"", "twitter"=>"", "instagram"=>"", "tiktok"=>"", "abbreviation"=>"DON", "slug"=>"donar-groningen"})
Club.create({"name"=>"Kapfenburg Bulls", "website"=>"", "youtube"=>"", "facebook"=>"", "twitter"=>"", "instagram"=>"", "tiktok"=>"", "abbreviation"=>"KAP", "slug"=>"kapfenburg-bulls"})
Club.create({"name"=>"Medi Bayreuth", "website"=>"", "youtube"=>"", "facebook"=>"", "twitter"=>"", "instagram"=>"", "tiktok"=>"", "abbreviation"=>"BAY", "slug"=>"medi-bayreuth"})
Club.create({"name"=>"Avtodor Saratov", "website"=>"", "youtube"=>"", "facebook"=>"", "twitter"=>"", "instagram"=>"", "tiktok"=>"", "abbreviation"=>"SAR", "slug"=>"avtodor-saratov"})
Club.create({"name"=>"Bakken Bears", "website"=>"", "youtube"=>"", "facebook"=>"", "twitter"=>"", "instagram"=>"", "tiktok"=>"", "abbreviation"=>"BAK", "slug"=>"bakken-bears"})
Club.create({"name"=>"Bahcesehir College", "website"=>"", "youtube"=>"", "facebook"=>"", "twitter"=>"", "instagram"=>"", "tiktok"=>"", "abbreviation"=>"BAH", "slug"=>"bahcesehir-college"})

Team.create({"name"=>"London Lions BBL", "website"=>"https://www.thelondonlions.com/", "youtube"=>"https://www.youtube.com/user/LondonBasketball", "facebook"=>"https://www.facebook.com/LondonLions/", "twitter"=>"https://twitter.com/London_Lions", "instagram"=>"https://www.instagram.com/londonlions/", "tiktok"=>"https://www.tiktok.com/@londonlions", "slug"=>"london-lions", "abbreviation"=>"LDN", "club_id"=>2, "display_name"=>""})
Team.create({"name"=>"Newcastle Eagles BBL", "website"=>"https://newcastle-eagles.com/", "youtube"=>"https://www.youtube.com/NewcastleEagles", "facebook"=>"https://www.facebook.com/NewcastleEagles", "twitter"=>"https://twitter.com/NewcastleEagle", "instagram"=>"https://www.instagram.com/NewcastleEagles/", "tiktok"=>"https://www.tiktok.com/@newcastleeagles", "slug"=>"newcastle-eagles", "abbreviation"=>"NEW", "club_id"=>8, "display_name"=>""})
Team.create({"name"=>"Sheffield Sharks BBL", "website"=>"https://sheffieldsharks.co.uk/", "youtube"=>"https://www.youtube.com/user/TheSheffieldSharks", "facebook"=>"https://www.facebook.com/SheffieldSharks", "twitter"=>"https://twitter.com/SheffieldSharks", "instagram"=>"https://www.instagram.com/sheffieldsharks/", "tiktok"=>"https://www.tiktok.com/@sheffieldsharks?", "slug"=>"sheffield-sharks", "abbreviation"=>"SHE", "club_id"=>3, "display_name"=>""})
Team.create({"name"=>"Surrey Scorchers BBL", "website"=>"https://www.surreyscorchers.co.uk/", "youtube"=>"https://www.youtube.com/channel/UCJbNe4IrOSPG07QdR5mtOzg", "facebook"=>"https://www.facebook.com/surreyscorchersbasketball/", "twitter"=>"https://twitter.com/surreyscorchers", "instagram"=>"https://www.instagram.com/scorchersbasketball/", "tiktok"=>"https://www.tiktok.com/@surreyscorchers", "slug"=>"surrey-scorchers", "abbreviation"=>"SUR", "club_id"=>10, "display_name"=>""})
Team.create({"name"=>"Team Solent Kestrels Senior Men (D1)", "website"=>"http://www.solentkestrels.co.uk/", "youtube"=>"https://www.youtube.com/channel/UCemfyFsoksvKjBb35rKzRFw", "facebook"=>"https://www.facebook.com/TeamSolentKestrels/", "twitter"=>"https://twitter.com/SolentKestrels", "instagram"=>"https://www.instagram.com/solent_kestrels", "tiktok"=>"", "slug"=>"team-solent-kestrels", "abbreviation"=>"TSK", "club_id"=>21, "display_name"=>""})
Team.create({"name"=>"Thames Valley Cavaliers Senior Men (D1)", "website"=>"https://tvc-basketball.com/", "youtube"=>"https://www.youtube.com/channel/UCeF8quD7p0WQOC7-gE8U-zg", "facebook"=>"https://www.facebook.com/ThamesValleyCavaliers/", "twitter"=>"https://twitter.com/ThamesValleyCav", "instagram"=>"https://www.instagram.com/thames_valley_cavaliers", "tiktok"=>"", "slug"=>"thames-valley-cavaliers", "abbreviation"=>"TVC", "club_id"=>23, "display_name"=>""})
Team.create({"name"=>"University of East London", "website"=>"", "youtube"=>"", "facebook"=>"", "twitter"=>"", "instagram"=>"", "tiktok"=>"", "slug"=>"university-of-east-london", "abbreviation"=>"UEL", "club_id"=>53, "display_name"=>""})
Team.create({"name"=>"Sheffield Hatters WBBL", "website"=>"http://sheffieldhatters.com/", "youtube"=>"", "facebook"=>"https://www.facebook.com/groups/129803227078351/", "twitter"=>"https://twitter.com/Hatters_BC", "instagram"=>"https://www.instagram.com/hatters_bc/", "tiktok"=>"", "slug"=>"sheffield-hatters", "abbreviation"=>"SHE", "club_id"=>20, "display_name"=>""})
Team.create({"name"=>"Oaklands Wolves WBBL", "website"=>"https://oaklandswolves.com/", "youtube"=>"https://www.youtube.com/channel/UCY6xelFGK7ftzqu_6kyq6LA", "facebook"=>"https://www.facebook.com/OaklandsballWBBL/", "twitter"=>"https://twitter.com/Oaklandsball", "instagram"=>"https://www.instagram.com/oaklandsball_wbbl", "tiktok"=>"", "slug"=>"oaklands-wolves", "abbreviation"=>"OAK", "club_id"=>18, "display_name"=>""})
Team.create({"name"=>"Sevenoaks Suns WBBL", "website"=>"https://www.sevenoakssuns.com/", "youtube"=>"https://www.youtube.com/channel/UC98mEbb7h4RaBcv2rZO0oRw", "facebook"=>"https://www.facebook.com/sevenoakssuns", "twitter"=>"https://twitter.com/SevenoaksSuns", "instagram"=>"https://www.instagram.com/7oakssuns/", "tiktok"=>"", "slug"=>"sevenoaks-suns", "abbreviation"=>"SEV", "club_id"=>19, "display_name"=>""})
Team.create({"name"=>"Worthing Thunder Senior Men (D1)", "website"=>"https://worthingthunder.club/", "youtube"=>"https://www.youtube.com/channel/UCAA4-L4cA_J1_ZPqhKBA5iw", "facebook"=>"https://www.facebook.com/worthingthunder", "twitter"=>"https://twitter.com/WorthingThunder", "instagram"=>"https://www.instagram.com/worthing.thunder.basketball/", "tiktok"=>"", "slug"=>"worthing-thunder", "abbreviation"=>"WOR", "club_id"=>22, "display_name"=>""})
Team.create({"name"=>"Derby Trailblazers Senior Men (D1)", "website"=>"https://www.derbytrailblazers.com/", "youtube"=>"", "facebook"=>"https://www.facebook.com/DerbyTrailblazersClub/", "twitter"=>"https://twitter.com/derbyblazers", "instagram"=>"https://www.instagram.com/trailblazersbball/", "tiktok"=>"", "slug"=>"derby-trailblazers", "abbreviation"=>"DER", "club_id"=>25, "display_name"=>""})
Team.create({"name"=>"Hemel Storm Senior Men (D1)", "website"=>"https://stormbasketball.net/", "youtube"=>"https://www.youtube.com/channel/UCf4ykU9tVcrMMSnfa-oc-ag", "facebook"=>"https://www.facebook.com/hemelstormbasketball", "twitter"=>"https://twitter.com/hemelstorm", "instagram"=>"https://www.instagram.com/hemelstorm/", "tiktok"=>"", "slug"=>"hemel-storm", "abbreviation"=>"HEM", "club_id"=>26, "display_name"=>""})
Team.create({"name"=>"Loughborough Riders Senior Men (D1)", "website"=>"https://riders.basketball/loughborough/", "youtube"=>"https://www.youtube.com/user/lborobasketball", "facebook"=>"https://www.facebook.com/lborobasketball/", "twitter"=>"https://twitter.com/lborobasketball/", "instagram"=>"https://www.instagram.com/lborobasketball/", "tiktok"=>"", "slug"=>"loughborough-riders", "abbreviation"=>"LOU", "club_id"=>1, "display_name"=>""})
Team.create({"name"=>"CoLA Southwark Pride Senior Women", "website"=>"", "youtube"=>"", "facebook"=>"", "twitter"=>"", "instagram"=>"", "tiktok"=>"", "slug"=>"southwark-pride", "abbreviation"=>"SOU", "club_id"=>31, "display_name"=>""})
Team.create({"name"=>"Manchester Met Mystics WBBL", "website"=>"http://www.manchestermagicandmystics.co.uk/", "youtube"=>"", "facebook"=>"", "twitter"=>"https://twitter.com/McrMetMystics", "instagram"=>"https://www.instagram.com/mcrmetmystics/", "tiktok"=>"", "slug"=>"manchester-met-mystics", "abbreviation"=>"MAN", "club_id"=>16, "display_name"=>"Manchester Met Mystics"})
Team.create({"name"=>"Cardiff Met Archers WBBL", "website"=>"https://cardiffmetarchers.leaguerepublic.com/index.html", "youtube"=>"https://www.youtube.com/user/cardiffmetarchers", "facebook"=>"https://www.facebook.com/archersbasket/", "twitter"=>"https://twitter.com/ArchersBasket", "instagram"=>"https://www.instagram.com/archersbasket", "tiktok"=>"", "slug"=>"cardiff-met-archers", "abbreviation"=>"CAR", "club_id"=>12, "display_name"=>""})
Team.create({"name"=>"Gloucester City Queens", "website"=>"https://www.gloucestercitybasketball.co.uk/", "youtube"=>"", "facebook"=>"https://www.facebook.com/gloucestercityqueens", "twitter"=>"https://twitter.com/GlosCityQueens", "instagram"=>"https://www.instagram.com/GlosCityQueens/", "tiktok"=>"", "slug"=>"gloucester-city-queens", "abbreviation"=>"GLO", "club_id"=>15, "display_name"=>""})
Team.create({"name"=>"Leicester Riders BBL", "website"=>"https://riders.basketball/", "youtube"=>"https://www.youtube.com/user/leicesterriders1", "facebook"=>"https://www.facebook.com/ridersbball/", "twitter"=>"https://twitter.com/ridersbball", "instagram"=>"https://www.instagram.com/ridersbball/", "tiktok"=>"https://www.tiktok.com/@ridersbball", "slug"=>"leicester-riders", "abbreviation"=>"LEI", "club_id"=>1, "display_name"=>"Leicester Riders"})
Team.create({"name"=>"Bristol Flyers BBL", "website"=>"https://www.bristolflyers.co.uk/", "youtube"=>"https://www.youtube.com/user/bristolacademyflyers", "facebook"=>"https://www.facebook.com/BristolFlyers", "twitter"=>"https://twitter.com/BristolFlyers", "instagram"=>"https://www.instagram.com/bristolflyers/", "tiktok"=>"https://www.tiktok.com/@bristolflyers", "slug"=>"bristol-flyers", "abbreviation"=>"BRI", "club_id"=>4, "display_name"=>""})
Team.create({"name"=>"Cheshire Phoenix BBL", "website"=>"https://cheshirephoenix.com/", "youtube"=>"https://www.youtube.com/channel/UCW9Wcg5SKSzBa-RPR-_ZGBQ", "facebook"=>"https://www.facebook.com/CheshirePhoenix", "twitter"=>"https://twitter.com/cheshirenix", "instagram"=>"https://www.instagram.com/bblcheshirephoenix/", "tiktok"=>"https://www.tiktok.com/@cheshirephoenix", "slug"=>"cheshire-phoenix", "abbreviation"=>"CHE", "club_id"=>5, "display_name"=>""})
Team.create({"name"=>"Glasgow Rocks BBL", "website"=>"https://glasgowrocks.co.uk/", "youtube"=>"https://www.youtube.com/user/GlasgowRocksTV", "facebook"=>"https://www.facebook.com/GlasgowRocks/", "twitter"=>"https://twitter.com/GlasgowRocks", "instagram"=>"https://www.instagram.com/glasgowrocks/", "tiktok"=>"https://www.tiktok.com/@glasgowrocks", "slug"=>"glasgow-rocks", "abbreviation"=>"GLA", "club_id"=>6, "display_name"=>""})
Team.create({"name"=>"Durham Palatinates WBBL", "website"=>"https://www.dur.ac.uk/teamdurham/", "youtube"=>"", "facebook"=>"https://www.facebook.com/DurhamPalatinates/", "twitter"=>"https://twitter.com/du_palatinates", "instagram"=>"https://www.instagram.com/durhampalatinateswbbl/", "tiktok"=>"", "slug"=>"durham-palatinates", "abbreviation"=>"DUR", "club_id"=>13, "display_name"=>""})
Team.create({"name"=>"Caledonia Pride WBBL", "website"=>"http://caledoniapride.co.uk/", "youtube"=>"https://www.youtube.com/channel/UCQNJF2HGVV-UmM0wzea01Yg", "facebook"=>"https://www.facebook.com/CaledoniaPride/", "twitter"=>"https://twitter.com/Caledonia_Pride", "instagram"=>"https://www.instagram.com/caledonia_pride/", "tiktok"=>"", "slug"=>"caledonia-pride", "abbreviation"=>"CAL", "club_id"=>11, "display_name"=>""})
Team.create({"name"=>"Manchester Giants BBL", "website"=>"https://www.manchestergiants.com/", "youtube"=>"https://www.youtube.com/channel/UCQNJF2HGVV-UmM0wzea01Yg", "facebook"=>"https://www.facebook.com/mcrgiants", "twitter"=>"https://twitter.com/mcrgiants", "instagram"=>"https://www.instagram.com/mcrgiants/", "tiktok"=>"https://www.tiktok.com/@mcrgiants", "slug"=>"manchester-giants", "abbreviation"=>"MCR", "club_id"=>7, "display_name"=>""})
Team.create({"name"=>"Castors Braine", "website"=>"https://www.castorsbraine.be/", "youtube"=>"https://www.youtube.com/channel/UCKO2Ip_wXPXrFVnrMCrn2eg", "facebook"=>"https://www.facebook.com/Royal-Castors-Braine-101091776666338", "twitter"=>"https://twitter.com/CastorsBraine", "instagram"=>"https://www.instagram.com/castorsbraine", "tiktok"=>"", "slug"=>"castors-braine", "abbreviation"=>"CAS", "club_id"=>44, "display_name"=>""})
Team.create({"name"=>"Basketball Wales Senior Men", "website"=>"", "youtube"=>"", "facebook"=>"", "twitter"=>"", "instagram"=>"", "tiktok"=>"", "slug"=>"basketball-wales-senior-men", "abbreviation"=>"BW", "club_id"=>36, "display_name"=>""})
Team.create({"name"=>"Bourges Basket", "website"=>"https://tangobourgesbasket.com/", "youtube"=>"https://www.youtube.com/user/TangoBourgesBasket", "facebook"=>"https://www.facebook.com/BourgesBasket/", "twitter"=>"https://twitter.com/bourgesbasket", "instagram"=>"https://www.instagram.com/BourgesBasket/", "tiktok"=>"", "slug"=>"bourges-basket", "abbreviation"=>"BOU", "club_id"=>45, "display_name"=>""})
Team.create({"name"=>"Ipswich Basketball Senior Women", "website"=>"https://www.ipswichbasketball.co.uk/", "youtube"=>"https://www.youtube.com/channel/UCl0sfiH8ywJ0UbrS2cdN5zA", "facebook"=>"https://www.facebook.com/IpswichBasketball/", "twitter"=>"https://twitter.com/IpswichBball", "instagram"=>"https://www.instagram.com/ipswichbball/", "tiktok"=>"", "slug"=>"ipswich-basketball", "abbreviation"=>"IPS", "club_id"=>33, "display_name"=>""})
Team.create({"name"=>"Nottingham Hoods Senior Men (D1)", "website"=>"http://www.hoodsbasketball.com/", "youtube"=>"https://www.youtube.com/user/leeenglish1980", "facebook"=>"https://www.facebook.com/hoodsbasketball/", "twitter"=>"https://twitter.com/hoodsbasketball", "instagram"=>"https://www.instagram.com/hoodsbasketball/", "tiktok"=>"", "slug"=>"nottingham-hoods", "abbreviation"=>"NOT", "club_id"=>24, "display_name"=>""})
Team.create({"name"=>"Team Newcastle University Senior Men (D1)", "website"=>"", "youtube"=>"", "facebook"=>"https://www.facebook.com/teamnewcastlebasketball/", "twitter"=>"https://twitter.com/teamnewcbball", "instagram"=>"https://www.instagram.com/nclbasketball", "tiktok"=>"", "slug"=>"team-newcastle-university", "abbreviation"=>"TNU", "club_id"=>27, "display_name"=>""})
Team.create({"name"=>"Reading Rockets Senior Men (D1)", "website"=>"https://readingrockets.co.uk/", "youtube"=>"https://www.youtube.com/user/RocketsReading", "facebook"=>"https://www.facebook.com/readingrocketsbasketball", "twitter"=>"https://twitter.com/rocketsreading", "instagram"=>"https://www.instagram.com/rocketsreading/", "tiktok"=>"", "slug"=>"reading-rockets", "abbreviation"=>"RDG", "club_id"=>28, "display_name"=>""})
Team.create({"name"=>"Kapfenberg Bulls", "website"=>"https://bulls-basketball.eu/", "youtube"=>"", "facebook"=>"https://www.facebook.com/BULLS.BBALL", "twitter"=>"", "instagram"=>"https://www.instagram.com/bulls.bball/", "tiktok"=>"", "slug"=>"kapfenberg-bulls", "abbreviation"=>"KAP", "club_id"=>55, "display_name"=>""})
Team.create({"name"=>"Bradford Dragons Senior Men (D1) ", "website"=>"https://www.bradforddragons.co.uk/", "youtube"=>"", "facebook"=>"https://www.facebook.com/bradforddragons", "twitter"=>"https://twitter.com/DragonsBradford", "instagram"=>"https://www.instagram.com/bradforddragonsbasketball/", "tiktok"=>"", "slug"=>"bradford-dragons", "abbreviation"=>"BRA", "club_id"=>29, "display_name"=>""})
Team.create({"name"=>"Leicester Warriors Senior Men (D1)", "website"=>"https://www.leicesterwarriors.com/", "youtube"=>"", "facebook"=>"https://www.facebook.com/LeicesterWarriors", "twitter"=>"https://twitter.com/Leics_Warriors", "instagram"=>"https://www.instagram.com/leicesterwarriors/", "tiktok"=>"", "slug"=>"leicester-warriors", "abbreviation"=>"LEI", "club_id"=>30, "display_name"=>""})
Team.create({"name"=>"Oaklands Wolves Senior Men (D1)", "website"=>"", "youtube"=>"", "facebook"=>"", "twitter"=>"", "instagram"=>"", "tiktok"=>"", "slug"=>"oaklands-wolves-senior-men", "abbreviation"=>"OAK", "club_id"=>18, "display_name"=>""})
Team.create({"name"=>"Nottingham Trent University Senior Women", "website"=>"https://www.ntu.ac.uk/sport/get-involved/sports-clubs/sport-clubs/court-sports/womens-basketball", "youtube"=>"", "facebook"=>"", "twitter"=>"https://twitter.com/trentbasketball", "instagram"=>"", "tiktok"=>"", "slug"=>"nottingham-trent-university", "abbreviation"=>"NTU", "club_id"=>24, "display_name"=>""})
Team.create({"name"=>"Charnwood College U19 Men", "website"=>"https://riders.basketball/charnwood/", "youtube"=>"", "facebook"=>"https://www.facebook.com/CharnwoodBasketball/", "twitter"=>"https://twitter.com/charnwoodbball", "instagram"=>"https://www.instagram.com/charnwoodbball", "tiktok"=>"", "slug"=>"charnwood-college", "abbreviation"=>"CHN", "club_id"=>1, "display_name"=>"Charnwood College"})
Team.create({"name"=>"Medi Bayreuth", "website"=>"https://www.medi-bayreuth.de/", "youtube"=>"https://www.youtube.com/channel/UCcS8dnmtFvTGRSpmn9mrSjg", "facebook"=>"https://www.facebook.com/medibayreuth", "twitter"=>"https://twitter.com/medibayreuth", "instagram"=>"https://www.instagram.com/medibayreuth/?hl=en", "tiktok"=>"", "slug"=>"medi-bayreuth", "abbreviation"=>"BAY", "club_id"=>56, "display_name"=>""})
Team.create({"name"=>"Zabiny Brno", "website"=>"https://www.bkzabiny.cz/", "youtube"=>"https://www.youtube.com/channel/UCiWWQAwBH2U6Al2rqVrwDSA", "facebook"=>"https://www.facebook.com/zabiny", "twitter"=>"http://www.twitter.com/bkzabiny", "instagram"=>"https://www.instagram.com/zabiny/", "tiktok"=>"", "slug"=>"zabiny-brno", "abbreviation"=>"BRN", "club_id"=>46, "display_name"=>""})
Team.create({"name"=>"Rutronik Stars Keltern", "website"=>"https://rutronik-stars-keltern.reservix.de/events", "youtube"=>"", "facebook"=>"", "twitter"=>"", "instagram"=>"https://www.instagram.com/rutronikstarskelter", "tiktok"=>"", "slug"=>"rutronik-stars-keltern", "abbreviation"=>"KLT", "club_id"=>47, "display_name"=>""})
Team.create({"name"=>"Sheffield College U19 Women", "website"=>"", "youtube"=>"", "facebook"=>"", "twitter"=>"", "instagram"=>"", "tiktok"=>"", "slug"=>"sheffield-college", "abbreviation"=>"SHE", "club_id"=>20, "display_name"=>""})
Team.create({"name"=>"Gran Canaria", "website"=>"http://www.cbislascanarias.com/", "youtube"=>"", "facebook"=>"https://www.facebook.com/CBIslasCanarias/", "twitter"=>"https://twitter.com/cbislascanarias", "instagram"=>"https://www.instagram.com/cbislascanarias/", "tiktok"=>"", "slug"=>"gran-canaria", "abbreviation"=>"GC", "club_id"=>48, "display_name"=>""})
Team.create({"name"=>"Avtodor Saratov", "website"=>"http://avtodor.ru/en/", "youtube"=>"", "facebook"=>"https://www.facebook.com/bcavtodor", "twitter"=>"http://twitter.com/AvtodorSaratov", "instagram"=>"https://www.instagram.com/bcavtodor/", "tiktok"=>"", "slug"=>"avtodor-saratov", "abbreviation"=>"AVT", "club_id"=>57, "display_name"=>""})
Team.create({"name"=>"London Lions WBBL", "website"=>"", "youtube"=>"", "facebook"=>"", "twitter"=>"", "instagram"=>"", "tiktok"=>"", "slug"=>"london-lions-wbbl", "abbreviation"=>"LON", "club_id"=>2, "display_name"=>""})
Team.create({"name"=>"Bakken Bears", "website"=>"https://www.bakkenbears.com/", "youtube"=>"https://www.youtube.com/channel/UCI7rQUrj_r5taKDtbRzUQhA", "facebook"=>"https://www.facebook.com/bakkenbears", "twitter"=>"https://twitter.com/bakkenbears", "instagram"=>"https://www.instagram.com/bakkenbears_official/", "tiktok"=>"", "slug"=>"bakken-bears", "abbreviation"=>"BAK", "club_id"=>58, "display_name"=>""})
Team.create({"name"=>"Bahcesehir College", "website"=>"https://www.bahcesehirsporkulubu.org/en", "youtube"=>"", "facebook"=>"https://www.facebook.com/BKBasketbol/", "twitter"=>"https://twitter.com/BKBasketbol", "instagram"=>"https://www.instagram.com/bkbasketbol/", "tiktok"=>"", "slug"=>"bahcesehir-college", "abbreviation"=>"BAH", "club_id"=>59, "display_name"=>""})
Team.create({"name"=>"Donar Groningen", "website"=>"https://www.donar.nl/", "youtube"=>"https://www.youtube.com/c/donartv", "facebook"=>"https://www.facebook.com/donarbasketballgroningen", "twitter"=>"https://twitter.com/Donar_Official", "instagram"=>"https://www.instagram.com/donar_official/", "tiktok"=>"", "slug"=>"donar-groningen", "abbreviation"=>"DON", "club_id"=>54, "display_name"=>""})
Team.create({"name"=>"Cardiff Met Archers Senior Women (D1)", "website"=>"", "youtube"=>"", "facebook"=>"", "twitter"=>"", "instagram"=>"", "tiktok"=>"", "slug"=>"cardiff-met-archers-senior-women-d1", "abbreviation"=>"CAR", "club_id"=>12, "display_name"=>""})
Team.create({"name"=>"Sussex Storm U18 Men", "website"=>"https://stormbasketballclub.com/", "youtube"=>"", "facebook"=>"", "twitter"=>"https://twitter.com/StormBballClub", "instagram"=>"https://www.instagram.com/stormbballclub/", "tiktok"=>"", "slug"=>"sussex-storm", "abbreviation"=>"SUS", "club_id"=>50, "display_name"=>""})
Team.create({"name"=>"Thames Valley Cavaliers Senior Women", "website"=>"", "youtube"=>"", "facebook"=>"", "twitter"=>"", "instagram"=>"", "tiktok"=>"", "slug"=>"thames-valley-cavaliers-senior-women", "abbreviation"=>"TVC", "club_id"=>23, "display_name"=>""})
Team.create({"name"=>"Essex Rebels WBBL", "website"=>"https://www.essexrebels.co.uk/", "youtube"=>"https://www.youtube.com/channel/UCwpHNMiMmz_Zhci2J3QKqPA", "facebook"=>"https://www.facebook.com/EssexRebels", "twitter"=>"https://twitter.com/EssexRebels", "instagram"=>"https://www.instagram.com/essexrebelsbasketball/", "tiktok"=>"https://www.tiktok.com/@essexrebels", "slug"=>"essex-rebels", "abbreviation"=>"ESX", "club_id"=>14, "display_name"=>""})
Team.create({"name"=>"Reading Rockets Senior Women (D1)", "website"=>"", "youtube"=>"", "facebook"=>"", "twitter"=>"", "instagram"=>"", "tiktok"=>"", "slug"=>"reading-rockets-senior-women-d1", "abbreviation"=>"RDG", "club_id"=>28, "display_name"=>""})
Team.create({"name"=>"Newcastle Eagles WBBL", "website"=>"", "youtube"=>"", "facebook"=>"", "twitter"=>"", "instagram"=>"", "tiktok"=>"", "slug"=>"newcastle-eagles-wbbl", "abbreviation"=>"NEW", "club_id"=>8, "display_name"=>""})
Team.create({"name"=>"Stockport Lapwings", "website"=>"", "youtube"=>"", "facebook"=>"https://www.facebook.com/stockportbasketballclub/", "twitter"=>"", "instagram"=>"https://www.instagram.com/stockportlapwingsbasketball/", "tiktok"=>"", "slug"=>"stockport-lapwings", "abbreviation"=>"STO", "club_id"=>49, "display_name"=>""})
Team.create({"name"=>"James Watt College", "website"=>"", "youtube"=>"", "facebook"=>"", "twitter"=>"", "instagram"=>"", "tiktok"=>"", "slug"=>"james-watt-college", "abbreviation"=>"JAM", "club_id"=>41, "display_name"=>""})
Team.create({"name"=>"Plymouth City Patriots BBL", "website"=>"https://www.plymouthcitypatriots.com/", "youtube"=>"https://www.youtube.com/channel/UCto5GdtQh4neQEfBg8g-dyw", "facebook"=>"https://www.facebook.com/plymouthcitypatriots/", "twitter"=>"https://twitter.com/PlymCityPatriot", "instagram"=>"https://www.instagram.com/plymouthcitypatriots", "tiktok"=>"https://www.tiktok.com/@plymouthcitypatriots", "slug"=>"plymouth-city-patriots", "abbreviation"=>"PLY", "club_id"=>9, "display_name"=>""})
Team.create({"name"=>"Falkirk Fury Senior Men", "website"=>"", "youtube"=>"", "facebook"=>"", "twitter"=>"", "instagram"=>"", "tiktok"=>"", "slug"=>"falkirk-fury-senior-men", "abbreviation"=>"FLK", "club_id"=>37, "display_name"=>""})
Team.create({"name"=>"Bristol Academy Flyers Senior Women", "website"=>"", "youtube"=>"", "facebook"=>"", "twitter"=>"https://twitter.com/flyerswomen", "instagram"=>"https://www.instagram.com/bristolflyerswomen", "tiktok"=>"", "slug"=>"bristol-academy-flyers-senior-women", "abbreviation"=>"BRI", "club_id"=>4, "display_name"=>""})
Team.create({"name"=>"Islington Panthers U16 Boys", "website"=>"https://islingtonpanthers.co.uk/", "youtube"=>"", "facebook"=>"", "twitter"=>"", "instagram"=>"https://www.instagram.com/islingtonpanthers/", "tiktok"=>"", "slug"=>"islington-panthers", "abbreviation"=>"ISL", "club_id"=>52, "display_name"=>""})
Team.create({"name"=>"Leicester Riders WBBL", "website"=>"", "youtube"=>"", "facebook"=>"https://www.facebook.com/riderswomen/", "twitter"=>"https://twitter.com/RidersWomen", "instagram"=>"https://www.instagram.com/riderswomen", "tiktok"=>"", "slug"=>"leicester-riders-wbbl", "abbreviation"=>"LEI", "club_id"=>1, "display_name"=>""})
Team.create({"name"=>"GCA Haringey Angels U16 Girls", "website"=>"http://www.haringeyangels.com/", "youtube"=>"", "facebook"=>"https://www.facebook.com/Haringey-Angels-Basketball-102871834621105/", "twitter"=>"https://twitter.com/haringeyangels", "instagram"=>"https://www.instagram.com/haringey_angels_basketball/", "tiktok"=>"", "slug"=>"gca-haringey-angels", "abbreviation"=>"GCA", "club_id"=>35, "display_name"=>""})
Team.create({"name"=>"Nottingham Wildcats", "website"=>"https://nottinghamwildcats.com/", "youtube"=>"https://www.youtube.com/channel/UCbXSTb3JoDeYyciEosrtRlA", "facebook"=>"https://www.facebook.com/nottinghamwildcats1976/", "twitter"=>"https://twitter.com/NottmWildcats", "instagram"=>"https://www.instagram.com/nottmwildcats/", "tiktok"=>"", "slug"=>"nottingham-wildcats", "abbreviation"=>"NOT", "club_id"=>17, "display_name"=>""})
Team.create({"name"=>"Anglia Ruskin University Senior Women", "website"=>"https://aru.ac.uk/sport/sports/basketball", "youtube"=>"", "facebook"=>"https://www.facebook.com/arubasketball/", "twitter"=>"https://twitter.com/ARU_Basketball", "instagram"=>"https://www.instagram.com/aru_basketball", "tiktok"=>"", "slug"=>"anglia-ruskin-university", "abbreviation"=>"ARU", "club_id"=>32, "display_name"=>""})
Team.create({"name"=>"Worcester Wolves Senior Women", "website"=>"https://worcesterwolves.org/", "youtube"=>"https://www.youtube.com/worcesterwolvesofficial", "facebook"=>"https://www.facebook.com/NBLWolves", "twitter"=>"https://twitter.com/NBLWolves", "instagram"=>"https://www.instagram.com/nblwolves/", "tiktok"=>"https://www.tiktok.com/@worcesterwolves", "slug"=>"worcester-wolves", "abbreviation"=>"WCR", "club_id"=>34, "display_name"=>""})
Team.create({"name"=>"Canterbury High School", "website"=>"", "youtube"=>"", "facebook"=>"", "twitter"=>"", "instagram"=>"", "tiktok"=>"", "slug"=>"canterbury-high-school", "abbreviation"=>"CAN", "club_id"=>38, "display_name"=>"Canterbury High School"})
Team.create({"name"=>"Oaklands College U19 Men", "website"=>"", "youtube"=>"", "facebook"=>"", "twitter"=>"", "instagram"=>"https://www.instagram.com/oaklandswolvesacademy/", "tiktok"=>"", "slug"=>"oaklands-college-u19-men", "abbreviation"=>"OAK", "club_id"=>18, "display_name"=>"Oaklands College Wolves"})
Team.create({"name"=>"Newcastle Eagles Academy U19 Men", "website"=>"", "youtube"=>"", "facebook"=>"", "twitter"=>"", "instagram"=>"", "tiktok"=>"", "slug"=>"newcastle-eagles-academy-u19-men", "abbreviation"=>"NEW", "club_id"=>8, "display_name"=>"Newcastle Eagles Academy"})
Team.create({"name"=>"Itchen College U19 Men", "website"=>"", "youtube"=>"", "facebook"=>"https://www.facebook.com/itchenbasketball/", "twitter"=>"https://twitter.com/itchenbball/", "instagram"=>"https://www.instagram.com/itchenbball/", "tiktok"=>"", "slug"=>"itchen-college", "abbreviation"=>"ITC", "club_id"=>21, "display_name"=>"Itchen College"})
Team.create({"name"=>"Copleston High School U19 Men", "website"=>"", "youtube"=>"", "facebook"=>"https://www.facebook.com/ipswichbasketballacademy/", "twitter"=>"https://twitter.com/IBA_copleston", "instagram"=>"https://www.instagram.com/IBA_copleston/", "tiktok"=>"", "slug"=>"copleston-high-school-u19-men", "abbreviation"=>"IBA", "club_id"=>33, "display_name"=>"Copleston High School"})
Team.create({"name"=>"City of London Academy U19 Men", "website"=>"", "youtube"=>"https://www.youtube.com/channel/UCml65L_FnAZbUnYvSRIqgRQ", "facebook"=>"facebook.com/COLA-Basketball-Academy-112571304268166/", "twitter"=>"https://twitter.com/CoLABasketball", "instagram"=>"https://www.instagram.com/cola_basketball/", "tiktok"=>"", "slug"=>"city-of-london-academy-u19-men", "abbreviation"=>"CoLA", "club_id"=>31, "display_name"=>"City of London Academy"})
Team.create({"name"=>"Barking Abbey U19 Men", "website"=>"", "youtube"=>"https://www.youtube.com/channel/UCKr5EQNQFaiBZBU6URMzBaQ", "facebook"=>"https://www.facebook.com/abbeybasketball/", "twitter"=>"https://twitter.com/abbeybasketball", "instagram"=>"https://www.instagram.com/abbeynation/", "tiktok"=>"", "slug"=>"barking-abbey-u19-men", "abbreviation"=>"BA", "club_id"=>2, "display_name"=>"Barking Abbey"})
Team.create({"name"=>"SGS College", "website"=>"https://www.sgscol.ac.uk/basketball", "youtube"=>"", "facebook"=>"https://www.facebook.com/SGS-Basketball-Academy-145324808855638/", "twitter"=>"https://twitter.com/sgsbballacademy", "instagram"=>"https://www.instagram.com/sgsbballacademy/", "tiktok"=>"", "slug"=>"sgs-college", "abbreviation"=>"SGS", "club_id"=>4, "display_name"=>"SGS College"})
Team.create({"name"=>"Myerscough U19 Men", "website"=>"", "youtube"=>"", "facebook"=>"", "twitter"=>"", "instagram"=>"", "tiktok"=>"", "slug"=>"myerscough-u19-men", "abbreviation"=>"SCO", "club_id"=>40, "display_name"=>""})
Team.create({"name"=>"James Watt College-BMet U19 Men", "website"=>"", "youtube"=>"", "facebook"=>"", "twitter"=>"", "instagram"=>"", "tiktok"=>"", "slug"=>"james-watt-college-bmet-u19-men", "abbreviation"=>"TBE", "club_id"=>41, "display_name"=>"James Watt College-BMet"})
Team.create({"name"=>"Manchester Magic Academy U19 Men", "website"=>"", "youtube"=>"", "facebook"=>"", "twitter"=>"", "instagram"=>"", "tiktok"=>"", "slug"=>"manchester-magic-academy", "abbreviation"=>"MCR", "club_id"=>16, "display_name"=>""})
Team.create({"name"=>"Derby College Trailblazers U19 Men", "website"=>"", "youtube"=>"", "facebook"=>"", "twitter"=>"", "instagram"=>"https://www.instagram.com/derbyblazers_ba/", "tiktok"=>"", "slug"=>"derby-college-trailblazers-u19-men", "abbreviation"=>"DER", "club_id"=>25, "display_name"=>"Derby College Trailblazers"})
Team.create({"name"=>"Derby College Trailblazers U19 Women", "website"=>"", "youtube"=>"", "facebook"=>"", "twitter"=>"", "instagram"=>"https://www.instagram.com/derbyblazers_ba/", "tiktok"=>"", "slug"=>"derby-college-trailblazers-u19-women", "abbreviation"=>"DER", "club_id"=>25, "display_name"=>"Derby College Trailblazers"})
Team.create({"name"=>"Manchester Mystics Academy U19 Women", "website"=>"", "youtube"=>"", "facebook"=>"", "twitter"=>"", "instagram"=>"", "tiktok"=>"", "slug"=>"manchester-mystics-academy-u19-women", "abbreviation"=>"MCR", "club_id"=>16, "display_name"=>"Manchester Mystics Academy"})
Team.create({"name"=>"Nottingham Academy Wildcats U19 Women", "website"=>"https://www.nottinghamacademy.org/about-us/basketball-academy", "youtube"=>"", "facebook"=>"https://www.facebook.com/Nottingham-Academy-Wildcats-105728744241266/", "twitter"=>"https://twitter.com/AcademyCats", "instagram"=>"https://www.instagram.com/nottinghamacademywildcats", "tiktok"=>"", "slug"=>"nottingham-academy-wildcats-u19-women", "abbreviation"=>"NOT", "club_id"=>17, "display_name"=>"Nottingham Academy Wildcats"})
Team.create({"name"=>"Barking Abbey U19 Women", "website"=>"", "youtube"=>"https://www.youtube.com/channel/UCKr5EQNQFaiBZBU6URMzBaQ", "facebook"=>"https://www.facebook.com/abbeybasketball/", "twitter"=>"https://twitter.com/abbeybasketball", "instagram"=>"https://www.instagram.com/abbeynation/", "tiktok"=>"", "slug"=>"barking-abbey-u19-women", "abbreviation"=>"BA", "club_id"=>2, "display_name"=>"Barking Abbey"})
Team.create({"name"=>"John Madejski Academy U19 Men", "website"=>"", "youtube"=>"", "facebook"=>"https://www.facebook.com/RocketsJMA", "twitter"=>"https://twitter.com/JmaRockets", "instagram"=>"https://www.instagram.com/rocketsjma/", "tiktok"=>"", "slug"=>"john-madejski-academy", "abbreviation"=>"JMA", "club_id"=>28, "display_name"=>"John Madejski Academy"})
Team.create({"name"=>"The Sheffield College U19 Men", "website"=>"", "youtube"=>"", "facebook"=>"", "twitter"=>"", "instagram"=>"", "tiktok"=>"", "slug"=>"the-sheffield-college-u19-men", "abbreviation"=>"TSC", "club_id"=>39, "display_name"=>"Sheffield College"})
Team.create({"name"=>"Loughborough Riders Senior Women", "website"=>"", "youtube"=>"", "facebook"=>"", "twitter"=>"", "instagram"=>"", "tiktok"=>"", "slug"=>"loughborough-riders-senior-women", "abbreviation"=>"LOU", "club_id"=>1, "display_name"=>""})
Team.create({"name"=>"Richmond Knights U16 Boys", "website"=>"https://knightsbasketball.co.uk/", "youtube"=>"https://www.youtube.com/user/KnightsTVUK", "facebook"=>"https://en-gb.facebook.com/Knights-Basketball-293218347420952/", "twitter"=>"http://twitter.com/knightsbball09", "instagram"=>"https://www.instagram.com/knightsbball09/", "tiktok"=>"", "slug"=>"richmond-knights", "abbreviation"=>"RIC", "club_id"=>51, "display_name"=>""})
Team.create({"name"=>"BA London Lions II Senior Women", "website"=>"", "youtube"=>"", "facebook"=>"", "twitter"=>"", "instagram"=>"", "tiktok"=>"", "slug"=>"ba-london-lions-ii-senior-women", "abbreviation"=>"BA", "club_id"=>2, "display_name"=>""})
Team.create({"name"=>"Essex Rebels Senior Men (D1)", "website"=>"", "youtube"=>"", "facebook"=>"", "twitter"=>"", "instagram"=>"", "tiktok"=>"", "slug"=>"essex-rebels-senior-men-d1", "abbreviation"=>"ESX", "club_id"=>14, "display_name"=>""})
Team.create({"name"=>"City of London Academy U19 Women", "website"=>"", "youtube"=>"https://www.youtube.com/channel/UCml65L_FnAZbUnYvSRIqgRQ", "facebook"=>"facebook.com/COLA-Basketball-Academy-112571304268166/", "twitter"=>"https://twitter.com/CoLABasketball", "instagram"=>"https://www.instagram.com/cola_basketball/", "tiktok"=>"", "slug"=>"city-of-london-academy-u19-women", "abbreviation"=>"CoLA", "club_id"=>31, "display_name"=>"City of London Academy"})
Team.create({"name"=>"Copleston High School U19 Women", "website"=>"", "youtube"=>"", "facebook"=>"https://www.facebook.com/ipswichbasketballacademy/", "twitter"=>"https://twitter.com/IBA_copleston", "instagram"=>"https://www.instagram.com/IBA_copleston/", "tiktok"=>"", "slug"=>"copleston-high-school-u19-women", "abbreviation"=>"IBA", "club_id"=>33, "display_name"=>"Copleston High School"})
Team.create({"name"=>"Itchen College U19 Women", "website"=>"", "youtube"=>"", "facebook"=>"https://www.facebook.com/itchenbasketball/", "twitter"=>"https://twitter.com/itchenbball/", "instagram"=>"https://www.instagram.com/itchenbball/", "tiktok"=>"", "slug"=>"itchen-college-u19-women", "abbreviation"=>"ITC", "club_id"=>21, "display_name"=>"Itchen College"})
Team.create({"name"=>"John Madejski Academy U19 Women", "website"=>"", "youtube"=>"", "facebook"=>"https://www.facebook.com/RocketsJMA", "twitter"=>"https://twitter.com/JmaRockets", "instagram"=>"https://www.instagram.com/rocketsjma/", "tiktok"=>"", "slug"=>"john-madejski-academy-u19-women", "abbreviation"=>"JMA", "club_id"=>28, "display_name"=>"John Madejski Academy"})
Team.create({"name"=>"Oaklands College U19 Women", "website"=>"", "youtube"=>"", "facebook"=>"", "twitter"=>"", "instagram"=>"https://www.instagram.com/oaklandswolvesacademy/", "tiktok"=>"", "slug"=>"oaklands-college-u19-women", "abbreviation"=>"OAK", "club_id"=>18, "display_name"=>"Oaklands College Wolves"})
Team.create({"name"=>"American School in London U19 Women", "website"=>"", "youtube"=>"", "facebook"=>"", "twitter"=>"", "instagram"=>"", "tiktok"=>"", "slug"=>"american-school-in-london-u19-women", "abbreviation"=>"ASL", "club_id"=>42, "display_name"=>"American School in London"})
Team.create({"name"=>"Great Britain Senior Men", "website"=>"", "youtube"=>"", "facebook"=>"", "twitter"=>"", "instagram"=>"", "tiktok"=>"", "slug"=>"great-britain-senior-men", "abbreviation"=>"GBR", "club_id"=>43, "display_name"=>"GB Senior Men"})
Team.create({"name"=>"Great Britain Senior Women", "website"=>"", "youtube"=>"", "facebook"=>"", "twitter"=>"", "instagram"=>"", "tiktok"=>"", "slug"=>"great-britain-senior-women", "abbreviation"=>"GBR", "club_id"=>43, "display_name"=>"GB Senior Women"})
Team.create({"name"=>"Charnwood College U19 Women", "website"=>"https://riders.basketball/charnwood/", "youtube"=>"", "facebook"=>"https://www.facebook.com/CharnwoodBasketball/", "twitter"=>"https://twitter.com/charnwoodbball", "instagram"=>"https://www.instagram.com/charnwoodbball", "tiktok"=>"", "slug"=>"charnwood-college-u19-women", "abbreviation"=>"CHA", "club_id"=>1, "display_name"=>"Charnwood College Riders"})
Team.create({"name"=>"Team Solent Kestrels Senior Women (D1)", "website"=>"", "youtube"=>"", "facebook"=>"", "twitter"=>"", "instagram"=>"", "tiktok"=>"", "slug"=>"team-solent-kestrels-senior-women-d1", "abbreviation"=>"TSK", "club_id"=>21, "display_name"=>""})
Team.create({"name"=>"CoLA Southwark Pride U18 Women", "website"=>"", "youtube"=>"", "facebook"=>"", "twitter"=>"", "instagram"=>"", "tiktok"=>"", "slug"=>"cola-southwark-pride-u18-women", "abbreviation"=>"CoLA", "club_id"=>31, "display_name"=>""})
Team.create({"name"=>"Ipswich Basketball U18 Women", "website"=>"", "youtube"=>"", "facebook"=>"", "twitter"=>"", "instagram"=>"", "tiktok"=>"", "slug"=>"ipswich-basketball-u18-women", "abbreviation"=>"IPS", "club_id"=>33, "display_name"=>""})
Team.create({"name"=>"Manchester Mystics U16 Girls", "website"=>"http://www.manchestermagicandmystics.co.uk/", "youtube"=>"https://www.youtube.com/channel/UCKknBsqcTNK0yIKA4cdJGKw", "facebook"=>"https://www.facebook.com/ManchesterMagicBasketball/", "twitter"=>"https://twitter.com/mcr_bball", "instagram"=>"https://www.instagram.com/mcr_bball/", "tiktok"=>"", "slug"=>"manchester-magic", "abbreviation"=>"MCR", "club_id"=>16, "display_name"=>"Manchester Mystics"})
Team.create({"name"=>"Manchester Magic U18 Men", "website"=>"", "youtube"=>"", "facebook"=>"", "twitter"=>"", "instagram"=>"", "tiktok"=>"", "slug"=>"manchester-magic-u18-men", "abbreviation"=>"MCR", "club_id"=>16, "display_name"=>"Manchester Magic"})
Team.create({"name"=>"BA London Lions Senior Men (D1)", "website"=>"https://www.barkingabbeyschool.co.uk/sports-academies/basketball/", "youtube"=>"https://www.youtube.com/user/AbbeyBasketball", "facebook"=>"https://www.facebook.com/abbeybasketball/", "twitter"=>"https://twitter.com/abbeybasketball", "instagram"=>"https://www.instagram.com/abbeynation", "tiktok"=>"", "slug"=>"barking-abbey-senior-men", "abbreviation"=>"BA", "club_id"=>2, "display_name"=>"BA London Lions"})

Game.create({"date"=>Thu, 23 Sep 2021, "competition_id"=>12, "home_team_id"=>62, "away_team_id"=>45, "live_stat_url"=>"https://www.fiba.basketball/eurocupwomen/21-22/game/2309/London-Lions-Spar-Gran-Canaria", "stream_url"=>"https://www.youtube.com/watch?v=Q5Pg2-zbZvI&t=483s", "status"=>"approved", "tip_time"=>2022-03-06 19:00:00 +0000, "slug"=>"london-lions-vs-gran-canaria"})
Game.create({"date"=>Sat, 15 Jan 2022, "competition_id"=>6, "home_team_id"=>36, "away_team_id"=>71, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/BBE/1942993/", "stream_url"=>"https://www.youtube.com/watch?v=Hjt8TPtrVas", "status"=>"approved", "tip_time"=>2022-03-06 19:30:00 +0000, "slug"=>"ipswich-basketball-vs-barking-abbey"})
Game.create({"date"=>Sun, 27 Feb 2022, "competition_id"=>6, "home_team_id"=>36, "away_team_id"=>35, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/BBE/1942969/", "stream_url"=>"https://www.youtube.com/watch?v=y3oMMSrdzM0", "status"=>"approved", "tip_time"=>2022-03-06 15:00:00 +0000, "slug"=>"ipswich-basketball-senior-women-vs-worcester-wolves-senior-women"})
Game.create({"date"=>Sat, 26 Feb 2022, "competition_id"=>2, "home_team_id"=>26, "away_team_id"=>25, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/WBBL/1902158/", "stream_url"=>"https://www.youtube.com/watch?v=6JwKMBGcP9A", "status"=>"approved", "tip_time"=>2022-03-06 15:00:00 +0000, "slug"=>"sheffield-hatters-wbbl-vs-sevenoaks-suns-wbbl"})
Game.create({"date"=>Sat, 26 Feb 2022, "competition_id"=>3, "home_team_id"=>32, "away_team_id"=>28, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/BBE/1936748/", "stream_url"=>"https://www.youtube.com/watch?v=6dzcXiM7Vhw", "status"=>"approved", "tip_time"=>2022-03-06 18:15:00 +0000, "slug"=>"reading-rockets-senior-men-d1-vs-thames-valley-cavaliers-senior-men-d1"})
Game.create({"date"=>Sun, 06 Mar 2022, "competition_id"=>2, "home_team_id"=>18, "away_team_id"=>23, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/WBBL/2052061/", "stream_url"=>"https://www.youtube.com/watch?v=5aDOBzHbzb0", "status"=>"approved", "tip_time"=>2022-03-06 13:00:00 +0000, "slug"=>"cardiff-met-archers-vs-nottingham-wildcats"})
Game.create({"date"=>Fri, 04 Mar 2022, "competition_id"=>1, "home_team_id"=>10, "away_team_id"=>13, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/BBL/1907503/", "stream_url"=>"https://www.bblplayer.co.uk/content/detail/620ce23c5faff6001cdd0baa/Newcastle-Eagles-vs.-Plymouth-City-Patriots", "status"=>"approved", "tip_time"=>2022-03-06 19:30:00 +0000, "slug"=>"newcastle-eagles-vs-plymouth-city-patriots"})
Game.create({"date"=>Tue, 08 Mar 2022, "competition_id"=>1, "home_team_id"=>13, "away_team_id"=>4, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/BBL/1907548/", "stream_url"=>"https://www.bblplayer.co.uk/content/detail/620ce8d30f761c00122f3a4c/Plymouth-City-Patriots-vs.-Cheshire-Phoenix", "status"=>"approved", "tip_time"=>2022-03-06 19:00:00 +0000, "slug"=>"plymouth-city-patriots-vs-cheshire-phoenix"})
Game.create({"date"=>Wed, 09 Mar 2022, "competition_id"=>1, "home_team_id"=>1, "away_team_id"=>2, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/BBL/2056615/", "stream_url"=>"https://www.bblplayer.co.uk/content/detail/620ce9513dd9ea0019373f60/London-Lions-vs.-Bristol-Flyers", "status"=>"approved", "tip_time"=>2022-03-06 19:30:00 +0000, "slug"=>"london-lions-vs-bristol-flyers"})
Game.create({"date"=>Sat, 05 Mar 2022, "competition_id"=>18, "home_team_id"=>62, "away_team_id"=>23, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/WBBL/2064939/", "stream_url"=>"https://www.youtube.com/watch?v=8IfJP9w7ARA", "status"=>"approved", "tip_time"=>2022-03-06 14:00:00 +0000, "slug"=>"london-lions-vs-nottingham-wildcats"})
Game.create({"date"=>Sun, 06 Mar 2022, "competition_id"=>3, "home_team_id"=>29, "away_team_id"=>33, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/BBE/1936846/", "stream_url"=>"https://www.youtube.com/watch?v=udqg82XVYCg", "status"=>"approved", "tip_time"=>2022-03-06 16:15:00 +0000, "slug"=>"derby-trailblazers-vs-bradford-dragons"})
Game.create({"date"=>Sat, 08 Jan 2022, "competition_id"=>2, "home_team_id"=>18, "away_team_id"=>26, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/WBBL/1902136/", "stream_url"=>"https://www.youtube.com/watch?v=pt9u_giTkt0", "status"=>"approved", "tip_time"=>2022-03-06 15:15:00 +0000, "slug"=>"cardiff-met-archers-vs-sheffield-hatters"})
Game.create({"date"=>Fri, 21 Jan 2022, "competition_id"=>1, "home_team_id"=>13, "away_team_id"=>12, "live_stat_url"=>"", "stream_url"=>"https://www.youtube.com/watch?v=ceq3OYxnFU8", "status"=>"approved", "tip_time"=>2022-03-06 19:30:00 +0000, "slug"=>"sheffield-sharks-vs-bristol-flyers"})
Game.create({"date"=>Sun, 16 Jan 2022, "competition_id"=>2, "home_team_id"=>61, "away_team_id"=>18, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/WBBL/1902138/", "stream_url"=>"https://www.youtube.com/watch?v=PrK48UK7keI", "status"=>"approved", "tip_time"=>2022-03-06 17:00:00 +0000, "slug"=>"leicester-riders-vs-cardiff-met-archers"})
Game.create({"date"=>Sat, 15 Jan 2022, "competition_id"=>18, "home_team_id"=>22, "away_team_id"=>26, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/WBBL/1902212/", "stream_url"=>"https://www.youtube.com/watch?v=W1UrQAn3PO4", "status"=>"approved", "tip_time"=>2022-03-06 15:00:00 +0000, "slug"=>"manchester-met-mystics-vs-sheffield-hatters"})
Game.create({"date"=>Fri, 25 Feb 2022, "competition_id"=>1, "home_team_id"=>9, "away_team_id"=>12, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/BBL/1907514/", "stream_url"=>"https://www.youtube.com/watch?v=bhC0EshglSw", "status"=>"approved", "tip_time"=>2022-03-06 19:30:00 +0000, "slug"=>"sheffield-sharks-bbl-vs-surrey-scorchers-bbl"})
Game.create({"date"=>Sun, 27 Feb 2022, "competition_id"=>1, "home_team_id"=>13, "away_team_id"=>1, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/BBL/1907515/", "stream_url"=>"https://www.bblplayer.co.uk/content/detail/62043fa05d619300146a6530/Plymouth-City-Patriots-vs.-London-Lions", "status"=>"approved", "tip_time"=>2022-03-06 15:00:00 +0000, "slug"=>"plymouth-city-patriots-bbl-vs-london-lions-bbl"})
Game.create({"date"=>Sat, 26 Feb 2022, "competition_id"=>6, "home_team_id"=>35, "away_team_id"=>38, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/BBE/1943033/", "stream_url"=>"https://www.youtube.com/watch?v=CgaOS4qfRCk", "status"=>"approved", "tip_time"=>2022-03-06 16:00:00 +0000, "slug"=>"worcester-wolves-senior-women-vs-nottingham-trent-university-senior-women"})
Game.create({"date"=>Sat, 26 Feb 2022, "competition_id"=>6, "home_team_id"=>99, "away_team_id"=>37, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/BBE/1943031/", "stream_url"=>"https://www.youtube.com/watch?v=K5VkdEIKNz8", "status"=>"approved", "tip_time"=>2022-03-06 15:30:00 +0000, "slug"=>"team-solent-kestrels-senior-women-d1-vs-anglia-ruskin-university-senior-women"})
Game.create({"date"=>Sat, 05 Mar 2022, "competition_id"=>6, "home_team_id"=>35, "away_team_id"=>17, "live_stat_url"=>"", "stream_url"=>"https://www.youtube.com/watch?v=GBE4jPlJlac", "status"=>"approved", "tip_time"=>2022-03-06 16:00:00 +0000, "slug"=>"worcester-wolves-senior-women-vs-cola-southwark-pride-senior-women"})
Game.create({"date"=>Sun, 27 Feb 2022, "competition_id"=>18, "home_team_id"=>62, "away_team_id"=>22, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/WBBL/2054244/", "stream_url"=>"https://www.youtube.com/watch?v=66ihgiOJA2Q", "status"=>"approved", "tip_time"=>2022-03-06 14:15:00 +0000, "slug"=>"london-lions-wbbl-vs-manchester-met-mystics-wbbl"})
Game.create({"date"=>Wed, 02 Mar 2022, "competition_id"=>15, "home_team_id"=>11, "away_team_id"=>4, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/BBL/2056606/", "stream_url"=>"https://www.bblplayer.co.uk/content/detail/621c9cce0f761c00122f3a71/Glasgow-Rocks-vs.-Cheshire-Phoenix", "status"=>"approved", "tip_time"=>2022-03-06 19:00:00 +0000, "slug"=>"glasgow-rocks-vs-cheshire-phoenix"})
Game.create({"date"=>Fri, 04 Mar 2022, "competition_id"=>1, "home_team_id"=>11, "away_team_id"=>1, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/BBL/1907507/", "stream_url"=>"https://www.youtube.com/watch?v=hyjfL271hrk", "status"=>"approved", "tip_time"=>2022-03-06 19:00:00 +0000, "slug"=>"glasgow-rocks-vs-london-lions"})
Game.create({"date"=>Sat, 05 Mar 2022, "competition_id"=>1, "home_team_id"=>2, "away_team_id"=>8, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/BBL/1907505/", "stream_url"=>"https://www.bblplayer.co.uk/content/detail/620ce32c0f761c00122f3a49/Bristol-Flyers-vs.-Leicester-Riders", "status"=>"approved", "tip_time"=>2022-03-06 19:30:00 +0000, "slug"=>"bristol-flyers-vs-leicester-riders-2"})
Game.create({"date"=>Sun, 06 Mar 2022, "competition_id"=>1, "home_team_id"=>1, "away_team_id"=>9, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/BBL/2051554/", "stream_url"=>"https://www.bblplayer.co.uk/content/detail/620ce3b4ff7a180012f75980/London-Lions-vs.-Sheffield-Sharks", "status"=>"approved", "tip_time"=>2022-03-06 16:00:00 +0000, "slug"=>"london-lions-vs-sheffield-sharks"})
Game.create({"date"=>Sun, 06 Mar 2022, "competition_id"=>1, "home_team_id"=>5, "away_team_id"=>12, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/BBL/1907509/", "stream_url"=>"https://www.bblplayer.co.uk/content/detail/620ce42b0f761c00122f3a4a/Manchester-Giants-vs.-Surrey-Scorchers", "status"=>"approved", "tip_time"=>2022-03-06 17:00:00 +0000, "slug"=>"manchester-giants-vs-surrey-scorchers"})
Game.create({"date"=>Sun, 06 Mar 2022, "competition_id"=>1, "home_team_id"=>4, "away_team_id"=>11, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/BBL/2056607/", "stream_url"=>"https://www.bblplayer.co.uk/content/detail/620ce4dfff7a180012f75981/Cheshire-Phoenix-vs.-Glasgow-Rocks", "status"=>"approved", "tip_time"=>2022-03-06 17:30:00 +0000, "slug"=>"cheshire-phoenix-vs-glasgow-rocks"})
Game.create({"date"=>Sat, 05 Mar 2022, "competition_id"=>2, "home_team_id"=>22, "away_team_id"=>21, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/WBBL/1902163/", "stream_url"=>"https://www.youtube.com/watch?v=IQClAiU5r6I", "status"=>"approved", "tip_time"=>2022-03-06 14:00:00 +0000, "slug"=>"manchester-met-mystics-vs-gloucester-city-queens"})
Game.create({"date"=>Sun, 06 Mar 2022, "competition_id"=>18, "home_team_id"=>61, "away_team_id"=>25, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/WBBL/2060160/", "stream_url"=>"https://www.youtube.com/watch?v=GoCBdnsp6R0", "status"=>"approved", "tip_time"=>2022-03-06 16:00:00 +0000, "slug"=>"leicester-riders-vs-sevenoaks-suns"})
Game.create({"date"=>Sun, 06 Mar 2022, "competition_id"=>2, "home_team_id"=>62, "away_team_id"=>19, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/WBBL/1902166/", "stream_url"=>"https://www.youtube.com/watch?v=fLpvfCq5S9Y", "status"=>"approved", "tip_time"=>2022-03-06 15:00:00 +0000, "slug"=>"london-lions-vs-durham-palatinates-2"})
Game.create({"date"=>Sat, 15 Jan 2022, "competition_id"=>3, "home_team_id"=>7, "away_team_id"=>29, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/BBE/1936788/", "stream_url"=>"https://www.youtube.com/watch?v=XOTajPNgkvA", "status"=>"approved", "tip_time"=>2022-03-06 18:00:00 +0000, "slug"=>"team-solent-kestrels-vs-derby-trailblazers"})
Game.create({"date"=>Sun, 09 Jan 2022, "competition_id"=>3, "home_team_id"=>7, "away_team_id"=>14, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/BBE/2027582/", "stream_url"=>"https://www.youtube.com/watch?v=s1imzEZcLvY", "status"=>"approved", "tip_time"=>2022-03-06 16:00:00 +0000, "slug"=>"team-solent-kestrels-vs-barking-abbey"})
Game.create({"date"=>Sat, 08 Jan 2022, "competition_id"=>3, "home_team_id"=>15, "away_team_id"=>31, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/BBE/1936778/", "stream_url"=>"https://www.youtube.com/watch?v=uQrvcAzZKNs", "status"=>"approved", "tip_time"=>2022-03-06 15:00:00 +0000, "slug"=>"loughborough-riders-vs-nottingham-hoods"})
Game.create({"date"=>Sat, 08 Jan 2022, "competition_id"=>2, "home_team_id"=>19, "away_team_id"=>23, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/WBBL/1902133/", "stream_url"=>"https://www.youtube.com/watch?v=uIvw1BM2nRY", "status"=>"approved", "tip_time"=>2022-03-06 13:00:00 +0000, "slug"=>"durham-palatinates-vs-nottingham-wildcats"})
Game.create({"date"=>Fri, 14 Jan 2022, "competition_id"=>1, "home_team_id"=>13, "away_team_id"=>12, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/BBL/1907478/", "stream_url"=>"https://www.youtube.com/watch?v=ceq3OYxnFU8", "status"=>"approved", "tip_time"=>2022-03-06 19:30:00 +0000, "slug"=>"plymouth-city-patriots-vs-surrey-scorchers"})
Game.create({"date"=>Wed, 13 Oct 2021, "competition_id"=>11, "home_team_id"=>46, "away_team_id"=>1, "live_stat_url"=>"https://www.fiba.basketball/europecup/21-22/game/1310/Donar-Groningen-London-Lions#|tab=boxscore", "stream_url"=>"https://www.youtube.com/watch?v=_0EHHbV6Bwo", "status"=>"approved", "tip_time"=>2022-03-06 19:00:00 +0000, "slug"=>"donar-groningen-vs-london-lions"})
Game.create({"date"=>Wed, 20 Oct 2021, "competition_id"=>11, "home_team_id"=>1, "away_team_id"=>47, "live_stat_url"=>"https://www.fiba.basketball/europecup/21-22/game/2010/London-Lions-Kapfenberg-Bulls#|tab=boxscore", "stream_url"=>"https://www.youtube.com/watch?v=4O4meA0_f9E", "status"=>"approved", "tip_time"=>2022-03-06 19:00:00 +0000, "slug"=>"london-lions-vs-kapfenberg-bulls"})
Game.create({"date"=>Wed, 27 Oct 2021, "competition_id"=>11, "home_team_id"=>1, "away_team_id"=>48, "live_stat_url"=>"https://www.fiba.basketball/europecup/21-22/game/2710/London-Lions-medi-Bayreuth", "stream_url"=>"https://www.youtube.com/watch?v=_8FBTACtLAk", "status"=>"approved", "tip_time"=>2022-03-06 19:00:00 +0000, "slug"=>"london-lions-vs-medi-bayreuth"})
Game.create({"date"=>Wed, 03 Nov 2021, "competition_id"=>11, "home_team_id"=>1, "away_team_id"=>46, "live_stat_url"=>"https://www.fiba.basketball/europecup/21-22/game/0311/London-Lions-Donar-Groningen", "stream_url"=>"https://www.youtube.com/watch?v=s3VVf2y_g78", "status"=>"approved", "tip_time"=>2022-03-06 19:00:00 +0000, "slug"=>"london-lions-vs-donar-groningen"})
Game.create({"date"=>Wed, 10 Nov 2021, "competition_id"=>11, "home_team_id"=>47, "away_team_id"=>1, "live_stat_url"=>"https://www.fiba.basketball/europecup/21-22/game/1011/Kapfenberg-Bulls-London-Lions", "stream_url"=>"https://www.youtube.com/watch?v=4fH5ktmIn1E", "status"=>"approved", "tip_time"=>2022-03-06 19:00:00 +0000, "slug"=>"kapfenberg-bulls-vs-london-lions"})
Game.create({"date"=>Wed, 17 Nov 2021, "competition_id"=>11, "home_team_id"=>48, "away_team_id"=>1, "live_stat_url"=>"https://www.fiba.basketball/europecup/21-22/game/1711/medi-Bayreuth-London-Lions", "stream_url"=>"https://www.youtube.com/watch?v=qaDMs5WHSbw", "status"=>"approved", "tip_time"=>2022-03-06 19:00:00 +0000, "slug"=>"medi-bayreuth-vs-london-lions"})
Game.create({"date"=>Wed, 08 Dec 2021, "competition_id"=>11, "home_team_id"=>49, "away_team_id"=>1, "live_stat_url"=>"https://www.fiba.basketball/europecup/21-22/game/0812/London-Lions-Bahcesehir-College-", "stream_url"=>"https://www.youtube.com/watch?v=7UJqGzS_Iek", "status"=>"approved", "tip_time"=>2022-03-06 19:00:00 +0000, "slug"=>"bahcesehir-college-vs-london-lions"})
Game.create({"date"=>Sat, 08 Jan 2022, "competition_id"=>11, "home_team_id"=>50, "away_team_id"=>1, "live_stat_url"=>"https://www.fiba.basketball/europecup/21-22/game/1512/Avtodor-Saratov-London-Lions", "stream_url"=>"https://www.youtube.com/watch?v=niEjT-MQelA", "status"=>"approved", "tip_time"=>2022-03-06 19:00:00 +0000, "slug"=>"avtodor-saratov-vs-london-lions"})
Game.create({"date"=>Wed, 12 Jan 2022, "competition_id"=>11, "home_team_id"=>51, "away_team_id"=>1, "live_stat_url"=>"https://www.fiba.basketball/europecup/21-22/game/1201/London-Lions-Bakken-Bears", "stream_url"=>"https://www.youtube.com/watch?v=vt9C2oGtAb4", "status"=>"approved", "tip_time"=>2022-03-06 17:00:00 +0000, "slug"=>"bakken-bears-vs-london-lions"})
Game.create({"date"=>Thu, 30 Sep 2021, "competition_id"=>12, "home_team_id"=>45, "away_team_id"=>62, "live_stat_url"=>"https://www.fiba.basketball/eurocupwomen/21-22/game/3009/Spar-Gran-Canaria-London-Lions", "stream_url"=>"https://www.youtube.com/watch?v=mzpERpA9xFE", "status"=>"approved", "tip_time"=>2022-03-06 19:00:00 +0000, "slug"=>"gran-canaria-vs-london-lions"})
Game.create({"date"=>Wed, 20 Oct 2021, "competition_id"=>12, "home_team_id"=>62, "away_team_id"=>43, "live_stat_url"=>"https://www.fiba.basketball/eurocupwomen/21-22/game/2110/London-Lions-Zabiny-Brno", "stream_url"=>"https://www.youtube.com/watch?v=BKp6ZSmgnTI", "status"=>"approved", "tip_time"=>2022-03-06 19:00:00 +0000, "slug"=>"london-lions-vs-zabiny-brno"})
Game.create({"date"=>Wed, 27 Oct 2021, "competition_id"=>12, "home_team_id"=>62, "away_team_id"=>42, "live_stat_url"=>"https://www.fiba.basketball/eurocupwomen/21-22/game/2810/London-Lions-Castors-Braine", "stream_url"=>"https://www.youtube.com/watch?v=2oLpH2rRilU", "status"=>"approved", "tip_time"=>2022-03-06 19:00:00 +0000, "slug"=>"london-lions-vs-castors-braine"})
Game.create({"date"=>Wed, 03 Nov 2021, "competition_id"=>12, "home_team_id"=>62, "away_team_id"=>44, "live_stat_url"=>"https://www.fiba.basketball/eurocupwomen/21-22/game/0311/London-Lions-Rutronik-Stars-Keltern", "stream_url"=>"https://www.youtube.com/watch?v=iRPwp9YxkQQ", "status"=>"approved", "tip_time"=>2022-03-06 19:00:00 +0000, "slug"=>"london-lions-vs-rutronik-stars-keltern"})
Game.create({"date"=>Wed, 24 Nov 2021, "competition_id"=>12, "home_team_id"=>43, "away_team_id"=>62, "live_stat_url"=>"https://www.fiba.basketball/eurocupwomen/21-22/game/2411/Zabiny-Brno-London-Lions", "stream_url"=>"https://www.youtube.com/watch?v=bmlbyn5tjtI", "status"=>"approved", "tip_time"=>2022-03-06 19:00:00 +0000, "slug"=>"zabiny-brno-vs-london-lions"})
Game.create({"date"=>Wed, 01 Dec 2021, "competition_id"=>12, "home_team_id"=>42, "away_team_id"=>62, "live_stat_url"=>"https://www.fiba.basketball/eurocupwomen/21-22/game/0112/Castors-Braine-London-Lions", "stream_url"=>"https://www.youtube.com/watch?v=7M-spRHcEAo", "status"=>"approved", "tip_time"=>2022-03-06 19:00:00 +0000, "slug"=>"castors-braine-vs-london-lions"})
Game.create({"date"=>Sat, 08 Jan 2022, "competition_id"=>2, "home_team_id"=>22, "away_team_id"=>63, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/WBBL/1902134/", "stream_url"=>" https://www.youtube.com/watch?v=uADpg4RmXWs", "status"=>"approved", "tip_time"=>2022-03-06 14:00:00 +0000, "slug"=>"manchester-met-mystics-vs-newcastle-eagles"})
Game.create({"date"=>Sun, 02 Jan 2022, "competition_id"=>23, "home_team_id"=>29, "away_team_id"=>30, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/BBE/2027580/", "stream_url"=>"https://www.youtube.com/watch?v=IF-Dolwai2g", "status"=>"approved", "tip_time"=>2022-03-06 12:00:00 +0000, "slug"=>"derby-trailblazers-vs-team-newcastle-university"})
Game.create({"date"=>Fri, 07 Jan 2022, "competition_id"=>15, "home_team_id"=>2, "away_team_id"=>8, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/BBL/2006067/", "stream_url"=>"https://www.youtube.com/watch?v=PSnfmnDiRhc", "status"=>"approved", "tip_time"=>2022-03-06 19:30:00 +0000, "slug"=>"bristol-flyers-vs-leicester-riders"})
Game.create({"date"=>Wed, 19 Jan 2022, "competition_id"=>5, "home_team_id"=>39, "away_team_id"=>86, "live_stat_url"=>"", "stream_url"=>"https://www.youtube.com/watch?v=OqE8ysTTEYU", "status"=>"approved", "tip_time"=>2022-03-06 16:00:00 +0000, "slug"=>"sheffield-college-vs-charnwood-college-2"})
Game.create({"date"=>Sat, 05 Feb 2022, "competition_id"=>18, "home_team_id"=>61, "away_team_id"=>19, "live_stat_url"=>"", "stream_url"=>"https://www.youtube.com/watch?v=QYdqXURQ6nI", "status"=>"approved", "tip_time"=>2022-03-06 19:00:00 +0000, "slug"=>"leicester-riders-vs-durham-palatinates"})
Game.create({"date"=>Wed, 19 Jan 2022, "competition_id"=>4, "home_team_id"=>79, "away_team_id"=>83, "live_stat_url"=>"", "stream_url"=>"https://www.youtube.com/watch?v=mjTBV0hVJkA", "status"=>"approved", "tip_time"=>2022-03-06 14:00:00 +0000, "slug"=>"sheffield-college-vs-james-watt-college"})
Game.create({"date"=>Sat, 15 Jan 2022, "competition_id"=>6, "home_team_id"=>99, "away_team_id"=>70, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/BBE/1942987/", "stream_url"=>"https://www.youtube.com/watch?v=X4FFezO20go", "status"=>"approved", "tip_time"=>2022-03-06 15:30:00 +0000, "slug"=>"team-solent-kestrels-vs-bristol-flyers"})
Game.create({"date"=>Wed, 12 Jan 2022, "competition_id"=>4, "home_team_id"=>79, "away_team_id"=>40, "live_stat_url"=>"", "stream_url"=>"https://www.youtube.com/watch?v=IPT-ITYK_cs", "status"=>"approved", "tip_time"=>2022-03-06 16:00:00 +0000, "slug"=>"sheffield-college-vs-charnwood-college"})
Game.create({"date"=>Sun, 09 Jan 2022, "competition_id"=>6, "home_team_id"=>67, "away_team_id"=>69, "live_stat_url"=>"", "stream_url"=>"https://www.youtube.com/watch?v=F_bpXRLTW_M", "status"=>"approved", "tip_time"=>2022-03-06 14:00:00 +0000, "slug"=>"loughborough-riders-vs-cardiff-met-archers"})
Game.create({"date"=>Sat, 08 Jan 2022, "competition_id"=>6, "home_team_id"=>70, "away_team_id"=>35, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/BBE/1942982/", "stream_url"=>"https://www.youtube.com/watch?v=xDkKZaJ6tec", "status"=>"approved", "tip_time"=>2022-03-06 17:00:00 +0000, "slug"=>"bristol-flyers-vs-worcester-wolves"})
Game.create({"date"=>Thu, 14 Oct 2021, "competition_id"=>12, "home_team_id"=>44, "away_team_id"=>62, "live_stat_url"=>"https://www.fiba.basketball/eurocupwomen/21-22/game/1410/Rutronik-Stars-Keltern-London-Lions", "stream_url"=>"https://www.youtube.com/watch?v=cU5G9zmf-DQ", "status"=>"approved", "tip_time"=>2022-03-06 19:00:00 +0000, "slug"=>"rutronik-stars-keltern-vs-london-lions"})
Game.create({"date"=>Wed, 26 Jan 2022, "competition_id"=>11, "home_team_id"=>1, "away_team_id"=>49, "live_stat_url"=>"https://www.fiba.basketball/europecup/21-22/game/2601/Bahcesehir-College--London-Lions", "stream_url"=>"https://www.youtube.com/watch?v=tHNaxF-jhNk", "status"=>"approved", "tip_time"=>2022-03-06 19:30:00 +0000, "slug"=>"london-lions-vs-bahcesehir-college"})
Game.create({"date"=>Sat, 22 Jan 2022, "competition_id"=>13, "home_team_id"=>56, "away_team_id"=>57, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/BBE/2048964/", "stream_url"=>"https://www.youtube.com/watch?v=LBwQilt4rGU", "status"=>"approved", "tip_time"=>2022-03-06 13:15:00 +0000, "slug"=>"richmond-knights-vs-islington-panthers"})
Game.create({"date"=>Sat, 22 Jan 2022, "competition_id"=>13, "home_team_id"=>54, "away_team_id"=>58, "live_stat_url"=>"https://livestats.dcd.shared.geniussports.com/webcast/BBE/2048962/", "stream_url"=>"https://www.youtube.com/watch?v=HLwY7syEQ6U", "status"=>"approved", "tip_time"=>2022-03-06 11:00:00 +0000, "slug"=>"manchester-magic-vs-gca-haringey-angels"})
Game.create({"date"=>Sat, 22 Jan 2022, "competition_id"=>2, "home_team_id"=>23, "away_team_id"=>3, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/WBBL/1902141/", "stream_url"=>"https://www.youtube.com/watch?v=T-N5quqMI24", "status"=>"approved", "tip_time"=>2022-03-06 17:45:00 +0000, "slug"=>"nottingham-wildcats-vs-caledonia-pride"})
Game.create({"date"=>Sat, 22 Jan 2022, "competition_id"=>2, "home_team_id"=>25, "away_team_id"=>22, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/WBBL/2010552/", "stream_url"=>"https://www.youtube.com/watch?v=Zn3uDQU8HSA", "status"=>"approved", "tip_time"=>2022-03-06 19:00:00 +0000, "slug"=>"sevenoaks-suns-vs-manchester-met-mystics"})
Game.create({"date"=>Sun, 23 Jan 2022, "competition_id"=>2, "home_team_id"=>25, "away_team_id"=>20, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/WBBL/1902142/", "stream_url"=>"https://www.youtube.com/watch?v=Myl4h5LFuuI", "status"=>"approved", "tip_time"=>2022-03-06 18:00:00 +0000, "slug"=>"sevenoaks-suns-vs-essex-rebels"})
Game.create({"date"=>Sat, 29 Jan 2022, "competition_id"=>3, "home_team_id"=>29, "away_team_id"=>6, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/BBE/1936804/", "stream_url"=>"https://www.youtube.com/watch?v=RakMomN5Qj8", "status"=>"approved", "tip_time"=>2022-03-06 19:00:00 +0000, "slug"=>"derby-trailblazers-vs-hemel-storm"})
Game.create({"date"=>Sat, 29 Jan 2022, "competition_id"=>3, "home_team_id"=>15, "away_team_id"=>32, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/BBE/1936806/", "stream_url"=>"https://www.youtube.com/watch?v=rng4yjSC6ZQ", "status"=>"approved", "tip_time"=>2022-03-06 16:00:00 +0000, "slug"=>"loughborough-riders-vs-reading-rockets"})
Game.create({"date"=>Wed, 15 Dec 2021, "competition_id"=>12, "home_team_id"=>62, "away_team_id"=>41, "live_stat_url"=>"https://www.fiba.basketball/eurocupwomen/21-22/game/1512/London-Lions-Tango-Bourges", "stream_url"=>"https://www.youtube.com/watch?v=pqH5Qt0nNZU", "status"=>"approved", "tip_time"=>2022-03-06 19:00:00 +0000, "slug"=>"london-lions-vs-bourges-basket"})
Game.create({"date"=>Wed, 05 Jan 2022, "competition_id"=>12, "home_team_id"=>41, "away_team_id"=>62, "live_stat_url"=>"https://www.fiba.basketball/eurocupwomen/21-22/game/2212/Tango-Bourges-London-Lions", "stream_url"=>"https://www.youtube.com/watch?v=DJqI7sDypy4", "status"=>"approved", "tip_time"=>2022-03-06 19:00:00 +0000, "slug"=>"bourges-basket-vs-london-lions"})
Game.create({"date"=>Sun, 30 Jan 2022, "competition_id"=>17, "home_team_id"=>63, "away_team_id"=>62, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/WBBL/2035495/", "stream_url"=>"https://www.youtube.com/watch?v=v8rHzuC_MAA", "status"=>"approved", "tip_time"=>2022-03-06 11:30:00 +0000, "slug"=>"newcastle-eagles-vs-london-lions"})
Game.create({"date"=>Sun, 30 Jan 2022, "competition_id"=>14, "home_team_id"=>5, "away_team_id"=>8, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/BBL/2035494/", "stream_url"=>"https://www.youtube.com/watch?v=RH_bCTnSy4E", "status"=>"approved", "tip_time"=>2022-03-06 14:45:00 +0000, "slug"=>"manchester-giants-vs-leicester-riders"})
Game.create({"date"=>Sat, 29 Jan 2022, "competition_id"=>6, "home_team_id"=>99, "away_team_id"=>67, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/BBE/1942996/", "stream_url"=>"https://www.youtube.com/watch?v=jrA8d61qJpk", "status"=>"approved", "tip_time"=>2022-03-06 15:30:00 +0000, "slug"=>"team-solent-kestrels-vs-loughborough-riders"})
Game.create({"date"=>Sun, 23 Jan 2022, "competition_id"=>20, "home_team_id"=>30, "away_team_id"=>7, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/BBE/2027583/", "stream_url"=>"https://www.youtube.com/watch?v=RHWdjO-fo7Q", "status"=>"approved", "tip_time"=>2022-03-06 15:30:00 +0000, "slug"=>"team-newcastle-university-vs-team-solent-kestrels"})
Game.create({"date"=>Sun, 23 Jan 2022, "competition_id"=>21, "home_team_id"=>53, "away_team_id"=>99, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/BBE/2027611/", "stream_url"=>"https://www.youtube.com/watch?v=WlOqxw5FQCU", "status"=>"approved", "tip_time"=>2022-03-06 13:00:00 +0000, "slug"=>"stockport-lapwings-vs-team-solent-kestrels"})
Game.create({"date"=>Sun, 23 Jan 2022, "competition_id"=>2, "home_team_id"=>61, "away_team_id"=>62, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/WBBL/1902143/", "stream_url"=>"https://www.youtube.com/watch?v=N4jXNIFRKeU", "status"=>"approved", "tip_time"=>2022-03-06 17:30:00 +0000, "slug"=>"leicester-riders-vs-london-lions"})
Game.create({"date"=>Sat, 22 Jan 2022, "competition_id"=>13, "home_team_id"=>100, "away_team_id"=>55, "live_stat_url"=>"https://livestats.dcd.shared.geniussports.com/webcast/BBE/2048947/", "stream_url"=>"https://www.youtube.com/watch?v=Ue3rJTfNRf4", "status"=>"approved", "tip_time"=>2022-03-06 17:45:00 +0000, "slug"=>"manchester-magic-vs-sussex-storm"})
Game.create({"date"=>Sat, 22 Jan 2022, "competition_id"=>13, "home_team_id"=>101, "away_team_id"=>102, "live_stat_url"=>"https://livestats.dcd.shared.geniussports.com/webcast/BBE/2048963/", "stream_url"=>"https://www.youtube.com/watch?v=vH4ruegoLxw", "status"=>"approved", "tip_time"=>2022-03-06 15:30:00 +0000, "slug"=>"ipswich-basketball-vs-southwark-pride"})
Game.create({"date"=>Sat, 22 Jan 2022, "competition_id"=>6, "home_team_id"=>70, "away_team_id"=>67, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/BBE/1942927/", "stream_url"=>"https://www.youtube.com/watch?v=srxAnS1OuoI", "status"=>"approved", "tip_time"=>2022-03-06 12:45:00 +0000, "slug"=>"bristol-flyers-vs-loughborough-riders"})
Game.create({"date"=>Sat, 22 Jan 2022, "competition_id"=>6, "home_team_id"=>35, "away_team_id"=>64, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/BBE/1942999/", "stream_url"=>"https://www.youtube.com/watch?v=6V5NTMFIj-M", "status"=>"approved", "tip_time"=>2022-03-06 16:00:00 +0000, "slug"=>"worcester-wolves-vs-reading-rockets"})
Game.create({"date"=>Sun, 27 Feb 2022, "competition_id"=>6, "home_team_id"=>69, "away_team_id"=>17, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/BBE/1943022/", "stream_url"=>"https://www.youtube.com/watch?v=XFJVo8J1sgw", "status"=>"approved", "tip_time"=>2022-03-06 14:15:00 +0000, "slug"=>"cardiff-met-archers-senior-women-d1-vs-cola-southwark-pride-senior-women"})
Game.create({"date"=>Sat, 26 Feb 2022, "competition_id"=>6, "home_team_id"=>70, "away_team_id"=>36, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/BBE/1943021/", "stream_url"=>"https://www.youtube.com/watch?v=wZlZoj7H3R4", "status"=>"approved", "tip_time"=>2022-03-06 17:00:00 +0000, "slug"=>"bristol-academy-flyers-senior-women-vs-ipswich-basketball-senior-women"})
Game.create({"date"=>Sat, 26 Feb 2022, "competition_id"=>2, "home_team_id"=>18, "away_team_id"=>22, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/WBBL/1902161/", "stream_url"=>"https://www.youtube.com/watch?v=FT1D6wkaAXc", "status"=>"approved", "tip_time"=>2022-03-06 15:15:00 +0000, "slug"=>"cardiff-met-archers-wbbl-vs-manchester-met-mystics-wbbl"})
Game.create({"date"=>Sat, 26 Feb 2022, "competition_id"=>6, "home_team_id"=>67, "away_team_id"=>71, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/BBE/1943019/", "stream_url"=>"https://www.youtube.com/watch?v=diooaTW_Vzk", "status"=>"approved", "tip_time"=>2022-03-06 13:00:00 +0000, "slug"=>"loughborough-riders-senior-women-vs-ba-london-lions-ii-senior-women"})
Game.create({"date"=>Sun, 27 Feb 2022, "competition_id"=>3, "home_team_id"=>65, "away_team_id"=>34, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/BBE/1936779/", "stream_url"=>"https://www.youtube.com/watch?v=3YhGolQEewM", "status"=>"approved", "tip_time"=>2022-03-06 14:30:00 +0000, "slug"=>"essex-rebels-senior-men-d1-vs-leicester-warriors-senior-men-d1"})
Game.create({"date"=>Fri, 04 Mar 2022, "competition_id"=>1, "home_team_id"=>5, "away_team_id"=>2, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/BBL/1907502/", "stream_url"=>"https://www.bblplayer.co.uk/content/detail/620ce1de2a4f9a0012dafc89/Manchester-Giants-vs.-Bristol-Flyers", "status"=>"approved", "tip_time"=>2022-03-06 19:30:00 +0000, "slug"=>"manchester-giants-vs-bristol-flyers"})
Game.create({"date"=>Sat, 05 Mar 2022, "competition_id"=>3, "home_team_id"=>7, "away_team_id"=>31, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/BBE/1936851/", "stream_url"=>"https://www.youtube.com/watch?v=XsTyrFmOpCw", "status"=>"approved", "tip_time"=>2022-03-06 18:00:00 +0000, "slug"=>"team-solent-kestrels-vs-nottingham-hoods"})
Game.create({"date"=>Sat, 05 Mar 2022, "competition_id"=>6, "home_team_id"=>67, "away_team_id"=>36, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/BBE/1943028/", "stream_url"=>"https://www.youtube.com/watch?v=uUj6SFMV5ac", "status"=>"approved", "tip_time"=>2022-03-06 14:00:00 +0000, "slug"=>"loughborough-riders-vs-ipswich-basketball"})
Game.create({"date"=>Sun, 06 Mar 2022, "competition_id"=>3, "home_team_id"=>7, "away_team_id"=>65, "live_stat_url"=>"https://fibalivestats.dcd.shared.geniussports.com/u/BBE/1936844/", "stream_url"=>"https://www.youtube.com/watch?v=Yh1WFLJddNA", "status"=>"approved", "tip_time"=>2022-03-06 14:00:00 +0000, "slug"=>"team-solent-kestrels-vs-essex-rebels"})

#1 London Lions BBL
Membership.create({"team_id"=>1, "competition_id"=>5})
Membership.create({"team_id"=>1, "competition_id"=>7})
Membership.create({"team_id"=>1, "competition_id"=>10})
Membership.create({"team_id"=>1, "competition_id"=>13})
Membership.create({"team_id"=>1, "competition_id"=>21})

#2 Newcastle Eagles BBL
Membership.create({"team_id"=>2, "competition_id"=>5})
Membership.create({"team_id"=>2, "competition_id"=>7})
Membership.create({"team_id"=>2, "competition_id"=>10})
Membership.create({"team_id"=>2, "competition_id"=>21})

#3 Sheffield Sharks BBL
Membership.create({"team_id"=>3, "competition_id"=>5})
Membership.create({"team_id"=>3, "competition_id"=>7})
Membership.create({"team_id"=>3, "competition_id"=>10})
Membership.create({"team_id"=>3, "competition_id"=>21})

#4 Surrey Scorchers BBL
Membership.create({"team_id"=>4, "competition_id"=>5})
Membership.create({"team_id"=>4, "competition_id"=>7})
Membership.create({"team_id"=>4, "competition_id"=>10})
Membership.create({"team_id"=>4, "competition_id"=>21})

#5 Team Solent Kestrels Senior Men (D1)
Membership.create({"team_id"=>5, "competition_id"=>4})
Membership.create({"team_id"=>5, "competition_id"=>7})
Membership.create({"team_id"=>5, "competition_id"=>12})
Membership.create({"team_id"=>5, "competition_id"=>20})

#6 Thames Valley Cavaliers Senior Men (D1)
Membership.create({"team_id"=>6, "competition_id"=>4})
Membership.create({"team_id"=>6, "competition_id"=>7})
Membership.create({"team_id"=>6, "competition_id"=>12})
Membership.create({"team_id"=>6, "competition_id"=>20})

#7 University of East London
Membership.create({"team_id"=>7, "competition_id"=>14})

#8 Sheffield Hatters WBBL
Membership.create({"team_id"=>8, "competition_id"=>1})
Membership.create({"team_id"=>8, "competition_id"=>2})
Membership.create({"team_id"=>8, "competition_id"=>3})
Membership.create({"team_id"=>8, "competition_id"=>9})

#9 Oaklands Wolves WBBL
Membership.create({"team_id"=>9, "competition_id"=>1})
Membership.create({"team_id"=>9, "competition_id"=>2})
Membership.create({"team_id"=>9, "competition_id"=>3})
Membership.create({"team_id"=>9, "competition_id"=>9})

#10 Sevenoaks Suns WBBL
Membership.create({"team_id"=>10, "competition_id"=>1})
Membership.create({"team_id"=>10, "competition_id"=>2})
Membership.create({"team_id"=>10, "competition_id"=>3})
Membership.create({"team_id"=>10, "competition_id"=>9})

#11 Worthing Thunder Senior Men (D1)
Membership.create({"team_id"=>11, "competition_id"=>4})
Membership.create({"team_id"=>11, "competition_id"=>12})
Membership.create({"team_id"=>11, "competition_id"=>20})


#12 Derby Trailblazers Senior Men (D1)
Membership.create({"team_id"=>12, "competition_id"=>4})
Membership.create({"team_id"=>12, "competition_id"=>7})
Membership.create({"team_id"=>12, "competition_id"=>12})
Membership.create({"team_id"=>12, "competition_id"=>20})

#13 Hemel Storm Senior Men (D1)
Membership.create({"team_id"=>13, "competition_id"=>4})
Membership.create({"team_id"=>13, "competition_id"=>7})
Membership.create({"team_id"=>13, "competition_id"=>12})
Membership.create({"team_id"=>13, "competition_id"=>20})

#14 Loughborough Riders Senior Men (D1)
Membership.create({"team_id"=>14, "competition_id"=>4})
Membership.create({"team_id"=>14, "competition_id"=>12})
Membership.create({"team_id"=>14, "competition_id"=>20})

#15 CoLA Southwark Pride Senior Women
Membership.create({"team_id"=>15, "competition_id"=>6})
Membership.create({"team_id"=>15, "competition_id"=>11})


#16 Manchester Met Mystics WBBL
Membership.create({"team_id"=>16, "competition_id"=>1})
Membership.create({"team_id"=>16, "competition_id"=>2})
Membership.create({"team_id"=>16, "competition_id"=>3})
Membership.create({"team_id"=>16, "competition_id"=>9})

#17 Cardiff Met Archers WBBL
Membership.create({"team_id"=>17, "competition_id"=>1})
Membership.create({"team_id"=>17, "competition_id"=>2})
Membership.create({"team_id"=>17, "competition_id"=>3})
Membership.create({"team_id"=>17, "competition_id"=>9})


#18 Gloucester City Queens
Membership.create({"team_id"=>18, "competition_id"=>1})
Membership.create({"team_id"=>18, "competition_id"=>2})
Membership.create({"team_id"=>18, "competition_id"=>3})
Membership.create({"team_id"=>18, "competition_id"=>9})

#19 Leicester Riders BBL
Membership.create({"team_id"=>19, "competition_id"=>5})
Membership.create({"team_id"=>19, "competition_id"=>7})
Membership.create({"team_id"=>19, "competition_id"=>10})
Membership.create({"team_id"=>19, "competition_id"=>21})

#20 Bristol Flyers BBL
Membership.create({"team_id"=>20, "competition_id"=>5})
Membership.create({"team_id"=>20, "competition_id"=>7})
Membership.create({"team_id"=>20, "competition_id"=>10})
Membership.create({"team_id"=>20, "competition_id"=>21})

#21 Cheshire Phoenix BBL
Membership.create({"team_id"=>21, "competition_id"=>5})
Membership.create({"team_id"=>21, "competition_id"=>7})
Membership.create({"team_id"=>21, "competition_id"=>10})
Membership.create({"team_id"=>21, "competition_id"=>21})

#22 Glasgow Rocks BBL
Membership.create({"team_id"=>22, "competition_id"=>5})
Membership.create({"team_id"=>22, "competition_id"=>7})
Membership.create({"team_id"=>22, "competition_id"=>10})
Membership.create({"team_id"=>22, "competition_id"=>21})

#23 Durham Palatinates WBBL
Membership.create({"team_id"=>23, "competition_id"=>1})
Membership.create({"team_id"=>23, "competition_id"=>2})
Membership.create({"team_id"=>23, "competition_id"=>3})
Membership.create({"team_id"=>23, "competition_id"=>9})

#24 Caledonia Pride WBBL
Membership.create({"team_id"=>24, "competition_id"=>1})
Membership.create({"team_id"=>24, "competition_id"=>2})
Membership.create({"team_id"=>24, "competition_id"=>3})
Membership.create({"team_id"=>24, "competition_id"=>9})

#25 Manchester Giants BBL
Membership.create({"team_id"=>25, "competition_id"=>5})
Membership.create({"team_id"=>25, "competition_id"=>7})
Membership.create({"team_id"=>25, "competition_id"=>10})
Membership.create({"team_id"=>25, "competition_id"=>21})

#26 Castors Braine
Membership.create({"team_id"=>26, "competition_id"=>8})

#27 Basketball Wales Senior Men
Membership.create({"team_id"=>27, "competition_id"=>7})

#28 Bourges Basket
Membership.create({"team_id"=>28, "competition_id"=>8})

#29 Ipswich Basketball Senior Women
Membership.create({"team_id"=>29, "competition_id"=>6})
Membership.create({"team_id"=>29, "competition_id"=>11})

#30 Nottingham Hoods Senior Men (D1)
Membership.create({"team_id"=>30, "competition_id"=>4})
Membership.create({"team_id"=>30, "competition_id"=>12})
Membership.create({"team_id"=>30, "competition_id"=>20})

#31 Team Newcastle University Senior Men (D1)
Membership.create({"team_id"=>31, "competition_id"=>4})
Membership.create({"team_id"=>31, "competition_id"=>12})
Membership.create({"team_id"=>31, "competition_id"=>20})

#32 Reading Rockets Senior Men (D1)
Membership.create({"team_id"=>32, "competition_id"=>4})
Membership.create({"team_id"=>32, "competition_id"=>12})
Membership.create({"team_id"=>32, "competition_id"=>20})

#33 Kapfenberg Bulls
Membership.create({"team_id"=>33, "competition_id"=>13})

#34 Bradford Dragons Senior Men (D1)
Membership.create({"team_id"=>34, "competition_id"=>4})
Membership.create({"team_id"=>34, "competition_id"=>12})
Membership.create({"team_id"=>34, "competition_id"=>20})


#35 Leicester Warriors Senior Men (D1)
Membership.create({"team_id"=>35, "competition_id"=>4})
Membership.create({"team_id"=>35, "competition_id"=>12})
Membership.create({"team_id"=>35, "competition_id"=>20})

#36 Oaklands Wolves Senior Men (D1)
Membership.create({"team_id"=>36, "competition_id"=>4})
Membership.create({"team_id"=>36, "competition_id"=>12})
Membership.create({"team_id"=>36, "competition_id"=>20})

#37 Nottingham Trent University Senior Women
Membership.create({"team_id"=>37, "competition_id"=>6})
Membership.create({"team_id"=>37, "competition_id"=>11})

#38 Charnwood College U19 Men
Membership.create({"team_id"=>38, "competition_id"=>15})

#39 Medi Bayreuth
Membership.create({"team_id"=>39, "competition_id"=>13})

#40 Zabiny Brno
Membership.create({"team_id"=>40, "competition_id"=>8})

#41 Sheffield College U19 Women
Membership.create({"team_id"=>41, "competition_id"=>17})

#42 Rutronik Stars Keltern
Membership.create({"team_id"=>42, "competition_id"=>8})

#43 Gran Canaria
Membership.create({"team_id"=>43, "competition_id"=>8})

#44 Avtodor Saratov
Membership.create({"team_id"=>44, "competition_id"=>13})

#45 London Lions WBBL
Membership.create({"team_id"=>45, "competition_id"=>1})
Membership.create({"team_id"=>45, "competition_id"=>2})
Membership.create({"team_id"=>45, "competition_id"=>3})
Membership.create({"team_id"=>45, "competition_id"=>8})
Membership.create({"team_id"=>45, "competition_id"=>9})

#46 Bakken Bears
Membership.create({"team_id"=>46, "competition_id"=>13})

#47 Bahcesehir College
Membership.create({"team_id"=>47, "competition_id"=>13})

#48 Donar Groningen
Membership.create({"team_id"=>48, "competition_id"=>13})

#49 Cardiff Met Archers Senior Women (D1)
Membership.create({"team_id"=>49, "competition_id"=>6})
Membership.create({"team_id"=>49, "competition_id"=>11})

#50 Sussex Storm U18 Men
Membership.create({"team_id"=>50, "competition_id"=>16})



#51 Thames Valley Cavaliers Senior Women
Membership.create({"team_id"=>51, "competition_id"=>6})
Membership.create({"team_id"=>51, "competition_id"=>11})

#52 Essex Rebels WBBL
Membership.create({"team_id"=>52, "competition_id"=>5})
Membership.create({"team_id"=>52, "competition_id"=>7})
Membership.create({"team_id"=>52, "competition_id"=>10})
Membership.create({"team_id"=>52, "competition_id"=>21})

#53 Reading Rockets Senior Women (D1)
Membership.create({"team_id"=>53, "competition_id"=>6})
Membership.create({"team_id"=>53, "competition_id"=>11})

#54 Newcastle Eagles WBBL
Membership.create({"team_id"=>54, "competition_id"=>5})
Membership.create({"team_id"=>54, "competition_id"=>7})
Membership.create({"team_id"=>54, "competition_id"=>10})
Membership.create({"team_id"=>54, "competition_id"=>21})

#55 Stockport Lapwings
Membership.create({"team_id"=>55, "competition_id"=>11})

#56 James Watt College
Membership.create({"team_id"=>56, "competition_id"=>15})

#57 Plymouth City Patriots BBL
Membership.create({"team_id"=>57, "competition_id"=>5})
Membership.create({"team_id"=>57, "competition_id"=>7})
Membership.create({"team_id"=>57, "competition_id"=>10})
Membership.create({"team_id"=>57, "competition_id"=>21})

#59 Falkirk Fury Senior Men
Membership.create({"team_id"=>59, "competition_id"=>7})

#58 Bristol Academy Flyers Senior Women
Membership.create({"team_id"=>58, "competition_id"=>6})
Membership.create({"team_id"=>58, "competition_id"=>11})

#60 Islington Panthers U16 Boys
Membership.create({"team_id"=>60, "competition_id"=>16})

#61 Leicester Riders WBBL
Membership.create({"team_id"=>61, "competition_id"=>5})
Membership.create({"team_id"=>61, "competition_id"=>7})
Membership.create({"team_id"=>61, "competition_id"=>10})
Membership.create({"team_id"=>61, "competition_id"=>21})

#62 GCA Haringey Angels U16 Girls
Membership.create({"team_id"=>62, "competition_id"=>16})

#63 Nottingham Wildcats
Membership.create({"team_id"=>63, "competition_id"=>5})
Membership.create({"team_id"=>63, "competition_id"=>7})
Membership.create({"team_id"=>63, "competition_id"=>10})
Membership.create({"team_id"=>63, "competition_id"=>21})

#64 Anglia Ruskin University Senior Women
Membership.create({"team_id"=>64, "competition_id"=>6})
Membership.create({"team_id"=>64, "competition_id"=>11})

#66 Worcester Wolves Senior Women
Membership.create({"team_id"=>66, "competition_id"=>6})
Membership.create({"team_id"=>66, "competition_id"=>11})

#65 Canterbury High School
Membership.create({"team_id"=>65, "competition_id"=>15})


#67 Oaklands College U19 Men
Membership.create({"team_id"=>67, "competition_id"=>15})

#68 Newcastle Eagles Academy U19 Men
Membership.create({"team_id"=>68, "competition_id"=>15})

#69 Itchen College U19 Men
Membership.create({"team_id"=>69, "competition_id"=>15})

#70 Copleston High School U19 Men
Membership.create({"team_id"=>70, "competition_id"=>15})

#71 City of London Academy U19 Men
Membership.create({"team_id"=>71, "competition_id"=>15})

#72 Barking Abbey U19 Men
Membership.create({"team_id"=>72, "competition_id"=>15})


#73 SGS College
Membership.create({"team_id"=>73, "competition_id"=>15})

#74 Myerscough U19 Men
Membership.create({"team_id"=>74, "competition_id"=>15})

#75 James Watt College-BMet U19 Men
Membership.create({"team_id"=>75, "competition_id"=>15})

#76 Manchester Magic Academy U19 Men
Membership.create({"team_id"=>76, "competition_id"=>15})

#77 Derby College Trailblazers U19 Men
Membership.create({"team_id"=>77, "competition_id"=>15})

#78 Derby College Trailblazers U19 Women
Membership.create({"team_id"=>78, "competition_id"=>17})

#79 Manchester Mystics Academy U19 Women
Membership.create({"team_id"=>79, "competition_id"=>17})

#80 Nottingham Academy Wildcats U19 Women
Membership.create({"team_id"=>80, "competition_id"=>17})

#81 Barking Abbey U19 Women
Membership.create({"team_id"=>81, "competition_id"=>17})

#82 John Madejski Academy U19 Men
Membership.create({"team_id"=>82, "competition_id"=>15})

#83 The Sheffield College U19 Men
Membership.create({"team_id"=>83, "competition_id"=>15})

#84 Loughborough Riders Senior Women
Membership.create({"team_id"=>84, "competition_id"=>6})
Membership.create({"team_id"=>84, "competition_id"=>11})

#85 Richmond Knights U16 Boys
Membership.create({"team_id"=>85, "competition_id"=>16})

#86 BA London Lions II Senior Women
Membership.create({"team_id"=>86, "competition_id"=>6})
Membership.create({"team_id"=>86, "competition_id"=>11})

#87 Essex Rebels Senior Men (D1)
Membership.create({"team_id"=>87, "competition_id"=>4})
Membership.create({"team_id"=>87, "competition_id"=>12})
Membership.create({"team_id"=>87, "competition_id"=>20})

#88 City of London Academy U19 Women
Membership.create({"team_id"=>88, "competition_id"=>17})

#89 Copleston High School U19 Women
Membership.create({"team_id"=>89, "competition_id"=>17})

#90 Itchen College U19 Women
Membership.create({"team_id"=>90, "competition_id"=>17})

#91 John Madejski Academy U19 Women
Membership.create({"team_id"=>91, "competition_id"=>17})

#92 Oaklands College U19 Women
Membership.create({"team_id"=>92, "competition_id"=>17})

#93 American School in London U19 Women
Membership.create({"team_id"=>93, "competition_id"=>17})

#94 Great Britain Senior Men
Membership.create({"team_id"=>94, "competition_id"=>19})

#95 Great Britain Senior Women
Membership.create({"team_id"=>95, "competition_id"=>18})

#96 Charnwood College U19 Women
Membership.create({"team_id"=>96, "competition_id"=>17})

#97 Team Solent Kestrels Senior Women (D1)
Membership.create({"team_id"=>97, "competition_id"=>6})
Membership.create({"team_id"=>97, "competition_id"=>11})


#98 CoLA Southwark Pride U18 Women
Membership.create({"team_id"=>98, "competition_id"=>16})



#99 Ipswich Basketball U18 Women
Membership.create({"team_id"=>99, "competition_id"=>16})

#100 Manchester Mystics U16 Girls
Membership.create({"team_id"=>100, "competition_id"=>16})

#101 Manchester Magic U18 Men
Membership.create({"team_id"=>101, "competition_id"=>16})

#102 BA London Lions Senior Men (D1)
Membership.create({"team_id"=>104, "competition_id"=>4})
Membership.create({"team_id"=>104, "competition_id"=>12})
Membership.create({"team_id"=>104, "competition_id"=>20})

