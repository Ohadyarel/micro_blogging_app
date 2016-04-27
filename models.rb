class User < ActiveRecord::Base
	has_many :posts
	has_many :likes
	has_many :posts, through: :likes
	has_many :follows
	has_many :followers, through: :follows
	has_many :followeds, 
end

#=========================================

class Post < ActiveRecord::Base
	belongs_to :user
	has_many :likes
	has_many :users, through: :likes
end

#=========================================

class Like < ActiveRecord::Base
	belongs_to :post
	belongs_to :user
end

#=========================================

class Follow < ActiveRecord::Base
	#Still need to figure this part out

end


# user.follows.each do |follow|
# 	User.where(id: follow.followed_id)
# end