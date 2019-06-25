# code here!
require 'pry'

class School

    def initialize(name)
        @name = name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(name, grade)
        if roster.has_key?(grade)
            @roster[grade] << name
        else
            @roster[grade] = []
            @roster[grade] << name

        end
    end

    def grade(grade)
        selected_students = @roster.select do |roster_grade|
            roster_grade == grade
        end
        selected_students[grade]
    end

    def sort
        @roster.each do |grade, students_in_grade|
            students_in_grade.sort!
        end
    end

end
