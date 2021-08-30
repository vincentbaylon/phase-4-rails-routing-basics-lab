class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        student_grades = Student.order(grade: :desc)
        render json: student_grades
    end

    def highest_grade
        student_highest_grade = Student.order(grade: :desc).take
        render json: student_highest_grade
    end
end
