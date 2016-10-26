class Skill < ApplicationRecord
  has_many :user_skill_relationships
  has_many :users, :through => :user_skill_relationships
end
