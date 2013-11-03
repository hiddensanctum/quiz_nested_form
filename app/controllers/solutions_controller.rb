class SolutionsController < ApplicationController
  def new
    @question = Question.find(params[:question_id])
    @solution = Solution.new
    binding.pry
  end

  def create
    @solution = Solution.new(solution_params)

    if @solution.save
      binding.pry
      if params[:answer] = 1
        @solution.correct = true
      end
      binding.pry
    end
  end

  private
    def solution_params
      params.require(:solution).permit(:question_id, :correct, :question_attributes => [ :question_id, :content ] )
    end

end
