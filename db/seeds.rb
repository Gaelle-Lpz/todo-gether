# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "cleaning database ..."
MemberTask.destroy_all
Task.destroy_all
Project.destroy_all
TeamMember.destroy_all
Team.destroy_all
User.destroy_all

#------------------ Users -------------#
puts "create users ..."
user_a = User.create!(
  email: "gaelle@lewagon.fr",
  name: "Gaelle",
  password: "lewagon"
)

user_b = User.create!(
  email: "pierre@lewagon.fr",
  name: "Pierre",
  password: "lewagon"
)

user_c = User.create!(
  email: "julie@lewagon.fr",
  name: "Julie",
  password: "lewagon"
)

user_d = User.create!(
  email: "thomas@lewagon.fr",
  name: "Thomas",
  password: "lewagon"
)

#------------------ Teams -------------#
puts "create teams ..."
team_a = Team.create!(
  name: "Task Titans"
)

team_b = Team.create!(
  name: "Todo Troopers"
)

team_c = Team.create!(
  name: "List Legends"
)

#------------------ Projects-------------#
puts "create projects ..."
project_a = Project.create!(
  name: "TaskGuru",
  team_id: team_a.id
)

project_b = Project.create!(
  name: "TaskRanger",
  team_id: team_a.id
)

project_c = Project.create!(
  name: "ListWizard",
  team_id: team_b.id
)

project_d = Project.create!(
  name: "TodoTastic",
  team_id: team_c.id
)

#------------------  Team Member-------------#
puts "create Team Member ..."

team_member_a = TeamMember.create!(
  user_id: user_a.id,
  user_role: true,
  team_id: team_a.id
)

team_member_b = TeamMember.create!(
  user_id: user_b.id,
  user_role: false,
  team_id: team_a.id
)

team_member_c = TeamMember.create!(
  user_id: user_a.id,
  user_role: true,
  team_id: team_b.id
)

team_member_d = TeamMember.create!(
  user_id: user_b.id,
  user_role: true,
  team_id: team_c.id
)

team_member_e = TeamMember.create!(
  user_id: user_a.id,
  user_role: false,
  team_id: team_c.id
)

team_member_f = TeamMember.create!(
  user_id: user_c.id,
  user_role: false,
  team_id: team_c.id
)

team_member_g = TeamMember.create!(
  user_id: user_d.id,
  user_role: false,
  team_id: team_c.id
)

#------------------  Task -------------#
puts "create Task ..."

task_a = Task.create!(
  title: "Count the clouds",
  detail: "Make a reference of all the clouds which pass in the sky from 14H to 17h30",
  project_id: project_a.id,
  date: "Tue, 20 Jun 2023",
  status: 0
)

task_b = Task.create!(
  title: "Stargazing",
  detail: "Observe the stars for 30 minutes and write down the constellations you can identify",
  project_id: project_a.id,
  date: "Tue, 20 Jun 2023",
  status: 0
)

task_c = Task.create!(
  title: "Learn a new skill",
  detail: "Choose a new skill to learn online, like cooking or photography, and document each step of the process",
  project_id: project_b.id,
  date: "Tue, 20 Jun 2023",
  status: 0
)

task_d = Task.create!(
  title: "Nature walk",
  detail: "Take a 5km walk and take pictures of nature along the way",
  project_id: project_c.id,
  date: "Tue, 20 Jun 2023",
  status: 0
)

task_e = Task.create!(
  title: "Picnic in the park",
  detail: "Organize a picnic in a park and invite friends",
  project_id: project_c.id,
  date: "Tue, 20 Jun 2023",
  status: 0
)

task_f = Task.create!(
  title: "Take a dance class",
  detail: "Take a dance class and record a video of the final performance",
  project_id: project_d.id,
  date: "Tue, 20 Jun 2023",
  status: 0
)

task_g = Task.create!(
  title: "Go to an amusement park",
  detail: "Go to an amusement park and try the craziest rides",
  project_id: project_d.id,
  date: "Tue, 20 Jun 2023",
  status: 0
)

task_h = Task.create!(
  title: "Explore a new city",
  detail: "Spend a whole day exploring a new city on foot",
  project_id: project_d.id,
  date: "Tue, 20 Jun 2023",
  status: 0
)

task_j = Task.create!(
  title: "Watch a cult classic movie",
  detail: "Watch a classic 80s or 90s movie and write a review",
  project_id: project_d.id,
  date: "Tue, 20 Jun 2023",
  status: 0
)

#------------------ Member Task -------------#
puts "create member Task ..."

MemberTask.create!(
  task_id: task_a.id,
  team_member_id: team_member_a.id
)

MemberTask.create!(
  task_id: task_b.id,
  team_member_id: team_member_b.id
)

MemberTask.create!(
  task_id: task_c.id,
  team_member_id: team_member_a.id
)

MemberTask.create!(
  task_id: task_d.id,
  team_member_id: team_member_c.id
)

MemberTask.create!(
  task_id: task_e.id,
  team_member_id: team_member_c.id
)

MemberTask.create!(
  task_id: task_f.id,
  team_member_id: team_member_d.id
)

MemberTask.create!(
  task_id: task_g.id,
  team_member_id: team_member_e.id
)

MemberTask.create!(
  task_id: task_h.id,
  team_member_id: team_member_f.id
)

MemberTask.create!(
  task_id: task_j.id,
  team_member_id: team_member_g.id
)
