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
SubmissionComment.delete_all
Submission.delete_all
Assignment.delete_all
Event.delete_all
StudentNote.delete_all

admin1 = Admin.create(first_name: "Sally", last_name: "Adminstein", phone: 4161112222, email:"sally.mcadmin@horizon.com", title:"Outcomes Officer", image_url: nil, password: 'password')
admin2 = Admin.create(first_name: "Mustafa", last_name: "Adminsson", phone: 9054445555, email:"mustada.adminsson@horizon.com", title:"Student Life Coordinator", image_url: nil, password: 'password')
admin3 = Admin.create(first_name: "Maria", last_name: "D'Admin", phone: 6477778888, email:"maria.dadmin@horizon.com", title:"DSI Head Instructor", image_url: nil, password: 'password')
admin4 = Admin.create(first_name: "Frederick", last_name: "Love", phone: 6479264493, email:"FrederickLove@horizon.com", title:"Instructor", image_url: nil, password: 'password')
admin5 = Admin.create(first_name: "Dayton", last_name: "Brandt", phone: 6471418500, email:"DaytonBrandt@horizon.com", title:"Instructor", image_url: nil, password: 'password')
admin6 = Admin.create(first_name: "Seamus", last_name: "Webster", phone: 6473329582, email:"Seamus.Webster@horizon.com", title:"UXDI Head Instructor", image_url: nil, password: 'password')
admin7 = Admin.create(first_name: "Meghan", last_name: "Russell", phone: 6478477890, email:"MeghanRussell@horizon.com", title:"Instructor", image_url: nil, password: 'password')
admin8 = Admin.create(first_name: "Valery", last_name: "Morris", phone: 4169479010, email:"ValeryMorris@horizon.com", title:"Instructor", image_url: nil, password: 'password')
admin9 = Admin.create(first_name: "Sterling", last_name: "Mcknight", phone: 64795023, email:"SterlingMcknight@horizon.com", title:"Instructor", image_url: nil, password: 'password')
admin10 = Admin.create(first_name: "Erick", last_name: "Sampson", phone: 4169301743, email:"ErickSampson@horizon.com", title:"Instructor", image_url: nil, password: 'password')
admin11 = Admin.create(first_name: "Nia", last_name: "Krause", phone: 6479262364, email:"NiaKrause@horizon.com", title:"WDI Head Instructor", image_url: nil, password: 'password')
admin12 = Admin.create(first_name: "Julius", last_name: "Greene", phone: 6473053091, email:"JuliusGreene@horizon.com", title:"Instructor", image_url: nil, password: 'password')
admin13 = Admin.create(first_name: "Karson", last_name: "Petersen", phone: 9053059456, email:"KarsonPetersen@horizon.com", title:"Instructor", image_url: nil, password: 'password')
admin14 = Admin.create(first_name: "Jasmin", last_name: "Melton", phone: 4169573916, email:"JasminMelton@horizon.com", title:"Instructor", image_url: nil, password: 'password')
admin15 = Admin.create(first_name: "Ruth", last_name: "Peck", phone: 4163959281, email:"RuthPeck@horizon.com", title:"Instructor", image_url: nil, password: 'password')

cohort1 = Cohort.create(start_date: "2018-12-05 00:00:00", end_date: "2019-03-01 00:00:00", course_type:"wdi", name: "Winter-2018")
cohort2 = Cohort.create(start_date: "2018-12-12 00:00:00", end_date: "2019-03-09 00:00:00", course_type:"uxdi", name: "Winter-2018")
cohort3 = Cohort.create(start_date: "2019-01-03 00:00:00", end_date: "2019-03-16 00:00:00", course_type:"dsi", name: "Winter-2018")
cohort4 = Cohort.create(start_date: "2019-02-05 00:00:00", end_date: "2019-05-09 00:00:00", course_type:"wdi", name: "Spring-2019")
cohort5 = Cohort.create(start_date: "2019-02-12 00:00:00", end_date: "2019-06-16 00:00:00", course_type:"uxdi", name: "Spring-2018")
cohort6 = Cohort.create(start_date: "2019-02-29 00:00:00", end_date: "2019-05-25 00:00:00", course_type:"dsi", name: "Spring-2019")
cohort7 = Cohort.create(start_date: "2019-05-05 00:00:00", end_date: "2019-08-05 00:00:00", course_type:"wdi", name: "Summer-2019")
cohort8 = Cohort.create(start_date: "2019-05-12 00:00:00", end_date: "2019-08-12 00:00:00", course_type:"uxdi", name: "Summer-2019")
cohort9 = Cohort.create(start_date: "2019-05-29 00:00:00", end_date: "2019-08-20 00:00:00", course_type:"dsi", name: "Summer-2019")

student1 = Student.create(first_name: "Clara", last_name: "O'Student", phone: 9057778888, email:"clara.ostudent@okboom.com", image_url: nil, password: 'password', cohort_id: cohort1.id)
student2 = Student.create(first_name: "Seong Hye", last_name: "McStudent", phone: 6479990000, email:"seonghye.mcstudent@haaangon.com", image_url: nil, password: 'password', cohort_id: cohort1.id)
student3 = Student.create(first_name: "Modest", last_name: "Studintski", phone: 4162223333, email:"modest.studintsky@coolman.com", image_url: nil, password: 'password', cohort_id: cohort1.id)
student4 = Student.create(first_name: "Hào", last_name: "Glenna", phone: 6749, email:"hào.glenna@coolman.com", image_url: nil, password: 'password', cohort_id: cohort1.id)
student5 = Student.create(first_name: "Kari", last_name: "Frank", phone: 9057778888, email:"kari.frank@okboom.com", image_url: nil, password: 'password', cohort_id: cohort1.id)
student6 = Student.create(first_name: "Jason", last_name: "West", phone: 6479990000, email:"jason.west@haaangon.com", image_url: nil, password: 'password', cohort_id: cohort1.id)
student7 = Student.create(first_name: "Glenn", last_name: "Garcia", phone: 4162223333, email:"glenn.garcia@coolman.com", image_url: nil, password: 'password', cohort_id: cohort1.id)
student8 = Student.create(first_name: "Sonya", last_name: "Mathis", phone: 6479990000, email:"sonya.mathis@haaangon.com", image_url: nil, password: 'password', cohort_id: cohort1.id)
student9 = Student.create(first_name: "Constance", last_name: "Greer", phone: 4162223333, email:"constance.greer@coolman.com", image_url: nil, password: 'password', cohort_id: cohort1.id)
student10 = Student.create(first_name: "Leon", last_name: "Webb", phone: 4162223333, email:"leon.webby@coolman.com", image_url: nil, password: 'password', cohort_id: cohort1.id)

student11 = Student.create(first_name: "Sammy", last_name: "Walker", phone: 4162223333, email:"sammy.walker@coolman.com", image_url: nil, password: 'password', cohort_id: cohort2.id)
student12 = Student.create(first_name: "Cecilia", last_name: "Haynes", phone: 9057778888, email:"cecilia.haynes@okboom.com", image_url: nil, password: 'password', cohort_id: cohort2.id)
student13 = Student.create(first_name: "Sherry", last_name: "Cole", phone: 6479990000, email:"sherry.cole@haaangon.com", image_url: nil, password: 'password', cohort_id: cohort2.id)
student14 = Student.create(first_name: "Ernest", last_name: "Reese", phone: 4162223333, email:"ernest.reese@coolman.com", image_url: nil, password: 'password', cohort_id: cohort2.id)
student15 = Student.create(first_name: "Sherri", last_name: "Blair", phone: 9057778888, email:"sherri.blair@okboom.com", image_url: nil, password: 'password', cohort_id: cohort2.id)
student16 = Student.create(first_name: "Howard", last_name: "Jenkins", phone: 6479990000, email:"howard.jenkins@haaangon.com", image_url: nil, password: 'password', cohort_id: cohort2.id)
student17 = Student.create(first_name: "Laurie", last_name: "Bowen", phone: 4162223333, email:"laurie.bowen@coolman.com", image_url: nil, password: 'password', cohort_id: cohort2.id)
student18 = Student.create(first_name: "Mario", last_name: "Huff", phone: 6479990000, email:"mario.huff@haaangon.com", image_url: nil, password: 'password', cohort_id: cohort2.id)
student19 = Student.create(first_name: "Taylor", last_name: "Washington", phone: 6479990000, email:"taylor.washington@haaangon.com", image_url: nil, password: 'password', cohort_id: cohort2.id)

student20 = Student.create(first_name: "Manuel", last_name: "Keller", phone: 4162223333, email:"manuel.keller@coolman.com", image_url: nil, password: 'password', cohort_id: cohort3.id)
student21 = Student.create(first_name: "Simon", last_name: "Neal", phone: 9057778888, email:"simon.neal@okboom.com", image_url: nil, password: 'password', cohort_id: cohort3.id)
student22 = Student.create(first_name: "Steve", last_name: "Williamson", phone: 6479990000, email:"steve.williamson@haaangon.com", image_url: nil, password: 'password', cohort_id: cohort3.id)
student23 = Student.create(first_name: "Amos", last_name: "Franklin", phone: 4162223333, email:"amos.franklin@coolman.com", image_url: nil, password: 'password', cohort_id: cohort3.id)
student24 = Student.create(first_name: "Lloyd", last_name: "Lowe", phone: 9057778888, email:"lloyd.lowe@okboom.com", image_url: nil, password: 'password', cohort_id: cohort3.id)
student25 = Student.create(first_name: "Silvia", last_name: "Cole", phone: 6479990000, email:"silvia.cole@haaangon.com", image_url: nil, password: 'password', cohort_id: cohort3.id)
student26 = Student.create(first_name: "Krystal", last_name: "Evans", phone: 6479990000, email:"krystal.evans@haaangon.com", image_url: nil, password: 'password', cohort_id: cohort3.id)

student27 = Student.create(first_name: "Armando", last_name: "Joseph", phone: 4162223333, email:"armando.josephy@coolman.com", image_url: nil, password: 'password', cohort_id: cohort4.id)
student27 = Student.create(first_name: "Al", last_name: "Robertson", phone: 9057778888, email:"al.robertson@okboom.com", image_url: nil, password: 'password', cohort_id: cohort4.id)
student28 = Student.create(first_name: "Joe", last_name: "Castillo", phone: 6479990000, email:"joe.castillo@haaangon.com", image_url: nil, password: 'password', cohort_id: cohort4.id)
student29 = Student.create(first_name: "Bryan", last_name: "Watkins", phone: 4162223333, email:"bryan.watkins@coolman.com", image_url: nil, password: 'password', cohort_id: cohort4.id)
student30 = Student.create(first_name: "Elaine", last_name: "Santiago", phone: 9057778888, email:"elaine.santiago@okboom.com", image_url: nil, password: 'password', cohort_id: cohort4.id)
student31 = Student.create(first_name: "Angelica", last_name: "Mendez", phone: 6479990000, email:"angelica.mendez@haaangon.com", image_url: nil, password: 'password', cohort_id: cohort4.id)
student32 = Student.create(first_name: "Anna", last_name: "Moreno", phone: 4162223333, email:"anna.moreno@coolman.com", image_url: nil, password: 'password', cohort_id: cohort4.id)
student33 = Student.create(first_name: "Hannah", last_name: "Morrison", phone: 6479990000, email:"hannah.morrison@haaangon.com", image_url: nil, password: 'password', cohort_id: cohort4.id)
student34 = Student.create(first_name: "Philip", last_name: "Fuller", phone: 4162223333, email:"philip.fuller@coolman.com", image_url: nil, password: 'password', cohort_id: cohort4.id)

student35 = Student.create(first_name: "Genevieve", last_name: "Underwood", phone: 4162223333, email:"genevieve.underwood@coolman.com", image_url: nil, password: 'password', cohort_id: cohort5.id)
student36 = Student.create(first_name: "Eileen", last_name: "Flowers", phone: 9057778888, email:"eileen.flowers@okboom.com", image_url: nil, password: 'password', cohort_id: cohort5.id)
student37 = Student.create(first_name: "Iris", last_name: "Chavez", phone: 6479990000, email:"iris.chavez@haaangon.com", image_url: nil, password: 'password', cohort_id: cohort5.id)
student38 = Student.create(first_name: "Edward", last_name: "Sparks", phone: 4162223333, email:"edward.sparks@coolman.com", image_url: nil, password: 'password', cohort_id: cohort5.id)
student39 = Student.create(first_name: "Austin", last_name: "Lloyd", phone: 9057778888, email:"austin.lloyd@okboom.com", image_url: nil, password: 'password', cohort_id: cohort5.id)
student40 = Student.create(first_name: "Emanuel", last_name: "Hines", phone: 6479990000, email:"emanuel.hines@haaangon.com", image_url: nil, password: 'password', cohort_id: cohort5.id)
student41 = Student.create(first_name: "Mike", last_name: "Francis", phone: 4162223333, email:"mike.francis@coolman.com", image_url: nil, password: 'password', cohort_id: cohort5.id)
student42 = Student.create(first_name: "Joan", last_name: "Peters", phone: 6479990000, email:"joan.peters@haaangon.com", image_url: nil, password: 'password', cohort_id: cohort5.id)
student43 = Student.create(first_name: "Eva", last_name: "Wheeler", phone: 4162223333, email:"eva.wheeler@coolman.com", image_url: nil, password: 'password', cohort_id: cohort5.id)

assignment1 = Assignment.create(name: 'Personal Branding', body: "Hey, branding is important.  Let's personal brand.", due_date: '2019-12-01 00:00:00', cohort_id: cohort1.id, )
assignment2 = Assignment.create(name: 'LinkedIn Profile', body: "Do you have LinkedIn?  Get on it.", due_date: '2019-12-15 00:00:00', cohort_id: cohort1.id, )
assignment3 = Assignment.create(name: 'Job Market Research', body: "Information will be vital to your boj search.  The best way to be prepared is by doing your research.  Make a list of 20 companies you would be interested in working for.", due_date: '2019-12-01 00:00:00', cohort_id: cohort1.id, )
assignment4 = Assignment.create(name: 'Resume', body: "Resumes are here to stay.  Spend some time polishing up your resume.", due_date: '2019-12-15 00:00:00', cohort_id: cohort1.id, )

event1 = Event.create(name:"Lesson: Personal Branding", company_id: nil, contact_id: nil, date: '2019-11-15 00:00:00', time: '2019-11-15 12:30:00', body:"Lesson on personal branding in Room 202.", cohort_id: cohort1.id )
event2 = Event.create(name:"Lesson: LinkedIn", company_id: nil, contact_id: nil, date: '2019-12-10 00:00:00', time: '2019-12-10 12:30:00', body:"Lesson on LinkedIn in Room 203.", cohort_id: cohort1.id )

student_note1 = StudentNote.create(admin_id: admin11.id, student_id:student1.id, body:"Good attitude, grasping the material well.")
student_note2 = StudentNote.create(admin_id: admin12.id, student_id:student1.id, body:"Pleasent to teach, gets along with other students.")
student_note3 = StudentNote.create(admin_id: admin13.id, student_id:student1.id, body:"Always friendly.  Strong on programming knowledge.")

student_note4 = StudentNote.create(admin_id: admin11.id, student_id:student2.id, body:"Kind of reserved.  Difficult to guage their enthusiasm for coding.")
student_note5 = StudentNote.create(admin_id: admin12.id, student_id:student2.id, body:"Doesn't seem to enjoy the class, sticks to themselves.")
student_note6 = StudentNote.create(admin_id: admin13.id, student_id:student2.id, body:"Left very early, possibly feeling overwhelmed.")

student_note7 = StudentNote.create(admin_id: admin11.id, student_id:student3.id, body:"Very friendly, but struggles with the material.")
student_note8 = StudentNote.create(admin_id: admin12.id, student_id:student3.id, body:"Gets along with with everyone, working hard to solidify their knowledge.")
student_note9 = StudentNote.create(admin_id: admin13.id, student_id:student3.id, body:"Great attitude, puts in a lot of work to get the concepts.")

submission1 = Submission.create(assignment_id: assignment1.id, student_id: student1.id, url: '', body: "I, #{student1.first_name}, am truly unique.  It all started when I was young.  Now I'm professional with an interesting back-story.", is_approved: true)
submission2 = Submission.create(assignment_id: assignment1.id, student_id: student2.id, url: '', body: "I, #{student2.first_name} have the best brand.  Nobody has a better brand than me.", is_approved: false)
submission3 = Submission.create(assignment_id: assignment1.id, student_id: student3.id, url: '', body: "I, #{student3.first_name} am new to coding.  It's like this other thing I do which is very on-brand.", is_approved: true)
submission4 = Submission.create(assignment_id: assignment1.id, student_id: student4.id, url: '', body: "I, #{student1.first_name}, am truly unique.  It all started when I was young.  Now I'm professional with an interesting back-story.", is_approved: true)
submission5 = Submission.create(assignment_id: assignment1.id, student_id: student5.id, url: '', body: "I, #{student2.first_name} have the best brand.  Nobody has a better brand than me.", is_approved: false)
submission6 = Submission.create(assignment_id: assignment1.id, student_id: student6.id, url: '', body: "I, #{student3.first_name} am new to coding.  It's like this other thing I do which is very on-brand.", is_approved: true)
submission7 = Submission.create(assignment_id: assignment1.id, student_id: student7.id, url: '', body: "I, #{student1.first_name}, am truly unique.  It all started when I was young.  Now I'm professional with an interesting back-story.", is_approved: true)
submission8 = Submission.create(assignment_id: assignment1.id, student_id: student8.id, url: '', body: "I, #{student2.first_name} have the best brand.  Nobody has a better brand than me.", is_approved: false)
# submission9 = Submission.create(assignment_id: assignment1.id, student_id: student9.id, url: '', body: "I, #{student3.first_name} am new to coding.  It's like this other thing I do which is very on-brand.", is_approved: true)
submission10 = Submission.create(assignment_id: assignment1.id, student_id: student10.id, url: '', body: "I, #{student3.first_name} am new to coding.  It's like this other thing I do which is very on-brand.", is_approved: true)

# submission11 = Submission.create(assignment_id: assignment2.id, student_id: student1.id, url: "https://www.linkedin.com/in/#{student1.first_name}/", body: "", is_approved: false)
# submission12 = Submission.create(assignment_id: assignment2.id, student_id: student2.id, url: "https://www.linkedin.com/in/#{student2.first_name}/", body: "", is_approved: false)
# submission13 = Submission.create(assignment_id: assignment2.id, student_id: student3.id, url: "https://www.linkedin.com/in/#{student3.first_name}/", body: "", is_approved: false)
# submission14 = Submission.create(assignment_id: assignment2.id, student_id: student4.id, url: "https://www.linkedin.com/in/#{student4.first_name}/", body: "", is_approved: false)
# submission15 = Submission.create(assignment_id: assignment2.id, student_id: student5.id, url: "https://www.linkedin.com/in/#{student5.first_name}/", body: "", is_approved: false)
# submission16 = Submission.create(assignment_id: assignment2.id, student_id: student6.id, url: "https://www.linkedin.com/in/#{student6.first_name}/", body: "", is_approved: false)
submission17 = Submission.create(assignment_id: assignment2.id, student_id: student7.id, url: "https://www.linkedin.com/in/#{student7.first_name}/", body: "", is_approved: false)
submission18 = Submission.create(assignment_id: assignment2.id, student_id: student8.id, url: "https://www.linkedin.com/in/#{student8.first_name}/", body: "", is_approved: false)
submission19 = Submission.create(assignment_id: assignment2.id, student_id: student9.id, url: "https://www.linkedin.com/in/#{student9.first_name}/", body: "", is_approved: false)
submission20 = Submission.create(assignment_id: assignment2.id, student_id: student10.id, url: "https://www.linkedin.com/in/#{student10.first_name}/", body: "", is_approved: false)

submission21 = Submission.create(assignment_id: assignment2.id, student_id: student1.id, body: "Here re some companies researched by me, #{student2.first_name}:  Uplift Technologies Inc., RefinePro, Blast, Obsidian Solutions, Tasky.me, colorapp.co, JobMart, BlancLink, CreckJack, Varicent Software", url: "", is_approved: false)
submission22 = Submission.create(assignment_id: assignment2.id, student_id: student2.id, body: "Here re some companies researched by me, #{student3.first_name}:  Uplift Technologies Inc., RefinePro, Blast, Obsidian Solutions, Tasky.me, colorapp.co, JobMart, BlancLink, CreckJack, Varicent Software", url: "", is_approved: false)
submission23 = Submission.create(assignment_id: assignment2.id, student_id: student3.id, body: "Here re some companies researched by me, #{student4.first_name}:  Uplift Technologies Inc., RefinePro, Blast, Obsidian Solutions, Tasky.me, colorapp.co, JobMart, BlancLink, CreckJack, Varicent Software", url: "", is_approved: false)
submission24 = Submission.create(assignment_id: assignment2.id, student_id: student4.id, body: "Here re some companies researched by me, #{student5.first_name}:  Uplift Technologies Inc., RefinePro, Blast, Obsidian Solutions, Tasky.me, colorapp.co, JobMart, BlancLink, CreckJack, Varicent Software", url: "", is_approved: false)
# submission25 = Submission.create(assignment_id: assignment2.id, student_id: student5.id, body: "Here re some companies researched by me, #{student6.first_name}:  Uplift Technologies Inc., RefinePro, Blast, Obsidian Solutions, Tasky.me, colorapp.co, JobMart, BlancLink, CreckJack, Varicent Software", url: "", is_approved: false)
# submission26 = Submission.create(assignment_id: assignment2.id, student_id: student6.id, body: "Here re some companies researched by me, #{student7.first_name}:  Uplift Technologies Inc., RefinePro, Blast, Obsidian Solutions, Tasky.me, colorapp.co, JobMart, BlancLink, CreckJack, Varicent Software", url: "", is_approved: false)
# submission27 = Submission.create(assignment_id: assignment2.id, student_id: student7.id, body: "Here re some companies researched by me, #{student8.first_name}:  Uplift Technologies Inc., RefinePro, Blast, Obsidian Solutions, Tasky.me, colorapp.co, JobMart, BlancLink, CreckJack, Varicent Software", url: "", is_approved: false)
# submission28 = Submission.create(assignment_id: assignment2.id, student_id: student8.id, body: "Here re some companies researched by me, #{student9.first_name}:  Uplift Technologies Inc., RefinePro, Blast, Obsidian Solutions, Tasky.me, colorapp.co, JobMart, BlancLink, CreckJack, Varicent Software", url: "", is_approved: false)
# submission29 = Submission.create(assignment_id: assignment2.id, student_id: student9.id, body: "Here re some companies researched by me, #{student10.first_name}:  Uplift Technologies Inc., RefinePro, Blast, Obsidian Solutions, Tasky.me, colorapp.co, JobMart, BlancLink, CreckJack, Varicent Software", url: "", is_approved: false)
submission30 = Submission.create(assignment_id: assignment2.id, student_id: student10.id, body: "Here re some companies researched by me, #{student1.first_name}:  Uplift Technologies Inc., RefinePro, Blast, Obsidian Solutions, Tasky.me, colorapp.co, JobMart, BlancLink, CreckJack, Varicent Software", url: "", is_approved: false)

submission31 = Submission.create(assignment_id: assignment2.id, student_id: student1.id, url: "https://www.linkedin.com/in/#{student1.first_name}/", body: "", is_approved: false)
submission32 = Submission.create(assignment_id: assignment2.id, student_id: student2.id, url: "https://www.linkedin.com/in/#{student2.first_name}/", body: "", is_approved: false)
submission33 = Submission.create(assignment_id: assignment2.id, student_id: student3.id, url: "https://www.linkedin.com/in/#{student3.first_name}/", body: "", is_approved: false)
submission34 = Submission.create(assignment_id: assignment2.id, student_id: student4.id, url: "https://www.linkedin.com/in/#{student4.first_name}/", body: "", is_approved: false)
submission35 = Submission.create(assignment_id: assignment2.id, student_id: student5.id, url: "https://www.linkedin.com/in/#{student5.first_name}/", body: "", is_approved: false)
submission36 = Submission.create(assignment_id: assignment2.id, student_id: student6.id, url: "https://www.linkedin.com/in/#{student6.first_name}/", body: "", is_approved: false)
submission37 = Submission.create(assignment_id: assignment2.id, student_id: student7.id, url: "https://www.linkedin.com/in/#{student7.first_name}/", body: "", is_approved: false)
# submission38 = Submission.create(assignment_id: assignment2.id, student_id: student8.id, url: "https://www.linkedin.com/in/#{student8.first_name}/", body: "", is_approved: false)
# submission39 = Submission.create(assignment_id: assignment2.id, student_id: student9.id, url: "https://www.linkedin.com/in/#{student9.first_name}/", body: "", is_approved: false)
submission40 = Submission.create(assignment_id: assignment2.id, student_id: student10.id, url: "https://www.linkedin.com/in/#{student10.first_name}/", body: "", is_approved: false)


submission_comment1 = SubmissionComment.create(admin_id: admin1.id, submission_id: submission1.id, body:"Wow, what a great personal brand!")
submission_comment2 = SubmissionComment.create(admin_id: admin1.id, submission_id: submission2.id, body:"Great start!  Try including more information about your brand.")
submission_comment3 = SubmissionComment.create(admin_id: admin1.id, submission_id: submission3.id, body:"This is a really interesting personal story - great work.")

submission_comment4 = SubmissionComment.create(admin_id: admin1.id, submission_id: submission4.id, body:"Are you sure this is your LinkedIn profile?")
submission_comment5 = SubmissionComment.create(admin_id: admin1.id, submission_id: submission5.id, body:"Good start.  Please fill in more fields, especially the summary section.")
submission_comment6 = SubmissionComment.create(admin_id: admin1.id, submission_id: submission6.id, body:"Great pic!  Making great progress!")
