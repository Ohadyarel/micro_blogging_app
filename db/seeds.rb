User.delete_all
Post.delete_all

users = User.create([
	{fname:"John",lname:"Snow",username:"Jsnowhite1",password:"12345"},
	{fname:"Roger",lname:"Rabbit",username:"the_rabbit",password:"12345"},
	{fname:"Bobert",lname:"Boberson",username:"Bbobs",password:"12345"},
	{fname:"Jane",lname:"Smith",username:"janeee11",password:"12345"},
	{fname:"Maya",lname:"Meyer",username:"doubleM",password:"12345"},
])

Post.create ([
	{user_id: users.sample.id, body:"LALALALALALA Hi!"}
])