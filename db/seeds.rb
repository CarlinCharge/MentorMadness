# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

mentors = Mentor.create!([
  {full_name: 'David Lange', email: 'David@gmail.com', password: 'david', type: 'Mentor'},
  {full_name: 'Carl Whut', email: 'Carl@gmail.com', password: 'carl', type: 'Mentor'},
  {full_name: 'Ivy Vetor', email: 'Ivy@gmail.com', password: 'ivy', type: 'Mentor'}])


students = Student.create!([
  {full_name: 'Morgan Smith', email: 'Morgan@gmail.com', password: 'morgan', type: 'Student'},
  {full_name: 'Tom Cat', email: 'Tom@gmail.com', password: 'tom', type: 'Student'},
  {full_name: 'Thumb A. Lina', email: 'Thumb@gmail.com', password: 'thumb', type: 'Student'}])

Appointment.create(start_time: DateTime.now, end_time: DateTime.now + 30.minutes, mentor_id: mentors.sample.id, phase: 1, body: 'Ruby on Rails pre-training'
  )
Appointment.create(start_time: DateTime.now + 1.day, end_time: DateTime.now + 1.day + 30.minutes, mentor_id: mentors.sample.id, phase: 2, body: 'Javascript tutoring')

Appointment.create(start_time: DateTime.now + 2.days, end_time: DateTime.now + 2.days + 30.minutes, mentor_id: mentors.sample.id, student_id: students.sample.id, phase: 2, body: 'Javascript tutoring')

topics = Topic.create!([{name: 'ruby'}, {name: 'javasript'}, {name: 'ruby on rails'}, {name: 'ajax'}])

appointmentTopics = AppointmentTopic.create!([{appointment_id: 1, topic_id: 3}, {appointment_id: 2, topic_id: 2}, {appointment_id: 3, topic_id: 3}, {appointment_id: 4, topic_id: 2}, {appointment_id: 4, topic_id: 3}])

