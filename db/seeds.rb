Idea.delete_all
User.delete_all
Role.delete_all
Platform.delete_all


h=Platform.create([{name: "IOS"}, {name: "Android"}, {name: "Web app"}, {name: "iphone"}])
#Idea.create(name: "games", description: "blaa", help_needed: "designer", designer:0 , developer:0,platform_id: h.id, user_id:2)
Idea.create(name: "games", description: "blaa", help_needed: "designer", designer:0, developer:0)

r = Role.create(name: "Employer")
Role.create(name: "Job Seeker")
 User.create(name: "Tartan", email: "tartan@cmu.edu", password: "foobar", admin: true, role_id: r.id)
