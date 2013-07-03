class User < ActiveRecord::Base
	has_many :associations
	has_many :skills, :through => :associations

	def proficiency_for(skill)
	  self.associations.where(skill_id: skill.id).first.proficiency
	end

	def set_proficiency_for(skill, level)
	  prof = self.associations.where(skill_id: skill.id).first
	  prof.update_attributes(proficiency: level)
	end
end