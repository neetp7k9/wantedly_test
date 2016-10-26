class UsersController < ApplicationController
  def updateSkills
    p params["skills"]
    skill_id_list = params["skills"]
    skill_id_list.each do |skill_id|
      UserSkillRelationship.new({user_id: current_user.id, skill_id: skill_id}).save
    end
    render :json => {}
  end
end
