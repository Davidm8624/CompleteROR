db = [
{username: "name1", password: "password1"},
{username: "name2", password: "password2"},
{username: "name3", password: "password3"},
{username: "name4", password: "password4"},
]

def auth_user(username, password, user_list)
		user_list.each do |user|
		if user[:username] == username && user[:password] == password
			return user
			break
			
		end
	end
	return "that is not the correct combination"
end


puts "please sign in"
25.times {print "-"}
puts "this program will take input from the user and compare passwords"
puts "if correct you will be returned with user object"

attempts = 1;

while attempts < 4
	print "Username: "
	username = gets.chomp
	print "Password: "
	password = gets.chomp
	auth_response = auth_user(username, password, db)
	puts auth_response
	puts "Press N to quit or any other key to contiune"
	input = gets.chomp.downcase
	if input == "n"
		break
	end
	attempts += 1
end


if attempts = 4
	puts "attempts have reached max, please try again later"
end
