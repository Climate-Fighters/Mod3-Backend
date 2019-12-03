class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :question, :answer1, :answer2, :answer3, :answer4, :answer5
  has_one :response
end
