# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Project.destroy_all
Photo.destroy_all

myBrews = Project.create(name: "myBrews", description: "Simple CLI app that allows coffee lovers to add, favorite, and get suggestions for coffee", tools: ["Ruby"], gif: ["https://i.imgur.com/MMcaKIj.gifv", "https://i.imgur.com/ETfFKAV.gifv"], summary: "myBrews is a joint project with Brian DiRito for module one at Flatiron School. The CLI app was built with Ruby in its entirety. The idea for this project was simple: we both enjoy coffee so why not dedicate our first Flatiron School project to coffee?")

emotone = Project.create(name: "emoTone", description: "Detects emotional tones in written text to improve communication", tools: ["JavaScript", "Ruby on Rails", "HTML", "CSS", "Bulma"], gif: "https://i.imgur.com/mwY1faD.gifv", summary: "The modern world relies heavily on virtual communication so interpretation of text is vital in understanding each other. emoTone is a joint project with Bijon Miles, built with vanilla JavaScript front end and Ruby on Rails back end, that translates text into emotion(s). We wanted to explore natural language processing with IBM Watson Tone Analyzer API, which uses linguistic analysis to detect emotional tones. emoTone supports speech to text function.")

pmInsights = Project.create(name: "PM Insights", description: "Analyzes and provides insight on your sleep habits", tools: ["React", "Redux", "Ruby on Rails", "HTML", "CSS", "Semantic UI React"], gif: "", summary: "PM Insights is a React front end and Ruby on Rails back end web application that dabbles with data visualization. It analyzes and displays your sleep data, including duration of sleep, sleep cycle break down, and resting heart rate, using Fitbit Web API. PM Insights was born out of my desire to incorporate hardware and real data in my project. That's when I decided to use my Fitbit watch. The app also allows you to add, edit, and delete sleep goals. Heavily inspired by modern fitness app dashboards.")

Photo.create(source: "https://i.imgur.com/Z3LMiWE.png", project_id: myBrews.id)

Photo.create(source: "https://i.imgur.com/Li48iSC.png", project_id: emotone.id)
Photo.create(source: "https://i.imgur.com/I90BHjb.png", project_id: emotone.id)

Photo.create(source: "https://i.imgur.com/aIAOBB5.png", project_id: pmInsights.id)
Photo.create(source: "https://i.imgur.com/NjULMNo.png", project_id: pmInsights.id)
