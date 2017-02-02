module UsersHelper
	def display_users
	@users =  User.all 
    users = $redis.get(@users)
    if users.nil?
      users = User.all.to_json
      $redis.set("users", users)
    end
      @users_display = JSON.load users
	end
end
