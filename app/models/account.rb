class Account < ActiveRecord::Base

	belongs_to :user
	def self.dashboard(current_user)
		data=Account.select("title,sum(expense) as total").where(user: current_user).group("title")
		data.map{|d|[d.title,d.total]}
	end
end
