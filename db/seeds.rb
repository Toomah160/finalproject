User.delete_all
Role.delete_all
Platform.delete_all

r = Role.create(name: "Employer")
Role.create(name: "Job Seeker")
User.create(name: "Tartan", email: "tartan@cmu.edu", password: "foobar", admin: true, role_id: r.id)
h=Platform.create([{name: "IOS"}, {name: "Android"}, {name: "Web app"}, {name: "iphone"}])
Idea.create(name: "games", skills_required: "web_developer", description: "bla bla", help_needed: "designer)
