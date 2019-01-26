# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Admin.delete_all
Student.delete_all
Cohort.delete_all

admin1 = Admin.create(first_name: "Sally", last_name: "Adminstein", phone: 4161112222, email:"sally.mcadmin@horizon.com", title:"Outcomes Officer", image_url: nil, password: 'password')
admin2 = Admin.create(first_name: "Mustafa", last_name: "Adminsson", phone: 9054445555, email:"mustada.adminsson@horizon.com", title:"Student Life Coordinator", image_url: nil, password: 'password')

admin3 = Admin.create(first_name: "Maria", last_name: "D'Admin", phone: 6477778888, email:"maria.dadmin@horizon.com", title:"DSI Head Instructor", image_url: nil, password: 'password')
admin4 = Admin.create(first_name: "Maria", last_name: "D'Admin", phone: 6477778888, email:"maria.dadmin@horizon.com", title:"Instructor", image_url: nil, password: 'password')
admin5 = Admin.create(first_name: "Maria", last_name: "D'Admin", phone: 6477778888, email:"maria.dadmin@horizon.com", title:"Instructor", image_url: nil, password: 'password')

admin6 = Admin.create(first_name: "Maria", last_name: "D'Admin", phone: 6477778888, email:"maria.dadmin@horizon.com", title:"UXDI Head Instructor", image_url: nil, password: 'password')
admin7 = Admin.create(first_name: "Maria", last_name: "D'Admin", phone: 6477778888, email:"maria.dadmin@horizon.com", title:"Instructor", image_url: nil, password: 'password')
admin8 = Admin.create(first_name: "Maria", last_name: "D'Admin", phone: 6477778888, email:"maria.dadmin@horizon.com", title:"Instructor", image_url: nil, password: 'password')
admin9 = Admin.create(first_name: "Maria", last_name: "D'Admin", phone: 6477778888, email:"maria.dadmin@horizon.com", title:"Instructor", image_url: nil, password: 'password')
admin10 = Admin.create(first_name: "Maria", last_name: "D'Admin", phone: 6477778888, email:"maria.dadmin@horizon.com", title:"Instructor", image_url: nil, password: 'password')

admin11 = Admin.create(first_name: "Maria", last_name: "D'Admin", phone: 6477778888, email:"maria.dadmin@horizon.com", title:"WDI Head Instructor", image_url: nil, password: 'password')
admin12 = Admin.create(first_name: "Maria", last_name: "D'Admin", phone: 6477778888, email:"maria.dadmin@horizon.com", title:"Instructor", image_url: nil, password: 'password')
admin13 = Admin.create(first_name: "Maria", last_name: "D'Admin", phone: 6477778888, email:"maria.dadmin@horizon.com", title:"Instructor", image_url: nil, password: 'password')
admin14 = Admin.create(first_name: "Maria", last_name: "D'Admin", phone: 6477778888, email:"maria.dadmin@horizon.com", title:"Instructor", image_url: nil, password: 'password')
admin15 = Admin.create(first_name: "Maria", last_name: "D'Admin", phone: 6477778888, email:"maria.dadmin@horizon.com", title:"Instructor", image_url: nil, password: 'password')

cohort1 = Cohort.create(start_date: "2018-11-05 00:00:00", end_date: "2019-02-01 00:00:00", course_type:"wdi", name: "WDI-November-2018")
cohort2 = Cohort.create(start_date: "2018-11-05 00:00:00", end_date: "2019-02-09 00:00:00", course_type:"wdi", name: "WDI-September-2018")
cohort3 = Cohort.create(start_date: "2018-11-05 00:00:00", end_date: "2019-02-01 00:00:00", course_type:"uxdi", name: "UXDI-November-2018")
cohort4 = Cohort.create(start_date: "2018-11-05 00:00:00", end_date: "2019-02-09 00:00:00", course_type:"uxdi", name: "UXDI-September-2018")
cohort5 = Cohort.create(start_date: "2018-11-05 00:00:00", end_date: "2019-02-01 00:00:00", course_type:"dsi", name: "DSI-November-2018")

student1 = Student.create(first_name: "Clara", last_name: "O'Student", phone: 9057778888, email:"clara.ostudent@okboom.com", image_url: nil, password: 'password', cohort_id: cohort1.id)
student2 = Student.create(first_name: "Seong Hye", last_name: "McStudent", phone: 6479990000, email:"seonghye.mcstudent@haaangon.com", image_url: nil, password: 'password', cohort_id: cohort1.id)
student3 = Student.create(first_name: "Modest", last_name: "Studintski", phone: 4162223333, email:"modest.studintsky@coolman.com", image_url: nil, password: 'password', cohort_id: cohort1.id)
student4 = Student.create(first_name: "Hào", last_name: "Glenna", phone: 6749, email:"Hào.Glenna@coolman.com", image_url: nil, password: 'password', cohort_id: cohort1.id)
student5 = Student.create(first_name: "Kari", last_name: "Frank", phone: 9057778888, email:"Kari.Frank@okboom.com", image_url: nil, password: 'password', cohort_id: cohort1.id)
student6 = Student.create(first_name: "Jason", last_name: "West", phone: 6479990000, email:"Jason.West@haaangon.com", image_url: nil, password: 'password', cohort_id: cohort1.id)
student7 = Student.create(first_name: "Glenn", last_name: "Garcia", phone: 4162223333, email:"Glenn.Garcia@coolman.com", image_url: nil, password: 'password', cohort_id: cohort1.id)
student8 = Student.create(first_name: "Sonya", last_name: "Mathis", phone: 6479990000, email:"Sonya.Mathis@haaangon.com", image_url: nil, password: 'password', cohort_id: cohort1.id)
student9 = Student.create(first_name: "Constance", last_name: "Greer", phone: 4162223333, email:"Constance.Greer@coolman.com", image_url: nil, password: 'password', cohort_id: cohort1.id)
student10 = Student.create(first_name: "Leon", last_name: "Webb", phone: 4162223333, email:"Leon.Webby@coolman.com", image_url: nil, password: 'password', cohort_id: cohort1.id)

student11 = Student.create(first_name: "Sammy", last_name: "Walker", phone: 4162223333, email:"Sammy.Walker@coolman.com", image_url: nil, password: 'password', cohort_id: cohort2.id)
student12 = Student.create(first_name: "Cecilia", last_name: "Haynes", phone: 9057778888, email:"Cecilia.Haynes@okboom.com", image_url: nil, password: 'password', cohort_id: cohort2.id)
student13 = Student.create(first_name: "Sherry", last_name: "Cole", phone: 6479990000, email:"Sherry.Cole@haaangon.com", image_url: nil, password: 'password', cohort_id: cohort2.id)
student14 = Student.create(first_name: "Ernest", last_name: "Reese", phone: 4162223333, email:"Ernest.Reese@coolman.com", image_url: nil, password: 'password', cohort_id: cohort2.id)
student15 = Student.create(first_name: "Sherri", last_name: "Blair", phone: 9057778888, email:"Sherri.Blair@okboom.com", image_url: nil, password: 'password', cohort_id: cohort2.id)
student16 = Student.create(first_name: "Howard", last_name: "Jenkins", phone: 6479990000, email:"Howard.Jenkins@haaangon.com", image_url: nil, password: 'password', cohort_id: cohort2.id)
student17 = Student.create(first_name: "Laurie", last_name: "Bowen", phone: 4162223333, email:"Laurie.Bowen@coolman.com", image_url: nil, password: 'password', cohort_id: cohort2.id)
student18 = Student.create(first_name: "Mario", last_name: "Huff", phone: 6479990000, email:"Mario.Huff@haaangon.com", image_url: nil, password: 'password', cohort_id: cohort2.id)
student19 = Student.create(first_name: "Taylor", last_name: "Washington", phone: 6479990000, email:"Taylor.Washington@haaangon.com", image_url: nil, password: 'password', cohort_id: cohort2.id)

student20 = Student.create(first_name: "Manuel", last_name: "Keller", phone: 4162223333, email:"Manuel.Keller@coolman.com", image_url: nil, password: 'password', cohort_id: cohort3.id)
student21 = Student.create(first_name: "Simon", last_name: "Neal", phone: 9057778888, email:"Simon.Neal@okboom.com", image_url: nil, password: 'password', cohort_id: cohort3.id)
student22 = Student.create(first_name: "Steve", last_name: "Williamson", phone: 6479990000, email:"Steve.Williamson@haaangon.com", image_url: nil, password: 'password', cohort_id: cohort3.id)
student23 = Student.create(first_name: "Amos", last_name: "Franklin", phone: 4162223333, email:"Amos.Franklin@coolman.com", image_url: nil, password: 'password', cohort_id: cohort3.id)
student24 = Student.create(first_name: "Lloyd", last_name: "Lowe", phone: 9057778888, email:"Lloyd.Lowe@okboom.com", image_url: nil, password: 'password', cohort_id: cohort3.id)
student25 = Student.create(first_name: "Silvia", last_name: "Cole", phone: 6479990000, email:"Silvia.Cole@haaangon.com", image_url: nil, password: 'password', cohort_id: cohort3.id)
student26 = Student.create(first_name: "Krystal", last_name: "Evans", phone: 6479990000, email:"Krystal.Evans@haaangon.com", image_url: nil, password: 'password', cohort_id: cohort3.id)

student27 = Student.create(first_name: "Armando", last_name: "Joseph", phone: 4162223333, email:"Armando.Josephy@coolman.com", image_url: nil, password: 'password', cohort_id: cohort4.id)
student27 = Student.create(first_name: "Al", last_name: "Robertson", phone: 9057778888, email:"Al.Robertson@okboom.com", image_url: nil, password: 'password', cohort_id: cohort4.id)
student28 = Student.create(first_name: "Joe", last_name: "Castillo", phone: 6479990000, email:"Joe.Castillo@haaangon.com", image_url: nil, password: 'password', cohort_id: cohort4.id)
student29 = Student.create(first_name: "Bryan", last_name: "Watkins", phone: 4162223333, email:"Bryan.Watkins@coolman.com", image_url: nil, password: 'password', cohort_id: cohort4.id)
student30 = Student.create(first_name: "Elaine", last_name: "Santiago", phone: 9057778888, email:"Elaine.Santiago@okboom.com", image_url: nil, password: 'password', cohort_id: cohort4.id)
student31 = Student.create(first_name: "Angelica", last_name: "Mendez", phone: 6479990000, email:"Angelica.Mendez@haaangon.com", image_url: nil, password: 'password', cohort_id: cohort4.id)
student32 = Student.create(first_name: "Anna", last_name: "Moreno", phone: 4162223333, email:"Anna.Moreno@coolman.com", image_url: nil, password: 'password', cohort_id: cohort4.id)
student33 = Student.create(first_name: "Hannah", last_name: "Morrison", phone: 6479990000, email:"Hannah.Morrison@haaangon.com", image_url: nil, password: 'password', cohort_id: cohort4.id)
student34 = Student.create(first_name: "Philip", last_name: "Fuller", phone: 4162223333, email:"Philip.Fuller@coolman.com", image_url: nil, password: 'password', cohort_id: cohort4.id)

student35 = Student.create(first_name: "Genevieve", last_name: "Underwood", phone: 4162223333, email:"Genevieve.Underwood@coolman.com", image_url: nil, password: 'password', cohort_id: cohort5.id)
student36 = Student.create(first_name: "Eileen", last_name: "Flowers", phone: 9057778888, email:"Eileen.Flowers@okboom.com", image_url: nil, password: 'password', cohort_id: cohort5.id)
student37 = Student.create(first_name: "Iris", last_name: "Chavez", phone: 6479990000, email:"Iris.Chavez@haaangon.com", image_url: nil, password: 'password', cohort_id: cohort5.id)
student38 = Student.create(first_name: "Edward", last_name: "Sparks", phone: 4162223333, email:"Edward.Sparks@coolman.com", image_url: nil, password: 'password', cohort_id: cohort5.id)
student39 = Student.create(first_name: "Austin", last_name: "Lloyd", phone: 9057778888, email:"Austin.Lloyd@okboom.com", image_url: nil, password: 'password', cohort_id: cohort5.id)
student40 = Student.create(first_name: "Emanuel", last_name: "Hines", phone: 6479990000, email:"Emanuel.Hines@haaangon.com", image_url: nil, password: 'password', cohort_id: cohort5.id)
student41 = Student.create(first_name: "Mike", last_name: "Francis", phone: 4162223333, email:"Mike.Francis@coolman.com", image_url: nil, password: 'password', cohort_id: cohort5.id)
student42 = Student.create(first_name: "Joan", last_name: "Peters", phone: 6479990000, email:"Joan.Peters@haaangon.com", image_url: nil, password: 'password', cohort_id: cohort5.id)
student43 = Student.create(first_name: "Eva", last_name: "Wheeler", phone: 4162223333, email:"Eva.Wheeler@coolman.com", image_url: nil, password: 'password', cohort_id: cohort5.id)
