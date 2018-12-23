require 'set'

  module CoursesHelper

    def date_transform(date)
      if date.include?"周一"
        retutn '1'
      elsif date.include?"周二" 
        retutn '2'
      elsif date.include?"周三" 
        retutn '3'
      elsif date.include?"周四" 
        retutn '4'
      elsif date.include?"周五" 
        retutn '5'
      elsif date.include?"周六" 
        retutn '6'
      elsif date.include?"周天" 
        retutn '7'
      end
    end

    def get_course_info(courses, type)
      res = Set.new
      courses.each do |course|
        res.add(course[type])
      end
      res.to_a.sort
    end
    
    def check_course_condition(course, key, value) 
      if key == 'course_time'
        if value == '' or date_transform(course[key]) == value
          return true
        end
      elsif value == ' ' or course[key] == value
        return true
      end
      false
    end

    def check_course_keyword(course, key, value)      if value == '' or value == nil or course[key].include?value
        return true 
      end
      false
    end

end
        