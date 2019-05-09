actor = Actor.new({first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock"})
actor.save

actor = Actor.create({first_name: "Wayne", last_name: "Knight", known_for: "Seinfeld"})
actor = Actor.create({first_name: "Gal", last_name: "Gadot", known_for: "Wonder Woman"})
actor = Actor.new({first_name: "Bruce", last_name: "Campbell", known_for: "Evil Dead"})
actor.save

