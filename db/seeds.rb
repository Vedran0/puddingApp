Pudding.create(name: "Vedran", email: "vedranmijatovic0@gmail.com", password: "super0800")
Pudding.create(name: "Elizabeta", email: "el.antunovic0@gmail.com", password: "super0800")
puts "Pudding created"

Pudding.all.each do |pudding|
  Setting.create(pudding_id: pudding.id)
end