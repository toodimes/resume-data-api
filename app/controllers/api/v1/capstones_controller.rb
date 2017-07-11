class Api::V1::CapstonesController < ApplicationController

  def index
    student = Student.find_by(id: params[:student_id])
    @capstones = student.capstones
    render :index
  end

  def show

  end

end
