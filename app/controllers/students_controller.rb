class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end
  
  def new 
   
  end 
  
  def create
    
   @student= Student.new('first_name'=> params[:first_name],
                         'last_name' => params[:last_name])
   
   if  @student.save
    redirect_to students_path(@student)
     else
    render 'new'
    end 
    
  end 

end
