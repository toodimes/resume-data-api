class Api::V1::StudentsController < ApplicationController

  def index
    @students = Student.all
    render :index
  end

  def show
    @student = Student.find_by(id: params[:id])
    render :show
  end

  def create
    @student = Student.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], phone: params[:phone], bio: params[:bio], link_in: params[:linked_in], twitter: params[:twitter], personal_url: params[:personal_url], resume_url: params[:resume_url], github_url: params[:github_url], avatar: params[:avatar], password: params[:password_digest])
    if @student.save
      render :show
    else
      render json: { errors: @student.errors.full_messages }, status: 422
    end
  end

  def update
    @student = Student.find_by(id: params[:id])
    @student.update(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], phone: params[:phone], bio: params[:bio], link_in: params[:linked_in], twitter: params[:twitter], personal_url: params[:personal_url], resume_url: params[:resume_url], github_url: params[:github_url], avatar: params[:avatar])
    render :show
  end

  def destroy
    @student = Student.find_by(id: params[:id])
    @student.destroy
  end

end
