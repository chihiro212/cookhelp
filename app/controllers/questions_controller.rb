class QuestionsController < ApplicationController
  before_action :authenticate_user!
    
  def index
      @questions = Question.all
    end
  
  
    def new
        @question = Question.new # @question のインスタンスを作成
      end
    
      
     def create
         question = Question.new(question_params)
          if question.save!
            redirect_to :action => "index"
          else
            redirect_to :action => "new"
          end
        end
      
      
     def show
         @question = Question.find(params[:id])
       end

       def edit
        @question = Question.find(params[:id])
      end

      def update
        question = Question.find(params[:id])
        if question.update(question_params)
          redirect_to :action => "show", :id => question.id
        else
          redirect_to :action => "new"
        end  
      end

      def destroy
        question = Question.find(params[:id])
        question.destroy
        redirect_to action: :index
      end

        private
        def question_params
          params.require(:question).permit(:title, :content, :image, :answer)
        end
end
