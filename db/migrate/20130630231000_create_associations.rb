class CreateAssociations < ActiveRecord::Migration
	def change
		create_table :associations do |t|
			t.references :user
			t.references :skill
			t.integer :proficiency, default: 0

			t.timestamps
		end
	end
end