class PagesController < ApplicationController

  def contact
  end

  def about
  end

  def home
    @students = ["Matheus", 'André', 'Ale', 'Monique']

    user_input_name = params[:student_name]
    user_input_length = params[:student_length].to_i

    if user_input_length
      @students = @students.select { |student| student.length > user_input_length }
    end

    if user_input_name
      @students = @students.select { |student| student.start_with?(user_input_name) }
    end

  end

end
