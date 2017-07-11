class Api::V1::EducationsController < ApplicationController
  def index
    student = Student.find_by(id: params[:student_id])
    @educations = student.educations
    render :index
  end

  def show
    student = Student.find_by(id: params[:student_id])
    @educations = student.educations.find_by(id: params[:id])
    render :show
  end

  def update
    student = Student.find_by(id: params[:student_id])
    @educations = student.educations.find_by(id: params[:id])
    @educations.update(start_time: params[:start_time], end_time: params[:end_time], degree: params[:degree], university: params[:university], details: params[:details])
  end

  def create
    student = Student.find_by(id: params[:student_id])
    @educations.new(start_time: params[:start_time], end_time: params[:end_time], degree: params[:degree], university: params[:university], details: params[:details], student_id: params[:student_id])
    if @educations.save
      render :show
    else
      render json: { errors: @educations.errors.full_messages }, status: 422
    end
  end

  def destroy
    student = Student.find_by(id: params[:student_id])
    education = student.educations.find_by(id: params[:id])
    education.destroy
    render json: { message: "The Education has been deleted" }
  end
end
