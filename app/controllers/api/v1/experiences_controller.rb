class Api::V1::ExperiencesController < ApplicationController
  def index
    student = Student.find_by(id: params[:student_id])
    @experiences = student.experiences
    render :index
  end

  def show
    student = Student.find_by(id: params[:student_id])
    @experience = student.experiences.find_by(id: params[:id])
    render :show
  end

  def update
    student = Student.find_by(id: params[:student_id])
    @experience = student.experiences.find_by(id: params[:id])
    @experience.update(start_time: params[:start_time], end_time: params[:end_time], job_title: params[:job_title], company: params[:company], details: params[:details])
  end

  def create
    student = Student.find_by(id: params[:student_id])
    @experience = Experience.new(start_time: params[:start_time], end_time: params[:end_time], job_title: params[:job_title], company: params[:company], details: params[:details], student_id: params[:student_id])
    if @experience.save
      render :show
    else
      render json: { errors: @experience.errors.full_messages }, status: 422
    end
  end

  def destroy
    student = Student.find_by(id: params[:student_id])
    experience = student.experiences.find_by(id: params[:id])
    experience.destroy
    render json: { message: "The Experience has been deleted" }
  end
end
