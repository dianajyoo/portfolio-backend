# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Project.destroy_all
Photo.destroy_all

myBrews = Project.create(name: "myBrews", description: "Simple CLI app that allows coffee lovers to add, favorite, and get suggestions for coffee", tools: ["Ruby"])

emotone = Project.create(name: "emoTone", description: "Detects emotional tones in written text to improve communication", tools: ["JavaScript", "HTML", "CSS", "Ruby on Rails"])

pmInsights = Project.create(name: "PM Insights", description: "Analyzes and provides insight on your sleep habits", tools: ["React", "Redux", "CSS", "Ruby on Rails"])

# Photo.create(source: "", project_id: myBrews.id)

Photo.create(source: "https://i.imgur.com/Li48iSC.png", project_id: emotone.id)
Photo.create(source: "https://i.imgur.com/I90BHjb.png", project_id: emotone.id)

Photo.create(source: "https://i.imgur.com/aIAOBB5.png", project_id: pmInsights.id)
Photo.create(source: "https://i.imgur.com/NjULMNo.png", project_id: pmInsights.id)
