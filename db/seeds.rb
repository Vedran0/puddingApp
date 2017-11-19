# Pudding.create(name: "Vedran", email: "vedranmijatovic0@gmail.com", password: "password1234")
# Pudding.create(name: "Elizabeta", email: "el.antunovic0@gmail.com", password: "password1234")
# puts "Pudding created"

# Pudding.all.each do |pudding|
#   Setting.create(pudding_id: pudding.id)
# end
# puts "Settings created"

# Question.create(text: "Kako se zove cvijet koji se u proljeće belji?",
#                 answer: "betičica",
#                 resource: "pages",
#                 path_name: "",
#                 date_available: DateTime.new(2017, 9, 25, 0, 0, 0))
# Question.create(text: "Koji ti je najdraži dan u tjednu?",
#                 answer: "doručkovo",
#                 resource: "songs",
#                 path_name: "jukebox",
#                 date_available: DateTime.new(2017, 9, 25, 0, 0, 0))
# Question.create(text: "Koja ti je najdraža životinja?",
#                 answer: "vedran",
#                 resource: "beers",
#                 path_name: "tasting_center",
#                 date_available: DateTime.new(2017, 9, 26, 0, 0, 0))
# Question.create(text: "Njegov nadimak?",
#                 answer: "vektor",
#                 resource: "post_its",
#                 path_name: "notes",
#                 date_available: DateTime.new(2017, 9, 26, 0, 0, 0))
# Question.create(text: "Ključ za Vedranovo otvaranje?",
#                 answer: "pivo",
#                 resource: "tournaments",
#                 path_name: "tournaments",
#                 date_available: DateTime.new(2017, 9, 27, 0, 0, 0))
# Question.create(text: "Što imaju zajedničko koza i konobar iz barce?",
#                 answer: "glupi su",
#                 resource: "things",
#                 path_name: "bucketlist",
#                 date_available: DateTime.new(2017, 9, 28, 0, 0, 0))
# Question.create(text: "Koje boje je torba?",
#                 answer: "plave",
#                 resource: "settings",
#                 path_name: "settings",
#                 date_available: DateTime.new(2017, 9, 29, 0, 0, 0))
# puts "Questions created"

# Question.all do |question|
#   Answered.create(pudding_id: Pudding.first, question_id: question.id)
# end

# Song.create(name: "Nuttin A Go So", url: "https://www.youtube.com/watch?v=0TnVU-Q0-Xs")
# Song.create(name: "November Rain", url: "https://www.youtube.com/watch?v=8SbUC-UaAxE")
# Song.create(name: "Bum Bum Bum", url: "https://www.youtube.com/watch?v=llyiQ4I-mcQ")
# Song.create(name: "Romeo and Juliet", url: "https://www.youtube.com/watch?v=mxfjSnMN88U")
# Song.create(name: "Pet Semetary", url: "https://www.youtube.com/watch?v=G6m0Rc1KW0I")
# Song.create(name: "So Lonely", url: "https://www.youtube.com/watch?v=MX6MvV8cbh8")
# Song.create(name: "Frka", url: "https://www.youtube.com/watch?v=2pfLE5YJ1Fo")
# Song.create(name: "Highway to Hell", url: "https://www.youtube.com/watch?v=SgLy-6yj1Ws")
# Song.create(name: "Fairytale of New Yoork", url: "https://www.youtube.com/watch?v=j9jbdgZidu8")
# Song.create(name: "Earned It", url: "https://www.youtube.com/watch?v=waU75jdUnYw")
# Song.create(name: "Magnets", url: "https://www.youtube.com/watch?v=b_KfnGBtVeA")
# Song.create(name: "Galway Girl", url: "https://www.youtube.com/watch?v=87gWaABqGYs")
# Song.create(name: "Oops oh my", url: "https://www.youtube.com/watch?v=Hb37Nh_Sg4g")
# Song.create(name: "Crazy", url: "https://www.youtube.com/watch?v=NMNgbISmF4I")
# Song.create(name: "Again", url: "https://www.youtube.com/watch?v=eW2qlKa6oHw")
# Song.create(name: "Chamber", url: "https://www.youtube.com/watch?v=jAHlQ77lm10")
# Song.create(name: "Rose Tatto", url: "https://www.youtube.com/watch?v=9d8SzG4FPyM")
# Song.create(name: "Honey", url: "https://www.youtube.com/watch?v=753_mUwbOJ4")
# Song.create(name: "Escape", url: "https://www.youtube.com/watch?v=TazHNpt6OTo")
# puts "Songs created"

# PatchNote.create(version: "version 1.0.0",
#                 description: "<p>Wellcome to PuddingApp!!</p><p>Here you will be informed of all recent fixes, changes and new features of our small application.</p><p>Enjoy your stay :)</p>")
# puts "Patch Note created"

# PatchNote.create(version: "version 1.1.2",
#                 description: "<p>Here are our new changes, i hope you like it!</p><p>★ New <a class='in_text-link' href='/tasting_center'>beer types</a> added: <i>Dark Beer</i> and <i>Red Beer</i> so we can drink them all!.</p><p>★ Now you can rewind time and see the song of any day you want in our JukeBox. The <a class='in_text-link' href='/time_travel'>time travel</a> is reaaaal!!</p><p>★ You love polka dot! You just don't know it yet. Try out new <a class='in_text-link' href='/settings'>background patterns</a> called \"Polka Dot\"</p>")
# puts "Patch Note created"

PatchNote.create(version: "version TODO",
                description: "<p>Changes are good!</p>
                <p>★ Changed color of error text.</p>
                <p>★ Added filter to bucketlist</p>
                <p>★ Redesigned \"Time Travel\" page controls</p>
                <p>★ Finaly fixed time travel date picking</p>
                <p>★ Fixed \"Play Random\" button bug</p>")
puts "Patch Note created"