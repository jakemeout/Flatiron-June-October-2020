class StudentsController < ApplicationController

    def new 
        @students = Student.new
    end

    def create
        @student = Student.new(sparams)
        @student.save
        redirect_to student_path(@student)
    end

    def show 
        @student = Student.find(params[:id])
    end

    def edit
        @student = Student.find(params[:id]) 
    end

    def update
        @student = Student.find(params[:id])
        @student.update(sparams)
        redirect_to student_path(@student)
    end

    private

    def sparams
        params.require(:student).permit(:first_name, :last_name)
    end
end
