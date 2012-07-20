class User < ActiveRecord::Base
  #attr_accessible :username, :email
	validates :email,:presence=>true;
	validates :first_name,:last_name,:presence=>true
	validates :username, :presence => true,:length => {:maximum =>10}
	 	before_create :check_fullname,:check_username

	protected
	def check_fullname
		if full_name.blank?
			self.full_name=self.first_name+" "+self.last_name
		end
	end
	def check_username
		self.username=email if self.username.blank?
	end
has_many:posts

end
