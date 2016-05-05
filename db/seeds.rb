# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

mentors = Mentor.create([
  {full_name: 'David Lange', email: 'David@gmail.com', password: 'david', type: 'Mentor'},
  {full_name: 'Carl Whut', email: 'Carl@gmail.com', password: 'carl', type: 'Mentor'},
  {full_name: 'Ivy Vetor', email: 'Ivy@gmail.com', password: 'ivy', type: 'Mentor'}])


students = Student.create([
  {full_name: 'Morgan Smith', email: 'Morgan@gmail.com', password: 'morgan', type: 'Student'},
  {full_name: 'Tom Cat', email: 'Tom@gmail.com', password: 'tom', type: 'Student'},
  {full_name: 'Thumb A. Lina', email: 'Thumb@gmail.com', password: 'thumb', type: 'Student'}])

appointments = Appointment.create([
  {start_time: '05/06/2016 11:00:00', end_time: '05/06/2016 11:30:00', mentor_id: 1, phase: 1, body: 'Ruby on Rails pre-training'},
  {start_time: '06/01/2016 14:00:00', end_time: '06/01/2016 15:00:00', mentor_id: 2, phase: 2, body: 'Javascript tutoring'},
  {start_time: '05/15/2016 13:30:00', end_time: '14:00:00', mentor_id: 3, student_id: 4, phase: 3, body: 'Can do Ruby on Rails but not Javascript'},
  {start_time: '09/15/2050 10:00:00', end_time: '09/15/2050 11:00:00', mentor_id: 2, student_id: 5, phase: 1, body: 'Stuff'}])

topics = Topic.create([{name: 'ruby'}, {name: 'javasript'}, {name: 'ruby on rails'}, {name: 'ajax'}])

appointmentTopics = AppointmentTopic.create([{appointment_id: 1, topic_id: 3}, {appointment_id: 2, topic_id: 2}, {appointment_id: 3, topic_id: 3}, {appointment_id: 4, topic_id: 2}, {appointment_id: 4, topic_id: 3}])

