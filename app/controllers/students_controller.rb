class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        sorted_students = Student.order(grade: :desc)
        render json: sorted_students
    end
end
