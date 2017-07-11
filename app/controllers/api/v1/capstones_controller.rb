class Api::V1::CapstonesController < ApplicationController

  def index
    student = Student.find_by(id: params[:student_id])
    @capstones = student.capstones
    render :index
  end

  def show
    student = Student.find_by(id: params[:student_id])
    @capstone = student.capstones.find_by(id: params[:id])
    render :show
  end

  def create
    student = Student.find_by(id: params[:student_id])
    @capstone = Capstone.new(student_id: student.id, name: params[:name], description: params[:description], url: params[:url], screenshot: params[:screenshot])
    if @capstone.save
      render :show
    else
      render json: { message: "The capstone was not created, please try again." }
    end
  end

  def update
    student = Student.find_by(id: params[:student_id])
    @capstone = student.capstones.find_by(id: params[:id])
    @capstone.update(name: params[:name], description: params[:description], url: params[:url], screenshot: params[:screenshot])
    render :show
  end

  def destroy
    student = Student.find_by(id: params[:student_id])
    capstone = student.capstones.find_by(id: params[:id])
    capstone.destroy
    render json: { message: "The capstone was successfully deleted" }
  end

end
