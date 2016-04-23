Idea.delete_all
User.delete_all
Role.delete_all
Platform.delete_all


h=Platform.create([{name: "IOS"}, {name: "Android"}, {name: "Web app"}, {name: "iphone"}])
#Idea.create(name: "games", skills_required: "web_developer", description: "blaa", help_needed: "designer", user_id: "1", platform_id: h.id)
Idea.create(name: "games", skills_required: "web_developer", description: "blaa", help_needed: "designer")
Idea.create(name: "games", skills_required: "web_developer", description: "blaa", help_needed: "designer")

r = Role.create(name: "Employer")
Role.create(name: "Job Seeker")
 User.create(name: "Tartan", email: "tartan@cmu.edu", password: "foobar", admin: true, role_id: r.id)
