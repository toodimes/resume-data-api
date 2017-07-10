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
  end

  def create
    student = Student.find_by(id: params[:student_id])
    @skill.new()
  end

  def destroy
    student = Student.find_by(id: params[:student_id])

  end
end
