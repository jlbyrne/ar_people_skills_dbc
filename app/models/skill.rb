class Skill < ActiveRecord::Base
	has_many :associations
	has_many :users, :through => :associations

	validates :name, uniqueness: true

	def user_with_proficiency(level)
	  self.associations.where(proficiency: level).first.user
	end
end