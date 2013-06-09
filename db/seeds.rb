# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#User.delete_all
#Role.delete_all
roles=Role.create([{id: "1",name: "admin"},{id: "2",name: "teacher"},{id: "3",name: "student"}])
users=User.create([{id: "1",email: "vijay@gmail.com",password:  "vijayyadav",name: "Vijay Singh",username: "vijay",std: "12",section: "A",mobile: "9412614360",deleted_flag: "f" ,role_ids: [1]},
  {id: "2",email: "deepak@gmail.com",password:  "deepak123",name: "Deepak",username: "deepak",std: "11",section: "A",mobile: "9412614360",deleted_flag: "f",role_ids: [3]},
  {id: "3",email: "vivek@gmail.com",password:  "vivek123",name: "Vivek Kumar",username: "vivek",std: "11",section: "A",mobile: "9412614360",deleted_flag: "f" ,role_ids: [3]},
  {id: "4",email: "abhishek@gmail.com",password:  "abhishek123",name: "Abhishek",username: "abhishek",std: "12",section: "S",mobile: "9412614360",deleted_flag: "f" ,role_ids: [2]}])
