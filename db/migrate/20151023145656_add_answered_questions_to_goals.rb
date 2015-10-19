class AddAnsweredQuestionsToGoals < ActiveRecord::Migration
  def change
    add_column :goals, :answered_questions, :integer
  end
end