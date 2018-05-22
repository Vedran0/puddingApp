Pudding.create(name: "Vedran", email: "vedranmijatovic0@gmail.com", password: "password1234")
Pudding.create(name: "Elizabeta", email: "el.antunovic0@gmail.com", password: "password1234")
puts "Pudding created"

Pudding.all.each do |pudding|
  Setting.create(pudding_id: pudding.id)
end
puts "Settings created"

Question.create(text: "Kako se zove cvijet koji se u proljeće belji?",
                answer: "betičica",
                resource: "pages",
                path_name: "",
                date_available: DateTime.new(2017, 9, 25, 0, 0, 0))
Question.create(text: "Koji ti je najdraži dan u tjednu?",
                answer: "doručkovo",
                resource: "songs",
                path_name: "jukebox",
                date_available: DateTime.new(2017, 9, 25, 0, 0, 0))
Question.create(text: "Koja ti je najdraža životinja?",
                answer: "vedran",
                resource: "beers",
                path_name: "tasting_center",
                date_available: DateTime.new(2017, 9, 26, 0, 0, 0))
Question.create(text: "Njegov nadimak?",
                answer: "vektor",
                resource: "post_its",
                path_name: "notes",
                date_available: DateTime.new(2017, 9, 26, 0, 0, 0))
Question.create(text: "Ključ za Vedranovo otvaranje?",
                answer: "pivo",
                resource: "tournaments",
                path_name: "tournaments",
                date_available: DateTime.new(2017, 9, 27, 0, 0, 0))
Question.create(text: "Što imaju zajedničko koza i konobar iz barce?",
                answer: "glupi su",
                resource: "things",
                path_name: "bucketlist",
                date_available: DateTime.new(2017, 9, 28, 0, 0, 0))
Question.create(text: "Koje boje je torba?",
                answer: "plave",
                resource: "settings",
                path_name: "settings",
                date_available: DateTime.new(2017, 9, 29, 0, 0, 0))
puts "Questions created"

Question.all do |question|
  Answered.create(pudding_id: Pudding.first, question_id: question.id)
end

Song.create(name: "Nuttin A Go So", url: "https://www.youtube.com/watch?v=0TnVU-Q0-Xs")
Song.create(name: "November Rain", url: "https://www.youtube.com/watch?v=8SbUC-UaAxE")
Song.create(name: "Bum Bum Bum", url: "https://www.youtube.com/watch?v=llyiQ4I-mcQ")
Song.create(name: "Romeo and Juliet", url: "https://www.youtube.com/watch?v=mxfjSnMN88U")
Song.create(name: "Pet Semetary", url: "https://www.youtube.com/watch?v=G6m0Rc1KW0I")
Song.create(name: "So Lonely", url: "https://www.youtube.com/watch?v=MX6MvV8cbh8")
Song.create(name: "Frka", url: "https://www.youtube.com/watch?v=2pfLE5YJ1Fo")
Song.create(name: "Highway to Hell", url: "https://www.youtube.com/watch?v=SgLy-6yj1Ws")
Song.create(name: "Fairytale of New Yoork", url: "https://www.youtube.com/watch?v=j9jbdgZidu8")
Song.create(name: "Earned It", url: "https://www.youtube.com/watch?v=waU75jdUnYw")
Song.create(name: "Magnets", url: "https://www.youtube.com/watch?v=b_KfnGBtVeA")
Song.create(name: "Galway Girl", url: "https://www.youtube.com/watch?v=87gWaABqGYs")
Song.create(name: "Oops oh my", url: "https://www.youtube.com/watch?v=Hb37Nh_Sg4g")
Song.create(name: "Crazy", url: "https://www.youtube.com/watch?v=NMNgbISmF4I")
Song.create(name: "Again", url: "https://www.youtube.com/watch?v=eW2qlKa6oHw")
Song.create(name: "Chamber", url: "https://www.youtube.com/watch?v=jAHlQ77lm10")
Song.create(name: "Rose Tatto", url: "https://www.youtube.com/watch?v=9d8SzG4FPyM")
Song.create(name: "Honey", url: "https://www.youtube.com/watch?v=753_mUwbOJ4")
Song.create(name: "Escape", url: "https://www.youtube.com/watch?v=TazHNpt6OTo")
puts "Songs created"

PatchNote.create(version: "version 1.0.0",
                description: "<p>Wellcome to PuddingApp!!</p><p>Here you will be informed of all recent fixes, changes and new features of our small application.</p><p>Enjoy your stay :)</p>")
puts "Patch Note created"

PatchNote.create(version: "version 1.1.2",
                description: "<p>Here are our new changes, i hope you like it!</p><p>★ New <a class='in_text-link' href='/tasting_center'>beer types</a> added: <i>Dark Beer</i> and <i>Red Beer</i> so we can drink them all!.</p><p>★ Now you can rewind time and see the song of any day you want in our JukeBox. The <a class='in_text-link' href='/time_travel'>time travel</a> is reaaaal!!</p><p>★ You love polka dot! You just don't know it yet. Try out new <a class='in_text-link' href='/settings'>background patterns</a> called \"Polka Dot\"</p>")
puts "Patch Note created"

PatchNote.create(version: "version 1.3.6",
                description: "<p>Behold, the goodness of improvements!</p>
                <p>★ Changed color of <a class='in_text-link' href='/500'>error text</a> on error pages.</p>
                <p>★ Added filter to <a class='in_text-link' href='/bucketlist'>bucketlist</a> to differentiate \"done\" from \"to do\".</p>
                <p>★ Redesigned <a class='in_text-link' href='/time_travel'>time travel</a> page controls (always striving for perfection).</p>
                <p>★ Finaly fixed <a class='in_text-link' href='/time_travel'>time travel</a> date picking so now you can travel to desired time in two clicks! Ha!</p>
                <p>★ Fixed <a class='in_text-link' href='/jukebox'>play random</a> button bug becouse bugs are mean, bugs are bad.</p>
                <p>★ Added <a class='in_text-link' href='/settings'>madras pink</a> background pattern which will be available for limited time.</p>")
puts "Patch Note created"

PatchNote.create(version: "version 1.4.9",
                description: "<p>Changes are GOOD!</p>
                <p>★ Added new page for <a class='in_text-link' href='/holidays'>Holidays</a> so you don't miss them again.</p>
                <p>★ Added timestamps to <a class='in_text-link' href='/notes'>notes</a> (on hover) becouse you asked for it.</p>
                <p>★ Changed <a class='in_text-link' href='/tasting_center'>beer</a> ratings for us <a class='in_text-link' href='https://media2.giphy.com/media/xT0xeseEWv7alfGrDy/giphy.gif' target='_blank'>indecisive</a> folks</p>
                <p>★ Implemented <a class='in_text-link' href='/jukebox'>song of the day</a> counter becouse we are so curious about how many times Again was again.</p>
                <p>★ And as you already saw \"madras pink\" background is removed as promised.</p>")
puts "Patch Note created"

Question.create(text: "Festival svih festivala?",
                answer: "love festival",
                resource: "holidays",
                path_name: "holidays",
                date_available: DateTime.new(2018, 1, 27, 0, 0, 0))

Holiday.create(name: "Rakunovo", message: "Sretno Rakunovooo!!", date: Date.new.change(year: 2000, month: 2, day: 16))
Holiday.create(name: "Love Festival", message: "The power of love!", date: Date.new.change(year: 2000, month: 6, day: 6))
Holiday.create(name: "Redemption Day", message: "Redemption daaaay!", date: Date.new.change(year: 2000, month: 9, day: 26))
Holiday.create(name: "Story Telling", message: "Let me tell you a story...", date: Date.new.change(year: 2000, month: 10, day: 1))
Holiday.create(name: "Boom Boom Day", message: "I want you in my room...", date: Date.new.change(year: 2000, month: 11, day: 25))
Holiday.create(name: "GIF Day", message: "Send me some GIFs", date: Date.new.change(year: 2000, month: 12, day: 9))

PatchNote.create(version: "version 1.5.13",
                description: "<p>Wait, what!? A new patch again!?</p>
                <p>★ Finaly fixed info window positions!! Weeee.</p>
                <p>★ Removed hints from <a class='in_text-link' data-method='delete' href='/puddings/sign_out'>login form</a> becouse you don't need it anymore.</p>
                <p>★ Added filters to <a class='in_text-link' href='/tasting_center'>TastingCenter</a> and now it's cooler.</p>
                <p>★ Introducing new set of <a class='in_text-link' href='/settings'>backgrounds</a> and there is a green one in the set ;)</p>
                <p>★ And navigation links are active links now.</p>")
puts "Patch Note created"

PatchNote.create(version: "version 1.7.15",
                description: "<p>Something new, something wild...</p>
                <p>★ Added autocomplete for match places to help you out.</p>
                <p>★ Created by place statistics on <a class='in_text-link' href='/tournaments'>Tournaments</a> page so that you know where not to play again.</p>
                <p>★ Now we are shuffling songs twice before picking <a class='in_text-link' href='/song-of-the-day'>Song of the Day</a> to add more randomization.</p>
                <p>★ And, yes, you saw well, <a class='in_text-link' href='/song-of-the-day'>Song of the Day</a> page is a thing now.</p>")
puts "Patch Note created"

PatchNote.create(version: "version 1.8.17",
                description: "<p>We are prepareeed!!</p>
                <p>In preparation for upcoming big patch i fixed some of the stuff.</p>
                <p>★ Fixed <a class='in_text-link' href='/time-travel'>Time Travel</a> pagination links.</p>
                <p>★ Quick fixed main navigation to fit your mobile phone screen.</p>
                <p>★ Added <a class='in_text-link' href='/issues'>Issue Reporting</a> so we can record our problems with app or suggestions. I want to collect all the problems and suggestions so i can resolve it all in upcoming patch.</p>")
puts "Patch Note created"