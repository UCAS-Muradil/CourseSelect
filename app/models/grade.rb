class Grade < ActiveRecord::Base
  belongs_to :course
  belongs_to :user
end

attr_reader :open