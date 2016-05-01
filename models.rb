class User < ActiveRecord::Base
	has_many :posts
	has_many :likes
	has_many :posts, through: :likes
	has_many :follows
	has_many :followers, through: :follows
	has_many :followeds, through: :follows

	def followed_by(user)
		self.follows.include?(user)
	end
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
	belongs_to :follower, class_name: "User"
	belongs_to :followed, class_name: "User"
end
