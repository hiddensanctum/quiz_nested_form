json.array!(@answers) do |answer|
  json.extract! answer, :question_id, :content
  json.url answer_url(answer, format: :json)
end
