class Api::V1::SkillsController < ApplicationController

  def index
    student = Student.find_by(id: params[:student_id])
    @skills = student.skills
    render :index
  end

  def show
    student = Student.find_by(id: params[:student_id])
    @skill = student.skills.find_by(id: params[:id])
    render :show
  end

  def update
    student = Student.find_by(id: params[:student_id])
    @skill = student.skills.find_by(id: params[:id])
    @skill.update(name: params[:name])
    render :show
  end

  def create
    student = Student.find_by(id: params[:student_id])
    @skill = Skill.new(name: params[:name], student_id: student.id)
    if @skill.save
      render :show
    else
      render json: { errors: @skill.errors.full_messages }, status: 422
    end
  end

  def destroy
    student = Student.find_by(id: params[:student_id])
    skill = student.skills.find_by(id: params[:id])
    skill.destroy
    render json: { message: "The Skill has been deleted" }
  end
end
