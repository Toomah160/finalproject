User.delete_all
Role.delete_all
r = Role.create(name: "Employer")
Role.create(name: "Job Seeker")
Platform.create([{name: "IOS"}, {name: "Android"}, {name: "Web app"}, {name: "iphone"}])
User.create(name: "Tartan", email: "tartan@cmu.edu", password: "foobar", admin: true, role_id: r.id)